cask "stretchly" do
  arch arm: "-arm64"

  version "1.22.0"
  sha256 arm:   "2bc2107001af9f1bcad2b5dcef3a197428aad8b085d2ef9dc685df17800dd291",
         intel: "387cca7a0c1e422c5c5c5325864a73e6cb6e0fb6517fdbaa826921c59766d681"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/Stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Stretchly.app"

  uninstall quit: "net.hovancik.stretchly"

  zap trash: [
    "~/Library/Application Support/Stretchly",
    "~/Library/Logs/Stretchly",
    "~/Library/Preferences/net.hovancik.stretchly.plist",
  ]

  caveats <<~EOS
    Stretchly is not signed with an Apple Developer certificate.
    macOS Gatekeeper may block it from opening. To allow it, run:
      xattr -dr com.apple.quarantine /Applications/Stretchly.app
    or right-click the app and choose "Open".
  EOS
end
