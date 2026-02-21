# typed: false
# frozen_string_literal: true

class Noisepan < Formula
  desc "Extract signal from noisy information streams"
  homepage "https://github.com/ppiankov/noisepan"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.0/noisepan_0.4.0_darwin_arm64.tar.gz"
      sha256 "42d46ab5a51396016605ae44d063c93620dc058ae379102a071cb32d1bd16336"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.0/noisepan_0.4.0_darwin_amd64.tar.gz"
      sha256 "82b96fb82847a2d1f055081415f0179627203a4b72f64d129d0ba001ca059c42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.0/noisepan_0.4.0_linux_arm64.tar.gz"
      sha256 "2bacae02be7719818b495bc162e20b1b53c901b6b2b7b4e3569525f8a1a183ec"
    end
    on_intel do
      url "https://github.com/ppiankov/noisepan/releases/download/v0.4.0/noisepan_0.4.0_linux_amd64.tar.gz"
      sha256 "ab9d51d806b009a710dc5af3d5e35a764875b34268d089188b1ac4b547d97981"
    end
  end

  def install
    bin.install "noisepan"
  end

  test do
    system "#{bin}/noisepan", "version"
  end
end
