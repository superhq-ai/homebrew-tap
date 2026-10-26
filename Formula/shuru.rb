class Shuru < Formula
  desc "Local-first microVM sandbox for AI agents"
  homepage "https://github.com/superhq-ai/shuru"
  version "0.9.2"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/shuru/releases/download/v#{version}/shuru-v#{version}-darwin-aarch64.tar.gz"
      sha256 "3adf6166dfd6661421117f047159541d520d955fd840d9d836b90aa1715e0d66"
    end
  end

  def install
    bin.install "shuru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shuru --version")
  end
end
