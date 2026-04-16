cask "superhq" do
  version "0.3.6"
  sha256 "cfe6528c484e5c6f1a94fbec056b99ee09f4164a0ccdde9176dc37651f6bfeac"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
