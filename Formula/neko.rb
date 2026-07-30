class Neko < Formula
  desc "Expose a sandbox port to the web in one command"
  homepage "https://github.com/superhq-ai/neko-computer"
  version "0.2.0"

  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-darwin-aarch64.tar.gz"
      sha256 "8be6405a37e5e6ea36ac841d4ccc9510e5de830ba1038466976dbd314745992d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-linux-aarch64.tar.gz"
      sha256 "ada34055173dca135ac330122cc7f5d96b9df27eb6df70cef48ce353f0648edb"
    end
  end

  def install
    bin.install "neko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neko --version")
  end
end
