class Iamspectre < Formula
  desc "Cross-cloud IAM auditor — finds unused, over-permissioned, and stale identities"
  homepage "https://github.com/ppiankov/iamspectre"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.1/iamspectre_0.7.1_darwin_arm64.tar.gz"
      sha256 "4793be0d4209ce8c82e7a5d611962a74725eb6cdac4284de861faeb8a0f11cc3"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.1/iamspectre_0.7.1_darwin_amd64.tar.gz"
      sha256 "544b3e5f408f31d3a10eeea6908e4fa07159b9621a9e69bd32a483556b4a4e54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.1/iamspectre_0.7.1_linux_arm64.tar.gz"
      sha256 "f3c1fd4e54207ad6e9b9d3529ac73fa357ddd1e4a9e6be800f8876d693e47fc6"
    end
    on_intel do
      url "https://github.com/ppiankov/iamspectre/releases/download/v0.7.1/iamspectre_0.7.1_linux_amd64.tar.gz"
      sha256 "04aa7633e76371d9c176387793f527746be303e4cde2040be8642f8051a002c8"
    end
  end

  def install
    bin.install "iamspectre"
  end

  test do
    system "#{bin}/iamspectre", "version"
  end
end
