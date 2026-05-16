# homebrew-stretchly

Homebrew [Tap](https://docs.brew.sh/Taps) for [Stretchly](https://hovancik.net/stretchly/) — the break time reminder app.

## Requirements

- macOS Monterey (12) or later

## Install

```sh
brew install --cask hovancik/stretchly/stretchly
```

> [!WARNING]
> A `stretchly` cask also exists in the default `homebrew/cask` tap. It is
> deprecated and [scheduled to be disabled on September 1, 2026](https://github.com/Homebrew/homebrew-cask/blob/main/Casks/s/stretchly.rb)
> because the app is unsigned and fails Homebrew's Gatekeeper check.
>
> Until then, the bare name `stretchly` is ambiguous between the two taps.
> Use the fully qualified `hovancik/stretchly/stretchly` to be sure you get this tap's version.

> **Note:** Stretchly is not signed with an Apple Developer certificate. macOS
> Gatekeeper may prevent it from opening. To allow it, run:
>
> ```sh
> xattr -dr com.apple.quarantine /Applications/Stretchly.app
> ```
>
> or right-click the app and choose **Open**.

## Update

```sh
brew upgrade --cask hovancik/stretchly/stretchly
```

## Uninstall

```sh
brew uninstall --cask hovancik/stretchly/stretchly
brew untap hovancik/stretchly
```
