#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
ENV_FILE="$ROOT_DIR/.env"
if [[ -f "$ENV_FILE" ]]; then
  set -a
  source "$ENV_FILE"
  set +a
fi

BREVO_API_KEY=${BREVO_API_KEY:-}
OPENAI_API_KEY=${OPENAI_API_KEY:-}
STRIPE_SECRET_KEY=${STRIPE_SECRET_KEY:-}

if [[ -z "$BREVO_API_KEY" || -z "$OPENAI_API_KEY" ]]; then
  echo "Missing env vars. Set BREVO_API_KEY and OPENAI_API_KEY. STRIPE_SECRET_KEY is optional." >&2
  exit 1
fi

MODE=${1:-run}
TARGET=${2:-android}
DEVICE_ID=${3:-}

DART_DEFINES=(
  "--dart-define=BREVO_API_KEY=${BREVO_API_KEY}"
  "--dart-define=OPENAI_API_KEY=${OPENAI_API_KEY}"
)

if [[ -n "$STRIPE_SECRET_KEY" ]]; then
  DART_DEFINES+=("--dart-define=STRIPE_SECRET_KEY=${STRIPE_SECRET_KEY}")
fi

case "$MODE" in
  run)
    if [[ "$TARGET" == "ios" ]]; then
      if [[ -n "$DEVICE_ID" ]]; then
        (cd "$ROOT_DIR" && flutter run -d "$DEVICE_ID" "${DART_DEFINES[@]}")
      else
        (cd "$ROOT_DIR" && flutter run -d ios "${DART_DEFINES[@]}")
      fi
    else
      (cd "$ROOT_DIR" && flutter run "${DART_DEFINES[@]}")
    fi
    ;;
  build)
    if [[ "$TARGET" == "android" ]]; then
      flutter build apk "${DART_DEFINES[@]}"
    elif [[ "$TARGET" == "ios" ]]; then
      flutter build ios "${DART_DEFINES[@]}"
    else
      echo "Unknown target: $TARGET. Use android or ios." >&2
      exit 1
    fi
    ;;
  *)
    echo "Unknown mode: $MODE. Use run or build." >&2
    exit 1
    ;;
esac
