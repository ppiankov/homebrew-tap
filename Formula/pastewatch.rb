# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.33.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.0/pastewatch-cli"
    sha256 "ec57df3c0fb0bb125157e46b788170875a9cd401fb5c74183245796c231d1b96"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.0/pastewatch-cli-linux-amd64"
      sha256 "72391929fe7572a125e422bd80cf294e79922ae508095c7505b289e8c1f7f922"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.0/pastewatch-cli-linux-arm64"
      sha256 "497202ecc2e498a9f4ecd5a8bdcff5ddadb2b240196e4f9c950dd8f11180525b"
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
