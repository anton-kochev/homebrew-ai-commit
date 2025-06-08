class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.3.2/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "eccf7014ad534d426f406cf34eaaa1a52c7069d0183e1a28697e94f79b265dc6"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.3.2/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "aba40ae54ec8e1150a16081f763906a258758a66c430fa367bc05b2c06edc7ed"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.3.2/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af9a0cc0070cbc0dca4a777156f757b43e357f0b5df40afb9016a3a5eb20e00f"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
