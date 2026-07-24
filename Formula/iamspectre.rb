class Iamspectre < Formula
  desc "Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities"
  homepage "https://github.com/ppiankov/iamspectre"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.6.2/iamspectre_0.6.2_darwin_arm64.tar.gz"
      sha256 "052473dd6ac8694e1f69206de5a704cbe61d5960796148c72e47612414639c6e"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.6.2/iamspectre_0.6.2_darwin_amd64.tar.gz"
      sha256 "f63ee9b7bbbecad0e3cbac422003edcf5d9c427575f401b759fc406041fa56e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.6.2/iamspectre_0.6.2_linux_arm64.tar.gz"
      sha256 "1eac08e32242edeadaffa5b19b182d6578b009ba5d54fb048c7d69974f8c69be"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.6.2/iamspectre_0.6.2_linux_amd64.tar.gz"
      sha256 "8b768a02ad2f85d4e0e70bdfc26e12dd4919c82a709f2cdd2374491635bdc2e5"
    end
  end

  def install
    bin.install "iamspectre"
  end

  test do
    system "#{bin}/iamspectre", "version"
  end
end
