# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.17.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/ppiankov/pastewatch/releases/download/v0.17.0/pastewatch-cli"
  sha256 "62c2249d6a91a88eddfc94d82db75de3e095321428af595e6f474c2e1e2aedeb"

  def install
    bin.install "pastewatch-cli"
  end

  test do
    assert_match "pastewatch-cli", shell_output("#{bin}/pastewatch-cli version")
  end
end
