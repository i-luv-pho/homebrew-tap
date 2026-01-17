class Browsr < Formula
  desc "FREE AI Design Generator - Hacker Green Theme"
  homepage "https://github.com/i-luv-pho/browsr"
  url "https://github.com/i-luv-pho/browsr/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "05c2532f4274f8b77b8445e95cb1d689f965ae123c606e814a08397ba1eae695"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "browsr", shell_output("#{bin}/browsr --help")
  end
end
