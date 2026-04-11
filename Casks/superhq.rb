cask "superhq" do
  version "0.2.3"
  sha256 "9ec7a74607cdcd36f6cb358c2296aab4cd84aa1bd8b958697668d22b741ea2a2"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
