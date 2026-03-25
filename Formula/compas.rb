class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.3/compas-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "1bc881b5efcc1455c4422b5328ad774db61fcc21127ffed48ba518b69a5bf0e6"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.3/compas-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "2883e04c28657657285c4be90bb8c71c71edb69b32a23925727d944cb4a1c21a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.4.3/compas-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63858634d4b763bc473dcea5c4ea80feda07a93b052bfc715e2a9f49220af1eb"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.4.3/compas-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e2ba1e24b6efcf01b44e68663f73bff6dabf7c5ec7ab289b49e66f92e025309"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
