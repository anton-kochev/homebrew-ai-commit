class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.3.0/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "c69d7aeda97de3196ad786c88faf7a6309c4b846d5a7746048d9142d970914f0"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.3.0/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "3ee2498e9b2fc1c025db57f151e605ecd69ac0d96a21d0086df6ce2ca7a3de3c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.3.0/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f00645abaf07e862f89f92f563573718d8593eb3b2df7b7246c3d109532d48d"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
