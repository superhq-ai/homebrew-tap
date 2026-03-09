class Shuru < Formula
  desc "Local-first microVM sandbox for AI agents"
  homepage "https://github.com/superhq-ai/shuru"
  version "0.3.1"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/shuru/releases/download/v#{version}/shuru-v#{version}-darwin-aarch64.tar.gz"
      sha256 "d5a2610e94508b72a41827b1cc6bcb7ec33e6fb73aa43caea2d6a98c45ad056a"
    end
  end

  def install
    bin.install "shuru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shuru --version")
  end
end
