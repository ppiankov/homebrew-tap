class Pgspectre < Formula
  desc "PostgreSQL schema and usage auditor — detects drift between code and database"
  homepage "https://github.com/ppiankov/pgspectre"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.3.0/pgspectre_0.3.0_darwin_arm64.tar.gz"
      sha256 "7012ca548a40da10c9ef7f87bfcaa9f0ec6bcbfab31758baac7e6e721191e772"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.3.0/pgspectre_0.3.0_darwin_amd64.tar.gz"
      sha256 "ab3f3a9adb23dc4d0ad312714ae5dd5bccd6d65c47ca6eb4b3d9172c370055eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.3.0/pgspectre_0.3.0_linux_arm64.tar.gz"
      sha256 "b1a9cb45b10cb772b96e4f8957fa756b875d022b55f702aca7c5ec4962a24f33"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.3.0/pgspectre_0.3.0_linux_amd64.tar.gz"
      sha256 "5b2b569215014b962c735b3f65f8c5ac3f678b3fc34ef1482beb8f65edbe59b8"
    end
  end

  def install
    bin.install "pgspectre"
  end

  test do
    assert_match "pgspectre", shell_output("#{bin}/pgspectre version")
  end
end
