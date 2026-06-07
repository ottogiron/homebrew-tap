class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.9.0/compas-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "d6af89cee3b656c907dba8630470d153e91fa475cf70906d68f1ec8f0ba4f793"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.9.0/compas-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "522bb3bd8a629c392ccbe689686abae188e19feeda99ed8da189e245d744393c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.9.0/compas-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a54d4c188624d970094d0ed6cc0854dc1ada9fe72a6172f74b6337ebeb47d814"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.9.0/compas-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "814d59c7b451805db0b7ff760379477af9653d102045fcf192a764dbc5698bc9"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
