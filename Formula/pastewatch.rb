# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.26.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.26.1/pastewatch-cli"
    sha256 "fc76dde981d0f71d7e745cd399b49e25065ceb8a7259cd72e59c39d57fb92a9e"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.26.1/pastewatch-cli-linux-amd64"
      sha256 "c35fa85db042e71ad99df3ae00e08a796f993ac64ec6c894adbc98bc1a15936f"
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
