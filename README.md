# homebrew-stretchly

Homebrew [Tap](https://docs.brew.sh/Taps) for [Stretchly](https://hovancik.net/stretchly/) — the break time reminder app.

## Requirements

- macOS Monterey (12) or later

## Install

```sh
brew install --cask --no-quarantine hovancik/stretchly/stretchly
```

> **Security note:** The command above uses `--no-quarantine`, which reduces
> macOS Gatekeeper protections. Only use this flag if you understand and accept
> the security tradeoff.

Or, if you prefer to tap first:

```sh
brew tap hovancik/stretchly
brew install --cask stretchly
```

> **Note:** Stretchly is not signed with an Apple Developer certificate. macOS
> Gatekeeper may prevent it from opening. To allow it, run:
>
> ```sh
> xattr -cr "$(brew --caskroom)/stretchly/$(brew list --cask --versions stretchly | awk '{print $2}')/Stretchly.app"
> ```
>
> or right-click the app and choose **Open**.

## Update

```sh
brew upgrade --cask stretchly
```

## Uninstall

```sh
brew uninstall --cask stretchly
brew untap hovancik/stretchly
```