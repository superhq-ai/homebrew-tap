cask "superhq" do
  version "0.4.1"
  sha256 "051b711f05fdf1a10c40158cfa1a08b4ea8f4c073c0e1b6bf9b10b125262662a"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
