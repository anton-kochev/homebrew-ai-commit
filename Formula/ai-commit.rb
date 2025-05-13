# Formula/ai-commit.rb
class AiCommit < Formula
    desc "AI-assisted commit message generator"
    homepage "https://github.com/anton-kochev/ai-commit"
    license "MIT"

    url "https://github.com/anton-kochev/ai-commit/releases/download/v0.2.0/ai-commit-macos-universal.tar.gz"
    sha256 "0"    # will be replaced automatically
    version "0.1.0"

    def install
      bin.install "ai-commit"
    end

    test do
      system "#{bin}/ai-commit", "--help"
    end
  end
