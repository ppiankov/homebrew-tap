# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.22.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/ppiankov/pastewatch/releases/download/v0.22.0/pastewatch-cli"
  sha256 "01053ac7721ee5a2b19ee01cf7201d99a2904ffd85a4bcb139f148a65eeafff2"

  def install
    bin.install "pastewatch-cli"
  end

  test do
    assert_match "pastewatch-cli", shell_output("#{bin}/pastewatch-cli version")
  end
end
