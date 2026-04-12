cask "superhq" do
  version "0.2.7"
  sha256 "bfdd07b04596d46cc26e4f1d65306c5cf2c0b4ad1df18d97d28ef2ee402731f7"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
