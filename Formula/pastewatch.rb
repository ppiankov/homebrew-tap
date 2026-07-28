# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.35.2"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.35.2/pastewatch-cli"
    sha256 "b40af99ac06708c445824a242ef2ac205d0b6a261856c5208579971eb21d40e5"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.35.2/pastewatch-cli-linux-amd64"
      sha256 "53fdeee98a838c995adb9da42af1624d588a301ba5b5c54fd046e9f395428fd5"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.35.2/pastewatch-cli-linux-arm64"
      sha256 "8d806df3309c952870f37b57ebf207126017c63c295087d36c1089f8f9c5d46d"
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
