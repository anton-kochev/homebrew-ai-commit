class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.3.1/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "28cfb71cbd3489c4bd153d7ddd2b35a786d2c2e0f2a6a6392e2271f99fe5bd5f"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.3.1/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "738e8e0d9aab26dc7f7e98d9b5d2437ec7afc1ad051a6e6f0be9c4f72c3c9b4e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.3.1/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45ce4fd80558c951e84cd27af6204711a662d48d289e4ccc657f2af20fd76163"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
