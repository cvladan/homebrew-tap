cask "browserpick" do
  version "0.0.5"
  sha256 "063791d6a2e194e5856333476aee3e665e81753a39796ab01fb230170b9a40ed"

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
