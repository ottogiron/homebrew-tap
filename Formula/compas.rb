class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.1/compas-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "4ad26ea6480274ebf2752af93b146f1217d536e5d7d7cc38e9d5325dbc8d80c1"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.1/compas-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "5638ec3e8829638042ce31d2f4f2649e5a4e8c597d657bbaaab16f3fec1d713d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.1/compas-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e650d45ed4bf88abcb403d79dde2c125580751d37f7352ea17e11580cde7ee6"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.1/compas-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b276052623707a7b40eb32726bbe9f563bfd0e2e039b2640ea7280efa022083f"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
