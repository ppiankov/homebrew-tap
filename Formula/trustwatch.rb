# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.2/trustwatch_0.3.2_darwin_arm64.tar.gz"
      sha256 "0cade11ba8fc3673ce6d5a3baba2f9cce6a3f6fb23356435a5c1a297a90956cd"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.2/trustwatch_0.3.2_darwin_amd64.tar.gz"
      sha256 "043aaa898be9bba85f0880daade1cfbebf25a7504b3d3de029bd5e8e395d9b7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.2/trustwatch_0.3.2_linux_arm64.tar.gz"
      sha256 "5363d764214504cea32905f1daf4f0e3f4be6cccc26c436a8bd8838b2bb4b35c"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.2/trustwatch_0.3.2_linux_amd64.tar.gz"
      sha256 "a3411b07aca613a2428ed19445c7ee7860e5d220e5137e27e93a4b73751a88bb"
    end
  end

  def install
    bin.install "trustwatch"
    bin.install_symlink "trustwatch" => "kubectl-trustwatch"
  end

  test do
    assert_match "trustwatch", shell_output("#{bin}/trustwatch version")
  end
end
