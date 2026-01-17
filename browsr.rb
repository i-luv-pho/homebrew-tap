class Browsr < Formula
  desc "AI Design Studio - Create stunning HTML/CSS designs with natural language"
  homepage "https://github.com/i-luv-pho/browsr"
  url "https://github.com/i-luv-pho/browsr/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "69e4d214d929cc018cde79bf94eb626b51ad2b450042a97b259b1f7dd461ee3b"
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
