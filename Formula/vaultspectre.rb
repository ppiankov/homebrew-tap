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
      sha256 "9385d23987e1d183434027b79f8f9f55a572c95122160dde881b283e57a98a35"
    end
    on_intel do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_darwin_amd64.tar.gz"
      sha256 "f56657ee93a53c6f95b07aee342f77cd1a8f01f13ef7b14c6a33e5853e1025e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_linux_arm64.tar.gz"
      sha256 "5978dee094364feb9f8880eaf4e71c3b3468f23edb589a4d0fb8dd51df35c7c1"
    end
    on_intel do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_linux_amd64.tar.gz"
      sha256 "f9b0758eca47b8b18a6f329f73215363dfe28721ed7faf28bc39db6fc92d1f14"
    end
  end

  def install
    bin.install "vaultspectre"
  end

  test do
    system "#{bin}/vaultspectre", "version"
  end
end
