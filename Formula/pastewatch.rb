# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.35.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.35.0/pastewatch-cli"
    sha256 "dff96068ad6fbb23b2cdb5802945b954e42dc2d3dea94a8cfee8caeba16d5f67"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.35.0/pastewatch-cli-linux-amd64"
      sha256 "ef4f47131c1a88833ee7c076e7dd1c38cf54222ce63451fb435955633358427e"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.35.0/pastewatch-cli-linux-arm64"
      sha256 "853e6bc97f7b567130e0f4cd343fdd76bfb466120b32dd3e564c76a44b4eddd3"
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
