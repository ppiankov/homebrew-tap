# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.36.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.36.1/pastewatch-cli"
    sha256 "f96baa5c9c2ebdbe608bafc0d3377c57e941a7969be4190e541f3564a6a59d14"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.36.1/pastewatch-cli-linux-amd64"
      sha256 "d98ef311af81686f1adc230e45b1eb09f44f25ed1b2886a162851bdf8e63e669"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.36.1/pastewatch-cli-linux-arm64"
      sha256 "f9f662dba7abd4adde7c150244c0d5a8395a3effa2972a68df9314516a4d1709"
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
