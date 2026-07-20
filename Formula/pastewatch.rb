# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.33.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.1/pastewatch-cli"
    sha256 "b8d9987d4eb1f58b84250b03eca5d4ec0aa583d7338d8c15fb692ebbfd2599a7"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.1/pastewatch-cli-linux-amd64"
      sha256 "45bfbe41567464f515a888111f1f30d2406158cffa226395d6d876e3ca71ed40"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.1/pastewatch-cli-linux-arm64"
      sha256 "eac0649206d64fcc40339aedc6d829ccc468ae947cbe337d3bfbdfd3e7525e6c"
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
