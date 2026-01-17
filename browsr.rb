class Browsr < Formula
  desc "FREE AI Design Generator - Hacker Green Theme"
  homepage "https://github.com/i-luv-pho/browsr"
  url "https://github.com/i-luv-pho/browsr/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "fbf172f126ff9a9595a8d49add2bbc072ba981a0356bc1cb04515fa23b7e57e9"
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
