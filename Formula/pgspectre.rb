class Pgspectre < Formula
  desc "PostgreSQL schema and usage auditor — detects drift between code and database"
  homepage "https://github.com/ppiankov/pgspectre"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.1/pgspectre_0.1.1_darwin_arm64.tar.gz"
      sha256 "e697f21ae4a9531401f0ea92b25d9ba51d887d6946c393be755de9f0d5edd360"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.1/pgspectre_0.1.1_darwin_amd64.tar.gz"
      sha256 "c1e60c839bd50ac6f630a9b48ded00e5cf9dc8a1cf17b95c05f62d684ab58c19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.1/pgspectre_0.1.1_linux_arm64.tar.gz"
      sha256 "8eaf41ea36086e70251f098fe1349216c3ee79d592f625773dba5a294088d0dd"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.1/pgspectre_0.1.1_linux_amd64.tar.gz"
      sha256 "20b8787873964d4c7b42a0347b1f7e0fd4d91f051cce51b057dc9e50b9c7e7f6"
    end
  end

  def install
    bin.install "pgspectre"
  end

  test do
    assert_match "pgspectre", shell_output("#{bin}/pgspectre version")
  end
end
