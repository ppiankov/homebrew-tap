# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.1/trustwatch_0.3.1_darwin_arm64.tar.gz"
      sha256 "cac0defc6e8358de6ebc5882288b3853039575b3cefbe3b81fc244354f2d72a6"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.1/trustwatch_0.3.1_darwin_amd64.tar.gz"
      sha256 "1f468f71df68f4d0803b48a58120954c4c6d4ef73e108ccdbfcfd0bba48cef80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.1/trustwatch_0.3.1_linux_arm64.tar.gz"
      sha256 "d6e91573e9b3312247af0212f0c6f883224ef641697ce51b7eee73de0ee80a5e"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.1/trustwatch_0.3.1_linux_amd64.tar.gz"
      sha256 "3734ff101fa15426b87ac4eebf5e7d9139d8746a707619ef838bc260a078e4a5"
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
