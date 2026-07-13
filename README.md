# homebrew-bitchat

Unofficial Homebrew tap for [bitchat](https://github.com/permissionlesstech/bitchat) — a decentralized Bluetooth mesh chat app.

Builds are compiled automatically from upstream releases and published here.

> **Note:** This is an unsigned build. macOS may warn about it on first launch — the postflight script removes the quarantine flag automatically.

## Install

```bash
brew tap NetherQuartz/bitchat
brew install --cask bitchat
```

## Update

```bash
brew update
brew upgrade bitchat
```

## Uninstall

```bash
brew uninstall --cask bitchat
brew untap NetherQuartz/bitchat
```

## Requirements

- macOS on Apple Silicon (M1 or later)
- [Homebrew](https://brew.sh)

## How it works

A GitHub Actions workflow checks the upstream repository for new tags every day.
When a new release is detected, it automatically:
1. Builds the macOS app from source
2. Creates a new GitHub Release with the binary
3. Updates this tap's cask formula

## Links

- [bitchat upstream](https://github.com/permissionlesstech/bitchat)
- [Releases](https://github.com/NetherQuartz/homebrew-bitchat/releases)
