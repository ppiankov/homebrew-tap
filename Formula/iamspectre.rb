class Iamspectre < Formula
  desc "Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities"
  homepage "https://github.com/ppiankov/iamspectre"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.2/iamspectre_0.7.2_darwin_arm64.tar.gz"
      sha256 "97793ca4ade2a84f85da6f86a831ecff0cae03f1b8b9d68be3638ae14bb63d3a"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.2/iamspectre_0.7.2_darwin_amd64.tar.gz"
      sha256 "3cd927067fc8903dd6a0a646da04b791dbc739763274cdf1a8a15905feb9aa03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.2/iamspectre_0.7.2_linux_arm64.tar.gz"
      sha256 "2de59a35c80f30e4bf3b6954e419113163408496f9eb309573b0478a3083ac00"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.2/iamspectre_0.7.2_linux_amd64.tar.gz"
      sha256 "52d342806c749a0f5fdab1ddad96f80a8617e272d5dbc7a0fb8e1a721462de1c"
    end
  end

  def install
    bin.install "iamspectre"
  end

  test do
    system "#{bin}/iamspectre", "version"
  end
end
