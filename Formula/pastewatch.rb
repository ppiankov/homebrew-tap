# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.29.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.29.0/pastewatch-cli"
    sha256 "2bc712f275bd0e94ec6adb8318542abf621f0744487ddebc69bda5e095574b39"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.29.0/pastewatch-cli-linux-amd64"
      sha256 "b5b2245de3779702e74191b7607e47a7565167cc5bdba98a3f1b4e17daaa888d"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.29.0/pastewatch-cli-linux-arm64"
      sha256 "a186573979fb3ecec14238ea080fc2db228a9c9b842d4b1865cd357e27dcc8c4"
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
