class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]
  bottle :unneeded

  on_macos do
    on_arm do
      url "https://github.com/ottogiron/compas/releases/download/v#{version}/compas-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER" # populated by release workflow on first tag push
    end
    on_intel do
      url "https://github.com/ottogiron/compas/releases/download/v#{version}/compas-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER" # populated by release workflow on first tag push
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ottogiron/compas/releases/download/v#{version}/compas-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER" # populated by release workflow on first tag push
    end
    on_intel do
      url "https://github.com/ottogiron/compas/releases/download/v#{version}/compas-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER" # populated by release workflow on first tag push
    end
  end

  # Archive must contain the `compas` binary at the top level (no subdirectory).
  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
    system "#{bin}/compas", "--help"
  end
end
