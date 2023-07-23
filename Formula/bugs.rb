class Bugs < Formula
  desc "Opinionated tool for doing project management in Jira at Command Line"
  version "0.5.0"
  homepage "https://github.com/reddit/bugs"
  url "https://github.com/reddit/bugs.git", :tag => "v0.5.0"
  sha256 "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"

  depends_on "ankitpokhrel/jira-cli/jira-cli"
  depends_on "jq"

  def install
    mv "bugs.sh", "bugs" # Rename the script during installation
    bin.install "bugs"
  end

  test do
    output = shell_output("#{bin}/bugs bunny")
    assert_match "Neeaah, Whats up Doc", output
  end
end
