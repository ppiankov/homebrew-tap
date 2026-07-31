class Iamspectre < Formula
  desc "Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities"
  homepage "https://github.com/ppiankov/iamspectre"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.1/iamspectre_0.8.1_darwin_arm64.tar.gz"
      sha256 "d6f1df18b384ce002865082a7a2ff1fb2b128b064e392a90f5788f346cdebbc8"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.1/iamspectre_0.8.1_darwin_amd64.tar.gz"
      sha256 "f36310e0804181c866b2df9053ac07b247da507200622bcd28fb13980b84cd07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.1/iamspectre_0.8.1_linux_arm64.tar.gz"
      sha256 "2b2e2ddfc413c99bec6a86b703aede58eacd6d5f175e8936392f9698de2e3d2a"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.8.1/iamspectre_0.8.1_linux_amd64.tar.gz"
      sha256 "06c3efe6da2cfbcfe8cbda16cb9e1e2638c4eaa3afe5350239679fb34385624d"
    end
  end

  def install
    bin.install "iamspectre"
  end

  test do
    system "#{bin}/iamspectre", "version"
  end
end
