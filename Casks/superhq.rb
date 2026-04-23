cask "superhq" do
  version "0.4.2"
  sha256 "e1fdb3c806a3c600e3ba3590f9542d8bf2baedc775ad4d7ee317590bc00815e7"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
