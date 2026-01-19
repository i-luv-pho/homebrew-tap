class Apollo < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/i-luv-pho/apollov2"
  version "1.0.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.2/apollo-darwin-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.2/apollo-darwin-x64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.2/apollo-linux-x64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "apollo"
  end
end
