# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.26.2"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.26.2/pastewatch-cli"
    sha256 "f81cb05910649e8df0797c7910780ca5c13a9e4bc048095251a82610c33ed6a6"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.26.2/pastewatch-cli-linux-amd64"
      sha256 "39302188e9e06184c8aecf059a9103398dd508fcb43e7f53df7d922de15d6a6b"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.26.2/pastewatch-cli-linux-arm64"
      sha256 "da7ef8988c381c84d10bc5d3218b157b167a7775424ddb11abb996e89f4fde06"
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
