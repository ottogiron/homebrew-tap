class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.8.0/compas-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "daf225187339b63cb8cacca42d4d2f8d44d8cc148890d51d348d6a6e31893d1d"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.8.0/compas-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "0b585bda5a4c7f3d758df0257b2622ea1a644fc80e1dc90cb1b3f300b16f93f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.8.0/compas-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8acc2e07dbaa0317877a0d66e86de20f4dd144dcc95b32eec28be856bf07d02b"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.8.0/compas-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "624dafcb701d6d96418ed75d3b09d26c6b3a73b5e0dfcaa9c077ef9d7972ab0a"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
