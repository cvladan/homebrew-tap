cask "browserpick" do
  version "0.0.4"
  sha256 "15858800c5f0c679e813538bb75ff96af935a440c46dba175ad875d01c038751"

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
