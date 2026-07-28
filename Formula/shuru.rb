class Shuru < Formula
  desc "Local-first microVM sandbox for AI agents"
  homepage "https://github.com/superhq-ai/shuru"
  version "0.6.5"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/shuru/releases/download/v#{version}/shuru-v#{version}-darwin-aarch64.tar.gz"
      sha256 "fee960cb3c158549fd23465e5f3dea39d80383d4bd722c9e0141916a98b36dcf"
    end
  end

  def install
    bin.install "shuru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shuru --version")
  end
end
