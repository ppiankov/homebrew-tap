# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.33.3"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.3/pastewatch-cli"
    sha256 "c7548e46953d9e61155362e8e49ae4fa8ccb981f61181413381dc91aa0fe85ae"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.3/pastewatch-cli-linux-amd64"
      sha256 "530d12ff35537fb3abbcb9551df48a370eee9b32d2e6ddf4d66ac5d0d5225a6f"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.33.3/pastewatch-cli-linux-arm64"
      sha256 "281863e94850d5afd48e1a000f232973e840b62284be8e01b2a26773e056e040"
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
