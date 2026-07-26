class Neko < Formula
  desc "Expose a sandbox port to the web in one command"
  homepage "https://github.com/superhq-ai/neko-computer"
  version "0.1.5"

  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-darwin-aarch64.tar.gz"
      sha256 "2c4262b50404fda3f66ca0c51be41bb4bd14e2efb34677d59d55ae8ae4a0ef72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-linux-aarch64.tar.gz"
      sha256 "dd94f63063664a42582c73616567f04024dd368b8ab3fe8b598948c565cb0472"
    end
  end

  def install
    bin.install "neko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neko --version")
  end
end
