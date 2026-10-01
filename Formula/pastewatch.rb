# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.37.2"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.37.2/pastewatch-cli"
    sha256 "9d793c740af5489cde471d9d01a265a6b44c9cf712d161981b514511dcb48658"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.37.2/pastewatch-cli-linux-amd64"
      sha256 "cac4f122e0a7e958c0a9b305ab971a96fac9ccee7cf8f53c7d3219f4d3f3c75b"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.37.2/pastewatch-cli-linux-arm64"
      sha256 "30d716b5357ce8191255ee936553a966fc78387798fddf5d271828e8657860d4"
    end
  end

  def install
    downloaded = Dir["pastewatch-cli*"].first || "pastewatch-cli"
    mv downloaded, "pastewatch-cli" if downloaded != "pastewatch-cli"
    bin.install "pastewatch-cli"
  end

  test do
    assert_match "pastewatch-cli", shell_output("#{bin}/pastewatch-cli version")
  end
end
