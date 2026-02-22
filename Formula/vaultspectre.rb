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
      sha256 "49e1147d1958ebf89095f49d07c699ca56391c386e1351f6f7d895528575f3d4"
    end
    on_intel do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_darwin_amd64.tar.gz"
      sha256 "c729628fc51e0a08b88b160dbf9caf19ae1f6f9dd48451cf03f07bbf2dec9e37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_linux_arm64.tar.gz"
      sha256 "b68b910141ba69e371999fbc1192b04790aa5772f1908dc63858b2605192d94f"
    end
    on_intel do
      url "https://github.com/ppiankov/vaultspectre/releases/download/v0.3.0/vaultspectre_0.3.0_linux_amd64.tar.gz"
      sha256 "7256d70ffb1f9de408eae4b579977dbb395c96734fb8d33783092512b947da5a"
    end
  end

  def install
    bin.install "vaultspectre"
  end

  test do
    system "#{bin}/vaultspectre", "version"
  end
end
