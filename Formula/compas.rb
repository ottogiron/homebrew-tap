class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.8.1/compas-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "94117471cf77ee726b3b44437003b3d0c011aad8c0a867b21e96c3984a0a4d95"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.8.1/compas-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "7f7d8307b4e10a43e8ea5b8fc853cec49b45e844d7074715530cbd8b49fff737"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.8.1/compas-v0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28309e4353adc5ed7bbcf7d1eab873166c44422ab57a1f7080b851c5e447e2f4"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.8.1/compas-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5836f8c42783a47d3d3da3a2bc6bbf8225e7c8830679065c84014c3616eefa01"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
