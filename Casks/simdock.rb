cask "simdock" do
  version "1.1.0"
  sha256 "37618b69c39332a9f8901efc570562ed9aac614b490e6306c263647d2eff9a78"

  url "https://github.com/techinpark/SimDock/releases/download/v#{version}/SimDock.dmg"
  name "SimDock"
  desc "macOS menu bar app to quickly launch and manage iOS simulators"
  homepage "https://github.com/techinpark/SimDock"

  app "SimDock.app"

  zap trash: [
    "~/Library/Preferences/kr.fernando.SimDock.plist",
  ]
end
