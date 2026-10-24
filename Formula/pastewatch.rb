# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.44.1"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.44.1/pastewatch-cli"
    sha256 "f61e1d549166b6e2d66aa6f1180ec81ab13b74be1ae5d3386cf04b7f6bbebf4a"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.44.1/pastewatch-cli-linux-amd64"
      sha256 "96e04663ccbd2aa289ff65e08893b5a0eb735975a1202ed0cd4a429fc6c341f1"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.44.1/pastewatch-cli-linux-arm64"
      sha256 "f217c92ddb6fce1cc0d26750fdd8e53d4f90c3da9740a35acd172d5ca68cf182"
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
