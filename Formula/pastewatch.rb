# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.25.2"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.2/pastewatch-cli"
  sha256 "cbdd71b78556ece3411690e612c3515872f89903ae5ae627f8dcfc6a60fcf9c4"

  def install
    bin.install "pastewatch-cli"
  end

  test do
    assert_match "pastewatch-cli", shell_output("#{bin}/pastewatch-cli version")
  end
end
