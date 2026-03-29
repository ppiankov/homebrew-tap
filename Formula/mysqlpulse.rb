class Mysqlpulse < Formula
  desc "MySQL observability CLI for humans and agents"
  homepage "https://github.com/ppiankov/mysqlpulse"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/mysqlpulse/releases/download/v0.1.1/mysqlpulse-darwin-arm64"
      sha256 "3b2f5f95c1bb5d8204bfe8257bbd7f5e48e53e4b2166ad4e75c6a482fb32fe00"
    else
      url "https://github.com/ppiankov/mysqlpulse/releases/download/v0.1.1/mysqlpulse-darwin-amd64"
      sha256 "30b2b8e217726df4757857b04d2e39fac76d176412ba8dfc00337fad99d86e36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/mysqlpulse/releases/download/v0.1.1/mysqlpulse-linux-arm64"
      sha256 "a534918f9005d90bdc57eae06c8efb1e0a203b196820d58c7f3e9d27b46a394b"
    else
      url "https://github.com/ppiankov/mysqlpulse/releases/download/v0.1.1/mysqlpulse-linux-amd64"
      sha256 "d4de473506ceab3b7abd977bd60f88500415434a8910db9ae46a4fe9e94477e3"
    end
  end

  def install
    bin.install Dir["mysqlpulse*"].first => "mysqlpulse"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mysqlpulse version")
  end
end
