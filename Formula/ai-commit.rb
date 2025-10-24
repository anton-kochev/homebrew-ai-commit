class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.5.1/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "fb2c1b322e016a69682cc778cdafabb1b2957fe25e6a3501840072ce1c898584"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.5.1/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "bedeb2fcaa445854fbc1337da266e922af59847cad776c1bc28bd1f3f10d1f74"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.5.1/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d5813f9924d77815f875b3903e965962e6b0a0b027dff548699f3048ff2d60cb"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
