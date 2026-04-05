class Shuru < Formula
  desc "Local-first microVM sandbox for AI agents"
  homepage "https://github.com/superhq-ai/shuru"
  version "0.5.5"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/shuru/releases/download/v#{version}/shuru-v#{version}-darwin-aarch64.tar.gz"
      sha256 "5541c5ef39a9f7d6a2846dfc4ddd6f97baf64f96cba8edad058ef836d5125b26"
    end
  end

  def install
    bin.install "shuru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shuru --version")
  end
end
