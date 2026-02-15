class Pgspectre < Formula
  desc "PostgreSQL schema and usage auditor — detects drift between code and database"
  homepage "https://github.com/ppiankov/pgspectre"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_darwin_arm64.tar.gz"
      sha256 "737bfc2ed2f6e062c55731764234e2939f3e0adf622710649b26a41fb956ea1c"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_darwin_amd64.tar.gz"
      sha256 "02d5135a7c4a68fbec64770143632ec1addc37a04f83e3048779b1612130e941"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_linux_arm64.tar.gz"
      sha256 "087821cdd06b0fcd23ac2b8ff6e7c120b5585e7e12d02b7f8f7eb3d4332a2fa3"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_linux_amd64.tar.gz"
      sha256 "2e819892de3b954b8d2f4d8606b12a893f1391660868071635818e0320132797"
    end
  end

  def install
    bin.install "pgspectre"
  end

  test do
    assert_match "pgspectre", shell_output("#{bin}/pgspectre version")
  end
end
