class Pgspectre < Formula
  desc "PostgreSQL schema and usage auditor — detects drift between code and database"
  homepage "https://github.com/ppiankov/pgspectre"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_darwin_arm64.tar.gz"
      sha256 "9e9dacbf9770162a2f616e2553377d9f7acd058142e8f0b83ca6d1ce94f09487"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_darwin_amd64.tar.gz"
      sha256 "6a46d894f33124a3302137aafa24d8fbc6fb288f531a7bf674883d7576ea4867"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_linux_arm64.tar.gz"
      sha256 "646884595fa07a0aeb98404cf637a3ad7a19c197e3fa9420f2307e66a9d049ac"
    end
    on_intel do
      url "https://github.com/ppiankov/pgspectre/releases/download/v0.1.0/pgspectre_0.1.0_linux_amd64.tar.gz"
      sha256 "e13d6092fbd2dd9f8bde7b82cc3271086a07c55c8c28a9ad49c8729055d33253"
    end
  end

  def install
    bin.install "pgspectre"
  end

  test do
    assert_match "pgspectre", shell_output("#{bin}/pgspectre version")
  end
end
