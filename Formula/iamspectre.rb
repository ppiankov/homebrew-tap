class Iamspectre < Formula
  desc "Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities"
  homepage "https://github.com/ppiankov/iamspectre"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.3/iamspectre_0.8.3_darwin_arm64.tar.gz"
      sha256 "155cce3a758338e81c41be927ba4f586b04847bb2b696b00e2bf1a54fbca7ef9"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.3/iamspectre_0.8.3_darwin_amd64.tar.gz"
      sha256 "ce25a9e7f42722350773debd6f42e62a1bbd3b896d63aa2f5b47fea5f3c14c7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.3/iamspectre_0.8.3_linux_arm64.tar.gz"
      sha256 "394423b28aa4df8ef33598b3b6babd997f213c58adec42783695fa14bb78179c"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.3/iamspectre_0.8.3_linux_amd64.tar.gz"
      sha256 "af075fafb2d02773c2dbf82e076dcde095d49faa432d74d1948d8967bc0546d3"
    end
  end

  def install
    bin.install "iamspectre"
  end

  test do
    system "#{bin}/iamspectre", "version"
  end
end
