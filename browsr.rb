class Browsr < Formula
  desc "AI Design Studio - Create stunning HTML/CSS designs with natural language"
  homepage "https://github.com/i-luv-pho/browsr"
  url "https://github.com/i-luv-pho/browsr/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "cb6dfbacfa5fa97f2646a254fb3efc0b32a74c84671abfe9518fdf1a8504fa31"
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
