# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.31.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.1/pastewatch-cli"
    sha256 "a0b20b396b836023ad6f9caaede00ab72e46ee1f1d5a603633cacdce937a6140"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.1/pastewatch-cli-linux-amd64"
      sha256 "f846b9f0098faf937e82f4331c183976d73fd0eceb3b55f7019a6be1caf6aaec"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.1/pastewatch-cli-linux-arm64"
      sha256 "825d64272801ae556c3e5210d0269c71991dc4cfb1b926eede4cc5787f7b19a1"
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
