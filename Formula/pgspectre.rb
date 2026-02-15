class Pgspectre < Formula
  desc "PostgreSQL schema and usage auditor — detects drift between code and database"
  homepage "https://github.com/ppiankov/pgspectre"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_darwin_arm64.tar.gz"
      sha256 "52085789c7686716df1447b300923a6735ef42b1ea493c6c7dd7c4adbba66287"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_darwin_amd64.tar.gz"
      sha256 "01160e977147de27d26ebe92499a5435e3ec56a58d186e3eac63055754be0424"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_linux_arm64.tar.gz"
      sha256 "badb2d23cdfaae5b20cfab0e76c74bc2a5f5cf372c05bb1671ea90ce7c7a339c"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_linux_amd64.tar.gz"
      sha256 "45e7dd55eab254d93723efd9faae1e0841c02363d8473421eeaaa3afb7e70018"
    end
  end

  def install
    bin.install "pgspectre"
  end

  test do
    assert_match "pgspectre", shell_output("#{bin}/pgspectre version")
  end
end
