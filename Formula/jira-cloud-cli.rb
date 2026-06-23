class JiraCloudCli < Formula
  desc "Jira CLI for Jira Cloud REST API v3"
  homepage "https://github.com/techinpark/jira-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/techinpark/jira-cli/releases/download/v0.3.0/jira-cli_0.3.0_darwin_amd64.tar.gz"
      sha256 "84e7dfe25bc5aad9471cefaf77a5365b02bceab4924b8a0aef3bf3296408aa10"
    end
    if Hardware::CPU.arm?
      url "https://github.com/techinpark/jira-cli/releases/download/v0.3.0/jira-cli_0.3.0_darwin_arm64.tar.gz"
      sha256 "892de02d63bfdc5242b041e6a5f4fdf6310ac073741d146bd91e58a68db13734"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/techinpark/jira-cli/releases/download/v0.3.0/jira-cli_0.3.0_linux_amd64.tar.gz"
      sha256 "29abc091de55f7842043ccb258fd265ecf8b8e0a28c2bb722e19e935e50b5b70"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/techinpark/jira-cli/releases/download/v0.3.0/jira-cli_0.3.0_linux_arm64.tar.gz"
      sha256 "574effe6c1a7915bfc3675c01616e07b02e66a282d61154958164097e1a073c7"
    end
  end

  def install
    bin.install "jira" => "jira-cloud-cli"
  end

  test do
    assert_match "Jira CLI for Jira Cloud REST API v3", shell_output("#{bin}/jira-cloud-cli --help")
  end
end
