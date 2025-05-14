class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.2.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.2.16/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "bd09a8f3e14e483a0be4e2177e6645f16cbfc1b6d1acef66e76ba6b09a78a5f1"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.2.16/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "ca2533e80480b3e168573b537cfcc75bcc7a8981be1abe10e06ac0ca1a321e9a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.2.16/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3290ff2faeb5beb01182a01a84f4d9a6e586a475c709e7b2d6e029e0187db118"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
