class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.4.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.4.6/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "30d18c5d121b98d8ac1d16e174cd55385ea8761d72ec6cd32bd4a5281910a314"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.4.6/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "3bea4a9e13bf5fda2b65b2d1946546e4c8b5ca3fee0111d55442bacd18923349"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.4.6/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7bda844ee5cf39f5b2c3073974e6cae3f6a13515f68688f2e9f47a50b1f85caa"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
