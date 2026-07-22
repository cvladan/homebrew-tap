cask "moneyguru" do
  version "2.12.0"
  sha256 "39fb17f772f3903b8d0bd48c7d2332f1bcfcc5ac44c602d7d117ecc8ae93fcf2"

  url "https://github.com/cvladan/moneyguru/releases/download/v#{version}/moneyGuru-#{version}-arm64.zip"
  name "moneyGuru"
  desc "Personal finance management application"
  homepage "https://github.com/cvladan/moneyguru"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "moneyGuru.app"

  zap trash: [
    "~/Library/Application Support/Hardcoded Software/moneyGuru",
    "~/Library/Caches/Hardcoded Software/moneyGuru",
    "~/Library/Preferences/com.hardcoded-software.moneyGuru.plist",
  ]

  caveats <<~EOS
    This release has an ad hoc code signature. If Gatekeeper blocks the first
    launch, right click moneyGuru.app, choose Open, and confirm the prompt.
  EOS
end
