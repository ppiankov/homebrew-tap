# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.31.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.0/pastewatch-cli"
    sha256 "0547e6f9cb7906ddc13dd7a011b4346386e74f11ee76300c428f62b8411000ff"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.0/pastewatch-cli-linux-amd64"
      sha256 "64e421df8c5e991982526bf643a86d13e006c3c46f6aa788c41d27a67e3b879b"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.31.0/pastewatch-cli-linux-arm64"
      sha256 "3b292680c83bbc05493a3861ae3b02be4562fc054ad814fc1a66ea78b8e0bbba"
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
