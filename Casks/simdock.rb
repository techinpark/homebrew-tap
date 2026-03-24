cask "simdock" do
  version "1.2.0"
  sha256 "0ed0a86600aa479efc322b1385ee40bffbdc3b1fd272eda973676ee2e318d770"

  url "https://github.com/techinpark/SimDock/releases/download/v#{version}/SimDock.dmg"
  name "SimDock"
  desc "macOS menu bar app to quickly launch and manage iOS simulators"
  homepage "https://github.com/techinpark/SimDock"

  app "SimDock.app"

  zap trash: [
    "~/Library/Preferences/com.tmsae.SimDock.plist",
  ]
end
