# homebrew-context-grabber

Homebrew tap for [Context Grabber](https://github.com/anthonylu23/context_grabber) — a local-first macOS menu bar app that captures active browser tabs and desktop apps into structured markdown for LLM workflows.

## Install

```bash
brew tap anthonylu23/context-grabber
brew install --cask context-grabber
```

## What Gets Installed

- **ContextGrabber.app** → `/Applications/ContextGrabber.app` (menu bar agent)
- **cgrab CLI** → `/usr/local/bin/cgrab` (command-line interface)

## Uninstall

```bash
brew uninstall --cask context-grabber
```

To also remove user data:

```bash
brew zap context-grabber
```

## Requirements

- macOS 14 (Sonoma) or later
- Apple Silicon (arm64)

## Notes

This is currently an unsigned package. macOS may show a Gatekeeper warning on first launch — grant permission in System Settings > Privacy & Security.
