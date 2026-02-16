class Pgspectre < Formula
  desc "PostgreSQL schema and usage auditor — detects drift between code and database"
  homepage "https://github.com/ppiankov/pgspectre"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.2/pgspectre_0.1.2_darwin_arm64.tar.gz"
      sha256 "1624e3f3bf4aba63fb5a4e9f9cbc3a2f52348fd33357340ad4ce7b58f07dff4c"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.2/pgspectre_0.1.2_darwin_amd64.tar.gz"
      sha256 "ce77a9f490476dc5ffdb4c21c2569b575a9579b9c076b4f630003c8bc25caf43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.2/pgspectre_0.1.2_linux_arm64.tar.gz"
      sha256 "aef808e7b9ad5b07c281009d33215e2de3b7ad85cb87ac75ab95a65d3778b90a"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.2/pgspectre_0.1.2_linux_amd64.tar.gz"
      sha256 "f9406a66669b94975e99445f35f08c6cd5cfbc61956d7e6262faa8a7649e91f9"
    end
  end

  def install
    bin.install "pgspectre"
  end

  test do
    assert_match "pgspectre", shell_output("#{bin}/pgspectre version")
  end
end
