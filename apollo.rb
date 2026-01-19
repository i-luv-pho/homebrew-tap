class Apollo < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/i-luv-pho/apollov2"
  version "1.0.6"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.6/apollo-darwin-arm64.tar.gz"
      sha256 "SKIP"
    end
    if Hardware::CPU.intel?
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.6/apollo-darwin-x64.tar.gz"
      sha256 "SKIP"
    end
  end

  on_linux do
    url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.6/apollo-linux-x64.tar.gz"
    sha256 "SKIP"
  end

  def install
    bin.install "apollo"
  end
end
