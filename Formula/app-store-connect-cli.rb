class AppStoreConnectCli < Formula
  desc "Open source Go CLI for the Apple App Store Connect API"
  homepage "https://github.com/techinpark/app-store-connect-cli"
  url "https://github.com/techinpark/app-store-connect-cli/releases/download/v0.1.0/app-store-connect-cli_0.1.0_source.tar.gz"
  sha256 "049ac9eee66c71254530a05a8849e1b4fbb3733b062e46b051043f2f908e5da7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./main.go"
  end

  test do
    assert_match "App Store Connect CLI for app developers", shell_output("#{bin}/asc --help")
  end
end
