cask "browserpick" do
  version "0.0.2"
  sha256 "4dfdefecbbff365035d9fab0199ba61f0b3aba103f461ef7711cd9101eb68e5a"

  url "https://github.com/cvladan/browser-pick/releases/download/v#{version}/BrowserPick.zip"
  name "BrowserPick"
  desc "Pick which browser opens a link"
  homepage "https://github.com/cvladan/browser-pick"

  app "BrowserPick.app"

  zap trash: [
    "~/Library/Preferences/com.cvladan.BrowserPick.plist",
    "~/Library/Application Support/BrowserPick",
  ]
end
