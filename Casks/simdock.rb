cask "simdock" do
  version "1.0.0"
  sha256 "e4d6943f39ea1a22b09abf656c3c15665e3cbafb3059a27a0253dca4defdc793"

  url "https://github.com/techinpark/SimDock/releases/download/v#{version}/SimDock.dmg"
  name "SimDock"
  desc "macOS menu bar app to quickly launch and manage iOS simulators"
  homepage "https://github.com/techinpark/SimDock"

  app "SimDock.app"

  zap trash: [
    "~/Library/Preferences/kr.fernando.SimDock.plist",
  ]
end
