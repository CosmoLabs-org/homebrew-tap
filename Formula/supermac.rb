class Supermac < Formula
  desc "macOS system management CLI — 12 modules, 127 commands"
  homepage "https://github.com/CosmoLabs-org/SuperMac"
  url "https://github.com/CosmoLabs-org/SuperMac/releases/download/v0.2.1/mac-arm64.tar.gz"
  sha256 "dae44a04892c125d629f4e10d74bcc4592cd15abd120d3f95a3926e5600cc9aa"
  license "MIT"

  depends_on :macos

  on_intel do
    url "https://github.com/CosmoLabs-org/SuperMac/releases/download/v0.2.1/mac-amd64.tar.gz"
    sha256 "2c14b51aa311db368a933946d5c784a63d897301a6e33e80e27914ac33f64342"
  end

  def install
    bin.install "mac"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/mac version")
  end
end
