class Supermac < Formula
  desc "macOS system management CLI — 12 modules, 127 commands"
  homepage "https://github.com/CosmoLabs-org/SuperMac"
  url "https://github.com/CosmoLabs-org/SuperMac/releases/download/v0.2.0/mac-darwin-arm64.tar.gz"
  sha256 "PLACEHOLDER_UPDATE_ON_RELEASE"
  license "MIT"

  depends_on :macos

  on_intel do
    url "https://github.com/CosmoLabs-org/SuperMac/releases/download/v0.2.0/mac-darwin-amd64.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_ON_RELEASE"
  end

  def install
    bin.install "mac"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/mac --version")
  end
end
