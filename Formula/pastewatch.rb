# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.38.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.38.0/pastewatch-cli"
    sha256 "1412ad4cf31558807113dc8f99dd2e2d8d3a6c203ea8b277500a17ed451b6263"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.38.0/pastewatch-cli-linux-amd64"
      sha256 "9cc8981b6dbe17ac81c15b2702e24ac82517c672cbc31ddf1f7a8a3eaea301b9"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.38.0/pastewatch-cli-linux-arm64"
      sha256 "1922d77d23ece47ed90c7623d16d4d4306536e27fa97b5e2cdbb66593f1836bb"
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
