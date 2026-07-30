class Iamspectre < Formula
  desc "Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities"
  homepage "https://github.com/ppiankov/iamspectre"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.0/iamspectre_0.8.0_darwin_arm64.tar.gz"
      sha256 "1c29bcd9e9895cc5cb6b238de468e88a037f8a0c7b56f2c8d890ce94920b26d0"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.0/iamspectre_0.8.0_darwin_amd64.tar.gz"
      sha256 "e2c8f41ace2dd2e205b8841b10e4e6dcb5021c2b637f43f05804b1eaa1e4ceca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.0/iamspectre_0.8.0_linux_arm64.tar.gz"
      sha256 "54cff9549c8a3bad083dedfac3970eadba9663496fa494bd1c450fafe2b9dcb2"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.0/iamspectre_0.8.0_linux_amd64.tar.gz"
      sha256 "d7198f99f9036e5be01a52498c8013d4f74e171b02f44183d1cb2e5406d9e473"
    end
  end

  def install
    bin.install "iamspectre"
  end

  test do
    system "#{bin}/iamspectre", "version"
  end
end
