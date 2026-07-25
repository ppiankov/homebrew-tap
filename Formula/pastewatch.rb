# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.34.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.34.0/pastewatch-cli"
    sha256 "a40e3fde1fec31f17dca96920067731a9816a7e6a296c3a0f9e5b0c9433c0f55"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.34.0/pastewatch-cli-linux-amd64"
      sha256 "f1907244f0fe5ebdd2c983cbcc2bf9b6e7d7e721d6d5bd04e05744bafd4ee5f3"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.34.0/pastewatch-cli-linux-arm64"
      sha256 "bbdb517400127dd8b72e652f76d370db6f752ca64c22e4c0ba0800f08b27a1a4"
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
