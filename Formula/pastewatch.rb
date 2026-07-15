# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.30.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.30.0/pastewatch-cli"
    sha256 "e22d91ef41913c2db7244b8b590fbe46c7aadef5ae65571dce4fff99fbec7688"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.30.0/pastewatch-cli-linux-amd64"
      sha256 "365ba9def51e2fccd1065c8fdcb467f1511bbaa431263c961fa321dbfa592a8c"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.30.0/pastewatch-cli-linux-arm64"
      sha256 "7b517c8ad20d3459055f77a97fa8693cbf006bd82637d5d1256141cef2ffbd02"
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
