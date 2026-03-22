class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.2/compas-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "9c96899b3ae54a5d0b7aeb71e32f7b8ad1bd3545f7f4ccb079aeb20e660b14a4"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.2/compas-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "049382db1deefac853032f49e17cee6575f7cca16252a72e16b2d5cf56b446f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.2/compas-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97c6552d7b47d2225fadffed093d814efcc4421a7ac71caf37065c496fb40e35"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.2/compas-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26aaa06e753f5899db54b0eb3fd9917f3ac3d1a7497c235d46d007e8c9bb1f37"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
