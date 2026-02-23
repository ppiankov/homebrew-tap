# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.4.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/ppiankov/pastewatch/releases/download/v0.4.0/pastewatch-cli"
  sha256 "ca811674beda78063f5db1650fd405623972b02424307cae4833012833299c16"

  def install
    bin.install "pastewatch-cli"
  end

  test do
    assert_match "pastewatch-cli", shell_output("#{bin}/pastewatch-cli version")
  end
end
