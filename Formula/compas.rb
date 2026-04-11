class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.7.0/compas-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "531f79013380a8d0a5439a23e76548b3810e36b3384d4c4e27fcf26f6c067015"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.7.0/compas-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "88b87d532e768263a1019fc78f6775bd8e64c80224e0553cb53bbea55261f789"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.7.0/compas-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "992ba914dd3fc377d584c5d0fdafa36a80bb2a696bcb83a5f71943f5ae2cf3e5"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.7.0/compas-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "791b9f461988f3f884692232daeface2a7466e4f84435129388c40ddf0205cbd"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
