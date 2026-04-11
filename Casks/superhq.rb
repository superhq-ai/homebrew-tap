cask "superhq" do
  version "0.2.1"
  sha256 "3f5225a178b7880bd49405072a3515ff8196c7b40dc12136738a6d863b607762"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
