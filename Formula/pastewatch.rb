# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.25.8"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.8/pastewatch-cli"
    sha256 "faa5eb81637de9a6888f2002d5fa4c0e735f8e486263085d94c0e4bf46dfac93"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.8/pastewatch-cli-linux-amd64"
      sha256 "ace64bf0eec638c75b7d8abbc9c95ad3d21c4497072d531f752eb6029beaedb1"
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
