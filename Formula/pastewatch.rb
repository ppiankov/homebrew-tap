# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.24.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.24.1/pastewatch-cli"
    sha256 "a3a02c9d213cb738a859f7b086c4b39bde714834f1aa198f4371b3284cba1878"
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.24.1/pastewatch-cli-linux-arm64"
      sha256 "3088727fd4eadbf0daa8bbd96a8e79b308a1999865b573a23e4dd5a74284091c"
    end

    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.24.1/pastewatch-cli-linux-amd64"
      sha256 "c8e5a729def62dd377f6e16620e9c9684b2eceee4cad6b3626d0ce2fe68c560b"
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
