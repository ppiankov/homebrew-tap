# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.41.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.41.0/pastewatch-cli"
    sha256 "98f2136102abbe5578f1a824e8f33ba553aad934f65450bcace2b02fdbc03897"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.41.0/pastewatch-cli-linux-amd64"
      sha256 "c06612a7c1dc661c5b5e4c48f8f3aac3928f0810f8854045969f7341ea6d2036"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.41.0/pastewatch-cli-linux-arm64"
      sha256 "7e0d1e2a496cf631a00eb95c72c3a873208c7b641146c0de10ccad5b8031841e"
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
