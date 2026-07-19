# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.33.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.0/pastewatch-cli"
    sha256 "e042911be85c3f3116e510c0978ff3de55af2000492f266274611baafb3751fc"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.0/pastewatch-cli-linux-amd64"
      sha256 "91e5da57da5430fe2c0e1a15466fae99e156f90256a6a0b28312a37a7e2cba42"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.0/pastewatch-cli-linux-arm64"
      sha256 "caad7cda96aa7ecef4ae94ef0ce8007a1210f20efc267a134cc26abe3cb516a4"
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
