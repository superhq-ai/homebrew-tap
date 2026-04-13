cask "superhq" do
  version "0.2.8"
  sha256 "e80d076f99cca906399bb2cb522548f04c7b09c7627cf92f297bab8d1be945dc"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
