# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.32.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.32.0/pastewatch-cli"
    sha256 "4e6cea83870c0e58ed68814b28fcbfcc24cf99e632b173ec2a182859cf6040e6"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.32.0/pastewatch-cli-linux-amd64"
      sha256 "c8f8948d32b3303ce5a274fa051bd41b9ffd13e696486ebeef51369ad4664b09"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.32.0/pastewatch-cli-linux-arm64"
      sha256 "815ae8890fff7b0cb8afbd2ad54c9600773669bc461e1817495e4632f74819a1"
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
