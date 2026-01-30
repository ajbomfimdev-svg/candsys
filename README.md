# CandSys

A new Flutter project.

## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

## Build mobile locally

This project reads API keys from Dart defines:

- `BREVO_API_KEY`
- `OPENAI_API_KEY`
- `STRIPE_SECRET_KEY` (optional)

Use the helper script (it autoloads `.env` if present):

```zsh
cp .env.example .env
export BREVO_API_KEY="..."
export OPENAI_API_KEY="..."
export STRIPE_SECRET_KEY="..."

./scripts/build_mobile.sh run
./scripts/build_mobile.sh build android
./scripts/build_mobile.sh build ios
```
