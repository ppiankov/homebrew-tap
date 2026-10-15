# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.43.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.43.0/pastewatch-cli"
    sha256 "abfc8e0c73784db02d69c509ab4b3af4ef126819d774f2aef63bdbfae5212886"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.43.0/pastewatch-cli-linux-amd64"
      sha256 "9f53ee7754a79e88d1cf521ece03c0a1e7146bfaf7c4adfb68f64f7eab7e2b76"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.43.0/pastewatch-cli-linux-arm64"
      sha256 "516729cccf9f4faf6e2612c92a203c0e7247a172602cbf338c315bb1d316e7be"
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
