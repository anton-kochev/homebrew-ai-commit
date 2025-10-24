class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.5.2/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "a1cf03cba2cdb7f13f4924384e6696fc1597ff29afaca537e56cbfca81d86818"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.5.2/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "540230e81ad427d01f61d8666209c5af5ff6ae9dc7ae53dc050b6dd9fd56a44b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.5.2/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcbdce55eaa6f52ed3814c4b75b9698f2aff6c067f8aeca35fc89ebd36dd6059"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
