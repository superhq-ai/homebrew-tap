class Neko < Formula
  desc "Expose a sandbox port to the web in one command"
  homepage "https://github.com/superhq-ai/neko-computer"
  version "0.1.3"

  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-darwin-aarch64.tar.gz"
      sha256 "32d6471e439f4b3d2a90c2cd41e4d853d3e9198a85d5661d0219039e53ecefe2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-linux-aarch64.tar.gz"
      sha256 "5f8b9ea316b9d6a21bd87016e51ee898a6265ccf48ee2a4cc2364f88839576d2"
    end
  end

  def install
    bin.install "neko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neko --version")
  end
end
