class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.5.0/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "d23efc7b17225396f82f54b5faa262bc623f385083c1a119955be4fb6aba3711"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.5.0/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "6e86f9625c665d8e97ba796f4d6e3c551642d7cdf65be45a1ac4f7fa107cb74b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.5.0/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05b8f585d9314bb6f957967c0ba42be5799fe2439ab33c2aeeefbc622de672d3"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
