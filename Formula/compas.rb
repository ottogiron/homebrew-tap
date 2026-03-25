class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.3/compas-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "13455dcf43ac612480cd7226133457b6953fa7143543b53305a65d1520998539"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.3/compas-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "0443aa62607fdeabe8c0cc99aaac548fe1acbac399c2ea4ea49713f1e5eb73ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.3/compas-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4bf02bc4f6f327e6e86f16efd323977b7740f606ddc5e265131321b4bce5822"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.3/compas-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1edec68a1c0dbdcf28b2c65ef8f3167831afdd5ef09778b855e5d580ca98c021"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
