class Browsr < Formula
  desc "AI-powered design generation that outputs real HTML/CSS/JS"
  homepage "https://github.com/i-luv-pho/browsr"
  url "https://github.com/i-luv-pho/browsr/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "99d0b66bfe87583616804984dedad2a0fbf34afbd278446b27fb73f877c200f8"
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
