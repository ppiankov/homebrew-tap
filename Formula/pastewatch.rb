# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.39.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.39.0/pastewatch-cli"
    sha256 "229aadd3e737eb507443f2adf0aeebc8ff506b4e528f150d7805941c6822b7ca"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.39.0/pastewatch-cli-linux-amd64"
      sha256 "8e6dd9ca947ef37b35be00ba48977cdecc97b19ce902df5ee3487ee37288be22"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.39.0/pastewatch-cli-linux-arm64"
      sha256 "4b9e71cf340a0d2fb6a00aacc2e2b0fa6c8e1e19aaed0f070ad8f253232284ea"
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
