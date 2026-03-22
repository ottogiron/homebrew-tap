class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.0/compas-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "591196b1028ac72667ca9fca3cab37ad61fbda1a598515f6e6506364a01c1009"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.0/compas-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "233cc9f40f155a397f78fad175644ee70c0896763923394266f41de1adadb8d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.0/compas-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75a98be897f2365b75e2192117f82ee5decda1c52b0b4c130eddbd61bda52d96"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.0/compas-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eea2e8875fc8cc856036346f15b19e14b7ab0525076e7fc9c5a2260e10175b20"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
