class NotionCloudCli < Formula
  desc "Open source Notion CLI for the Notion API"
  homepage "https://github.com/techinpark/notion-cli"
  url "https://github.com/techinpark/notion-cli/releases/download/v0.1.0/notion-cli_0.1.0_source.tar.gz"
  sha256 "236e169239b8e78fee2ed1857b83115ebc04140c865234440114342b0b58042e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags=-s -w", "-o", "notion-cloud-cli", "./main.go"
    bin.install "notion-cloud-cli"
  end

  test do
    assert_match "Notion CLI for the Notion API", shell_output("#{bin}/notion-cloud-cli --help")
  end
end
