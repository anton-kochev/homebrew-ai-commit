class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.4.5/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "84baf5a7b00517263b8115d8c5784d2564a559f5a206fb7c219c00c4808e141b"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.4.5/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "ea60c1409ca0985308123b83985cf2d6d3738d062867b799bd881c4d37f90346"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.4.5/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b59d0250a5ee1442d67e7f8889f2f01c8b40daa0c60548bda24f46f7717356a1"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
