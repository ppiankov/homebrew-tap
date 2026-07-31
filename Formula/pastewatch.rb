# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.36.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.36.0/pastewatch-cli"
    sha256 "70ebaef9fe03c6ec1c9478cb2e353da37d7413e5e29920725eed96f543b19663"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.36.0/pastewatch-cli-linux-amd64"
      sha256 "b10af6bdd4e44f3aa8b07599f9d0ff482da2fdd3a6a743e74f1c3b8c8b23f639"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.36.0/pastewatch-cli-linux-arm64"
      sha256 "e3aa50917b9b0812d70814b6e261580ea9fd2ed78ef704f3cd8a4f3a9ad2a0fe"
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
