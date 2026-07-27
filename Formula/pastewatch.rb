# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.35.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.35.1/pastewatch-cli"
    sha256 "d29a7d8a8ce880cf52bdd4fc34b8cd249b912a4945d285db742e28aa78b3a386"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.35.1/pastewatch-cli-linux-amd64"
      sha256 "6e029530f203c9022555c8396700bccde396679fed184879c1a2204336c4d022"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.35.1/pastewatch-cli-linux-arm64"
      sha256 "bbbe0e45f00510ddb7945466e8fe0e691997c1d368f6a5adb6b2ce30df8a8adf"
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
