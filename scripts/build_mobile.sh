#!/usr/bin/env bash
set -euo pipefail

BREVO_API_KEY=${BREVO_API_KEY:-}
OPENAI_API_KEY=${OPENAI_API_KEY:-}
STRIPE_SECRET_KEY=${STRIPE_SECRET_KEY:-}

if [[ -z "$BREVO_API_KEY" || -z "$OPENAI_API_KEY" || -z "$STRIPE_SECRET_KEY" ]]; then
  echo "Missing env vars. Set BREVO_API_KEY, OPENAI_API_KEY, STRIPE_SECRET_KEY." >&2
  exit 1
fi

MODE=${1:-run}
TARGET=${2:-android}

DART_DEFINES=(
  "--dart-define=BREVO_API_KEY=${BREVO_API_KEY}"
  "--dart-define=OPENAI_API_KEY=${OPENAI_API_KEY}"
  "--dart-define=STRIPE_SECRET_KEY=${STRIPE_SECRET_KEY}"
)

case "$MODE" in
  run)
    flutter run "${DART_DEFINES[@]}"
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
