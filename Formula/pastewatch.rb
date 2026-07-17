# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.31.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.1/pastewatch-cli"
    sha256 "165b4ae7e49a58799f5ce41d3bee2f55872cac21d4acd058ad54bd1a643b2086"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.1/pastewatch-cli-linux-amd64"
      sha256 "9ccc23fe4e4bf043ac22b9161ef566e5421edd1d61e7dfa8661d57e9b5f3d3e0"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.1/pastewatch-cli-linux-arm64"
      sha256 "9007e54c83f1a6fb4b0b98ae4b3b402d57614dd90041db38d10acc74263092cb"
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
