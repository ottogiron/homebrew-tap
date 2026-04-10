class Compas < Formula
  desc "Multi-agent orchestrator for AI-assisted software development"
  homepage "https://github.com/ottogiron/compas"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.6.0/compas-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "0abaf2353b37a9bbd47c0d6010be4fb51d2d2971630539c8d33d8922663ca6a7"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.6.0/compas-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "b86d0e8f670f38f49ad558561c8b4ddf151f5cd664640bd5886c0d9f1dee76d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ottogiron/compas/releases/download/v0.6.0/compas-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99a12b36326694fc0cfe691213bd80f243f2a1c09312b468364cff2e93a724ff"
    else
      url "https://github.com/ottogiron/compas/releases/download/v0.6.0/compas-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "177239d4ab13f94c06cf7850a24b17dd53a7b5db629cc526ae499f9635203ea2"
    end
  end

  def install
    bin.install "compas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compas --version")
  end
end
