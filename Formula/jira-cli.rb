class JiraCli < Formula
  desc "Open source Jira CLI for Jira Cloud REST API v3"
  homepage "https://github.com/techinpark/jira-cli"
  url "https://github.com/techinpark/jira-cli/releases/download/v0.1.0/jira-cli_0.1.0_source.tar.gz"
  sha256 "689464dfd50addc4a8be25c964df687de041532d6c4fe05bab088d2950ffef48"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./main.go"
  end

  test do
    assert_match "Jira CLI for Jira Cloud REST API v3", shell_output("#{bin}/jira --help")
  end
end
