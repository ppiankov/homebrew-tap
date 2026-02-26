# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.7.2"
  license "MIT"

  depends_on :macos

  url "https://github.com/ppiankov/pastewatch/releases/download/v0.7.2/pastewatch-cli"
  sha256 "73b529949c617d559858495d4a903f890e8ef38f5a4f8bf3a315e8b11d7a77c1"

  def install
    bin.install "pastewatch-cli"
  end

  test do
    assert_match "pastewatch-cli", shell_output("#{bin}/pastewatch-cli version")
  end
end
