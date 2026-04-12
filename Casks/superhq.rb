cask "superhq" do
  version "0.2.6"
  sha256 "3cfef12c2269ed82616719f737bb115c988f727fc53f7a221af5cc9817449468"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
