class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/vnull/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "5d360f657eac451eec36ca0a7ee13b1a8da33e47b3f7327eac981ff80001f282"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/vnull/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "3dcb7ac187168cfc048932171062dccdd40654cd3f673f662ef0c5ab6efbf3d0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/vnull/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e8c4eb1d4806d86c48d1629e36c61626b60f4276afae99e0df4b12598b8d4f9"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
