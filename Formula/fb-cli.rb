class FbCli < Formula
  desc "Firebase Admin CLI tool — manage projects, users, and services from the terminal"
  homepage "https://github.com/techinpark/fb-cli"
  url "https://github.com/techinpark/fb-cli.git", branch: "main", using: :git
  version "0.1.0"
  license "MIT"
  head "https://github.com/techinpark/fb-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    output = shell_output("#{bin}/fb-cli --version")
    assert_match "fb-cli", output
  end
end
