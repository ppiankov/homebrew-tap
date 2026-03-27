# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.25.1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.1/pastewatch-cli"
  sha256 "d5c0b9859c7d92311c97297b612a19d1786547e552528a126a46ca2131157ac8"

  def install
    bin.install "pastewatch-cli"
  end

  test do
    assert_match "pastewatch-cli", shell_output("#{bin}/pastewatch-cli version")
  end
end
