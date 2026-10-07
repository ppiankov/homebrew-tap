# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.40.0"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.40.0/pastewatch-cli"
    sha256 "0bfb93e3941337c4e7341889f00c62fa8921ea7818c0e519fa209f0712a71f7b"
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.40.0/pastewatch-cli-linux-amd64"
      sha256 "3673c422a43470979833c246fe866d06001263addd26d055cde997e298a69763"
    end
    on_arm do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.40.0/pastewatch-cli-linux-arm64"
      sha256 "caf9d997e77fe18ee2ad6fb72894cac23414c61b6072ffc588bb5ea752395e50"
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
