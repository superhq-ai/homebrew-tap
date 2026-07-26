class Neko < Formula
  desc "Expose a sandbox port to the web in one command"
  homepage "https://github.com/superhq-ai/neko-computer"
  version "0.1.4"

  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-darwin-aarch64.tar.gz"
      sha256 "10395835ca2e67a181713bca8e8c32e0c1f82bcd7d99539517250dc9656f3950"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-linux-aarch64.tar.gz"
      sha256 "af42489963cdfcd4a998d84b168eb899aaf719353a6f5a2f7a0c720c3cfe149f"
    end
  end

  def install
    bin.install "neko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neko --version")
  end
end
