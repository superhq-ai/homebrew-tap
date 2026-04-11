cask "superhq" do
  version "0.2.5"
  sha256 "6c53cce0e86801213fd5cc9b98bcf78c3ff51cbd0b06d3deb28305911591ed58"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
