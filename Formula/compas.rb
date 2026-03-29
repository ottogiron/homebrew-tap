class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.5.0/compas-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "fa9f257c04512bcd93cd8d0786fbf9551c0ef43b539cebf8ca29d86772ba1cbf"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.5.0/compas-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "729e2c94e8fb005015afe731481eff913c620914880986c41b65e2e11876cc1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.5.0/compas-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b77c4adaed9f5ef5b3dd6f5abb7b835ae6f4838155d4bd67b224938f1f897f7"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.5.0/compas-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27fbd811215d3c78ae164f637abd079a5676ca3f5cfd14f363ecd21af16e9e01"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
