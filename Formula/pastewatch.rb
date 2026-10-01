# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.37.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.37.1/pastewatch-cli"
    sha256 "bd30bec5c8d5a65df7e93f9f4820c75aa141af53c56333cb5cb93361ed09ac73"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.37.1/pastewatch-cli-linux-amd64"
      sha256 "e778aee20f9c7fbfdd475e12d1a8e3ee9f3c0228742e6609376888584c93a4aa"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.37.1/pastewatch-cli-linux-arm64"
      sha256 "17878396d690289140c5bcb8e98b7551ffddcf95a09f4f4aacc6997751bae7db"
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
