# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.38.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.38.1/pastewatch-cli"
    sha256 "92c3a8afb9dd6b3dbafcbcdb1cab59344f05f9110f129ff06aea8a24811a6fd9"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.38.1/pastewatch-cli-linux-amd64"
      sha256 "363f67721e633bd9b583f61a6325de81f0f106daec8d0f2d02f3c196753bc9e5"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.38.1/pastewatch-cli-linux-arm64"
      sha256 "61fb67b3608ccb2db5eae19484f36ee90e1d5dc82114611b8202619b3d3beb70"
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
