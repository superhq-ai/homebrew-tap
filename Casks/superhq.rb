cask "superhq" do
  version "0.3.2"
  sha256 "6eab6dd84d231c46436c59744079ea5b714c689a8228cab3e2767d69425da16a"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
