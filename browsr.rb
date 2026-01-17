class Browsr < Formula
  desc "FREE AI Design Generator - Hacker Green Theme"
  homepage "https://github.com/i-luv-pho/browsr"
  url "https://github.com/i-luv-pho/browsr/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "7fa4d9e1c2303962ba8548122d59bc4dbf4b8ba6432f02e3cdc4f3ca832ffe5e"
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
