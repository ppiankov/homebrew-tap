# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.1/trustwatch_0.2.1_darwin_arm64.tar.gz"
      sha256 "b7daa40c65475dd743cf01514292dd37a850f9b54a7149328490dfb44aedd12f"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.1/trustwatch_0.2.1_darwin_amd64.tar.gz"
      sha256 "df7e52cf029060e9e150b1262b9a5d4e2a19e81e9c299ff34262f219a7aa5411"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.1/trustwatch_0.2.1_linux_arm64.tar.gz"
      sha256 "0e89aa126ae97832a6902b0b26af25d9619da39159047fb2300c0533792c05c8"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.2.1/trustwatch_0.2.1_linux_amd64.tar.gz"
      sha256 "2184b00fecd390f39e94dad1c9fda77d2ce52b83c0801926babbe26d8c0241fd"
    end
  end

  def install
    bin.install "trustwatch"
  end

  test do
    assert_match "trustwatch", shell_output("#{bin}/trustwatch version")
  end
end
