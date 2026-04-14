cask "superhq" do
  version "0.3.3"
  sha256 "256b15b481eb31af3adda1d0f6b57e6f5acca2537e083bdf80f25b23564c417f"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
