cask "superhq" do
  version "0.3.1"
  sha256 "8e7ee6b4f30f92346107a7cb1d9bd737e94e3d93344160aed322302489071e9a"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
