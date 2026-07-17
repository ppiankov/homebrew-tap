# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.32.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.32.0/pastewatch-cli"
    sha256 "3281f7a33d82830124ff15692d16b5b7bbc385e815599fd008574f6ecc167aea"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.32.0/pastewatch-cli-linux-amd64"
      sha256 "850b561cd04ec6f8f91de32433d0fa1ea4bf481087cc17be6d7e3ef2270c0d56"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.32.0/pastewatch-cli-linux-arm64"
      sha256 "8c8f1ed04d0bd05f77ec2b909416999567173293e38b0f396e8657986c513ef6"
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
