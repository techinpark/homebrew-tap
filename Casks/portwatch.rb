cask "portwatch" do
  version "1.0.0"
  sha256 "eabb12f4056f8ae3c0279009c383230592e6c5a7c69142296c818cad6dac17a8"

  url "https://github.com/techinpark/PortWatch/releases/download/v#{version}/PortWatch-v#{version}.zip"
  name "PortWatch"
  desc "macOS menu bar app to monitor active local service ports"
  homepage "https://github.com/techinpark/PortWatch"

  app "PortWatch.app"

  zap trash: [
    "~/Library/Preferences/com.tmsae.portwatch.plist",
  ]
end
