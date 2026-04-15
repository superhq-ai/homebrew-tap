cask "superhq" do
  version "0.3.5"
  sha256 "bfb53fbf53f373427702e07a38c9527671f3632011510044f7193f0c2ef257a3"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
