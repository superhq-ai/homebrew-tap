cask "superhq" do
  version "0.3.4"
  sha256 "00008375cd565f173de6b69b4809ba2d2acf5634cbdeb44a8b4d5c28d5b717d1"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
