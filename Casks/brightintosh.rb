cask "brightintosh" do
  version "6.0.3"
  sha256 "3eace560e90f0037d1e6a484087c74d5d707a05d0bc550c38b82ca6297dbec98"

  url "https://github.com/cvladan/brightintosh/releases/download/v#{version}/BrightIntosh.zip"
  name "BrightIntosh"
  desc "Extend the brightness range of supported XDR displays"
  homepage "https://github.com/cvladan/brightintosh"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "BrightIntosh.app"

  zap trash: [
    "~/Library/Containers/de.brightintosh.app",
    "~/Library/Group Containers/group.de.brightintosh.app",
    "~/Library/Preferences/de.brightintosh.app.plist",
  ]
end
