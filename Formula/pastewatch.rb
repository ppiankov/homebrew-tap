# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.39.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.39.1/pastewatch-cli"
    sha256 "30199320aa7790428a638384c64d602f792ced94e1eeb1af65a9d84d96e3eb4b"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.39.1/pastewatch-cli-linux-amd64"
      sha256 "6508c4608640f37ccc5564da32336bd78dd90559d87a1894c59e6dcc5cc2fc66"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.39.1/pastewatch-cli-linux-arm64"
      sha256 "09550831c1a09a73044f3998de486b717044a0e9b6bd995a23bc6c070620a3c5"
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
