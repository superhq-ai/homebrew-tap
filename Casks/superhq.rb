cask "superhq" do
  version "0.2.4"
  sha256 "735a847916df0ab89f3dd4d137b3fe1d858e71b0fc7fc1f82ae10f21823f4ca5"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
