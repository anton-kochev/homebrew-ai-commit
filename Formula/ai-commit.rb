class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.4.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.4.7/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "f31b3525a5d0e09a5722fcae359ecf92c616dbd55159500d095e1dc0b446c49a"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.4.7/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "d37db50bf140b61de176cc7ce265649d08e22f09fb9c0df77b390aa9ed0cdf5a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.4.7/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea78b4a60e63fa0119b24e8410e29acac591f123593c4e221759aac8bc491be0"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
