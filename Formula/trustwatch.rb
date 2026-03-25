# typed: false
# frozen_string_literal: true

class Trustwatch < Formula
  desc "Kubernetes trust surface monitoring — discovers expiring certificates across webhooks, mesh, and more"
  homepage "https://github.com/ppiankov/trustwatch"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.5/trustwatch_0.3.5_darwin_arm64.tar.gz"
      sha256 "aa8c17aca5a5fe48f4937886a90e5778d3cf3e12a97d4ce7f0f91fe8439e7419"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.5/trustwatch_0.3.5_darwin_amd64.tar.gz"
      sha256 "83bb390158dd9a443a04ae4cf776c9306902f4fef52e72814202376403cf9de2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.5/trustwatch_0.3.5_linux_arm64.tar.gz"
      sha256 "bdfefa3618543aa94f19770ffdec9d530acba0ff7eb0d899de26bf0280b61ead"
    end
    on_intel do
      url "https://github.com/ppiankov/trustwatch/releases/download/v0.3.5/trustwatch_0.3.5_linux_amd64.tar.gz"
      sha256 "cedb5146e389a76d3c65d1bc0f507526a32dc5fb07400e427f8d9283379511f5"
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
