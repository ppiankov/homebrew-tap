# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.25.2"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.2/pastewatch-cli"
    sha256 "8f6af4e8cb7a589e4722a9310c4c56280fd7985a6db01028814d6cafeeca85d4"
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.2/pastewatch-cli-linux-arm64"
      sha256 "9f8dec8de3d6d13663cda1a9910cb161f26eeba4e83b12dbf6d4b93a944c7df1"
    end

    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.2/pastewatch-cli-linux-amd64"
      sha256 "eebe598cfac9b258b67a416b91dd2810699a7bda84c7dbf119c1de695cf3564d"
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
