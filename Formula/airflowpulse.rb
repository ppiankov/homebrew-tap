class Airflowpulse < Formula
  desc "Heartbeat monitor for Apache Airflow"
  homepage "https://github.com/ppiankov/airflowpulse"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/airflowpulse/releases/download/v0.1.2/airflowpulse-darwin-arm64"
      sha256 "cf1afc4fe82724502daebf8aab8e24d7de5327184dea484a9da05f7153c71fa3"
    else
      url "https://github.com/ppiankov/airflowpulse/releases/download/v0.1.2/airflowpulse-darwin-amd64"
      sha256 "30f268806fd7958fa84366645df99ff4305ece21701568b28edf21231068e15c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ppiankov/airflowpulse/releases/download/v0.1.2/airflowpulse-linux-arm64"
      sha256 "0745657492fdec0f396ce5edebbdb7522c837b6f4d92504d8cd4099fc4f4a522"
    else
      url "https://github.com/ppiankov/airflowpulse/releases/download/v0.1.2/airflowpulse-linux-amd64"
      sha256 "0328cbda83327cded4ad2cac3e11568912e06c154219ea66ccc925790deaf1b8"
    end
  end

  def install
    bin.install Dir["airflowpulse-*"].first => "airflowpulse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airflowpulse version")
  end
end
