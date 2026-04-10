class Supermac < Formula
  desc "macOS system management CLI — 12 modules, 127 commands"
  homepage "https://github.com/CosmoLabs-org/SuperMac"
  url "https://github.com/CosmoLabs-org/SuperMac/releases/download/v0.2.0/mac-arm64.tar.gz"
  sha256 "2fd59620e10ffcfc7dca9956a3279bc19eacd9bc54ab9f44b5dd7146cec6ac15"
  license "MIT"

  depends_on :macos

  on_intel do
    url "https://github.com/CosmoLabs-org/SuperMac/releases/download/v0.2.0/mac-amd64.tar.gz"
    sha256 "345f08a20068aa34ae261c955efae0ae66018496c00d2cf904be9a7a774cfe77"
  end

  def install
    bin.install "mac"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/mac version")
  end
end
