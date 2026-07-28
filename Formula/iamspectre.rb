class Iamspectre < Formula
  desc "Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities"
  homepage "https://github.com/ppiankov/iamspectre"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.3/iamspectre_0.7.3_darwin_arm64.tar.gz"
      sha256 "c529349ee06b1d5a7f7218e1855f8c9fa9bd6ae19a3b4a2b95fb625e9be9955d"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.3/iamspectre_0.7.3_darwin_amd64.tar.gz"
      sha256 "804042ddefc9aaaa3d5eb8231a3418020d06ec877efc3eaf1906c2262a35d9f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.3/iamspectre_0.7.3_linux_arm64.tar.gz"
      sha256 "1348cba58a7c3beaa8221659232f80a675e14c9eacea69443078c21f26da8550"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.3/iamspectre_0.7.3_linux_amd64.tar.gz"
      sha256 "4752cfeb0e9a3d0f5bc8f63d1078e147f6f6f0bfc517c4d607828b2813f8f615"
    end
  end

  def install
    bin.install "iamspectre"
  end

  test do
    system "#{bin}/iamspectre", "version"
  end
end
