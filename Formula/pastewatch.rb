# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.44.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.44.0/pastewatch-cli"
    sha256 "a63ce3ca70a30c623d5bfc83775c58af927865499c19cce1ca4f8916d37576d2"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.44.0/pastewatch-cli-linux-amd64"
      sha256 "181acdd68556528a2ff2b088e91f5846dad4fc390dfad8585122dbfd624fce1c"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.44.0/pastewatch-cli-linux-arm64"
      sha256 "de5dc6e6b3a6d30424e3993a7c631b1fae19095f99d83a21738c3a5a70735027"
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
