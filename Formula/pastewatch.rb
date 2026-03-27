# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.25.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.1/pastewatch-cli"
    sha256 "d2ef5a3a5225320131c4f4b903a09459c6adcecaa4ae785cc1416e4e3cbad969"
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.1/pastewatch-cli-linux-arm64"
      sha256 "b592966fee15c8dd6ef6f5a198f473ce52e65e3b4c61e8a68848d0245515703e"
    end

    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.1/pastewatch-cli-linux-amd64"
      sha256 "4e52870db149eeca40a602f996c5123ec60a519941ad37806dae410f1fb24661"
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
