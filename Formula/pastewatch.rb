# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.42.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.42.0/pastewatch-cli"
    sha256 "9d47bbcaf064e772e9cbe46f011c4f2edf67bdafa5620749516c1c8bc074e2bf"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.42.0/pastewatch-cli-linux-amd64"
      sha256 "ad896c9f99ed49fb2c8f3c6e02477bf240ad70949c338d33cad6bc2be526a015"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.42.0/pastewatch-cli-linux-arm64"
      sha256 "6fcc8f7d3d4802850212573163a5d59da7fd9a1171faa51cf71efcf02612e0db"
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
