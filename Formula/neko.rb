class Neko < Formula
  desc "Expose a sandbox port to the web in one command"
  homepage "https://github.com/superhq-ai/neko-computer"
  version "0.1.7"

  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-darwin-aarch64.tar.gz"
      sha256 "3fffc99986c5312555a45805b7c988f0407d9f976849869c5b14bb9c8302ef38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/superhq-ai/neko-computer/releases/download/v#{version}/neko-v#{version}-linux-aarch64.tar.gz"
      sha256 "a0a5601b7abf445889c6ca9d798e226435ba7c422f2cbbbc44352fe25ca8863a"
    end
  end

  def install
    bin.install "neko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neko --version")
  end
end
