class Shuru < Formula
  desc "Local-first microVM sandbox for AI agents"
  homepage "https://github.com/superhq-ai/shuru"
  version "0.11.0"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/shuru/releases/download/v#{version}/shuru-v#{version}-darwin-aarch64.tar.gz"
      sha256 "e1fbd0901e76cd932881630a794e6aaf506e6703acb3e3bd4377f725f2135690"
    end
  end

  def install
    bin.install "shuru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shuru --version")
  end
end
