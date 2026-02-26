# typed: false
# frozen_string_literal: true

class Vaultspectre < Formula
  desc "Vault secret usage auditor - find missing, unused, and stale secrets"
  homepage "https://github.com/ppiankov/vaultspectre"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_darwin_arm64.tar.gz"
      sha256 "7f8380272b78de0897b7fb943adb22f7f898ff7558a6aa0f4c29c988be0fd551"
    end
    on_intel do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_darwin_amd64.tar.gz"
      sha256 "576c6fcc2029bd7a390e3c939c07fcbc51fb09f2f45d1a3f93913752927a8a02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_linux_arm64.tar.gz"
      sha256 "a56324ef2fae102284933d0b009e765bc6c75bcc5eb4c5b4fa6c78e70476f9ef"
    end
    on_intel do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_linux_amd64.tar.gz"
      sha256 "06b5dc10c8360b4b6a78564fdc138c5b52b29a062d0a81b26121fd2410fb4dab"
    end
  end

  def install
    bin.install "vaultspectre"
  end

  test do
    system "#{bin}/vaultspectre", "version"
  end
end
