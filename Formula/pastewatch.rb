# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.36.2"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.36.2/pastewatch-cli"
    sha256 "afc62e3f281bd209c082f539eb5ab80a1024e8b2a91a0e146a1f0e612a3f9797"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.36.2/pastewatch-cli-linux-amd64"
      sha256 "391439757b24f24000da4db6d44b939eb62ffd2032bfe3b4cb911a15cc572010"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.36.2/pastewatch-cli-linux-arm64"
      sha256 "65120d8141669b287415b9eaff004ecaf59048291a18bdd088b9676786a1e434"
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
