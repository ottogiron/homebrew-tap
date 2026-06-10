class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.10.0/compas-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "4c9b191d8d94a747e9d6495d9f739d2f5382fe0ff8f2f044a35d2bca93813846"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.10.0/compas-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "7531435b28a19bf58cdc5dc0b95b8b342b52dd55748c1c207897376a356aa57d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.10.0/compas-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "271f1913e42a944117a95fbb7f1e3fb5e89822780189cbd9469927383e5bb7fb"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.10.0/compas-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b7646962f2dd439d08911d87c619157a2d3878c5dc3201f27d149da2488a1e8"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
