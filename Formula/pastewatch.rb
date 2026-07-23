# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.33.2"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.2/pastewatch-cli"
    sha256 "3085c1de3e576b3e174564cd479d2cd44e5b0909de0800be5972d8d165e38d02"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.2/pastewatch-cli-linux-amd64"
      sha256 "1f5d9e7805798ec8e10566dcf70e19c25789cd0ea36df30684da93267f4c4d88"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.2/pastewatch-cli-linux-arm64"
      sha256 "419cd60654d47de78d23c97bcc1278de625288c4465a6235fc0561a80e591b95"
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
