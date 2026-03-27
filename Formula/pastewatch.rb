# typed: false
# frozen_string_literal: true

class Pastewatch < Formula
  desc "Sensitive data scanner — deterministic detection and obfuscation for text content"
  homepage "https://github.com/ppiankov/pastewatch"
  version "0.25.4"
  license "MIT"

  on_macos do
    url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.4/pastewatch-cli"
<<<<<<< Updated upstream
    sha256 "681c6511b0b30b2c7d0b3cfbff797095263d295c5d03cb6dca967ee924201b76"
=======
    sha256 "81ece52f60424baa4d333eb21ebaa3d7487f9eb7e85c5caa2f54558db85fa675"
>>>>>>> Stashed changes
  end

  on_linux do
    on_intel do
      url "https://github.com/ppiankov/pastewatch/releases/download/v0.25.4/pastewatch-cli-linux-amd64"
      sha256 "6542834b29887b668098abf0da5533526769d7b1d29bdcfd48ceaac2fd696761"
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
