# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.37.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.37.0/pastewatch-cli"
    sha256 "83267235d8f55d8cf758c3ee6403ec5e340a1dcb266a9e8e4f6774377ac35011"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.37.0/pastewatch-cli-linux-amd64"
      sha256 "a052f724a64e74fc3df5bdd1cda0693d88e568a0a4f57dba6c367f8bb1d70ca0"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.37.0/pastewatch-cli-linux-arm64"
      sha256 "f227746d8f650de3661ae3ac19f9011fb4b6d887e41611aeab18efbecfc3e539"
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
