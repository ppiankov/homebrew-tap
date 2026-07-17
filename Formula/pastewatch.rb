# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.31.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.0/pastewatch-cli"
    sha256 "97236a81c3615011a68eb1c8223e4b692f78fad2719c64e30ee0eb6706f49de4"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.0/pastewatch-cli-linux-amd64"
      sha256 "577685ed2dbd061aef8e0a76f63c3c2c9bb7686a2a1a89bb1058f6457db9cdcd"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.0/pastewatch-cli-linux-arm64"
      sha256 "bdee9d9c73e600abb821e14f0853995bbc4c3bd3d6f45fd9116d2b66a838840f"
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
