cask "superhq" do
  version "0.2.0"
  sha256 "ec17f9b58608481878b307b56b62b52e93e77dcd070ecbd3ae8ffe93ecca4c39"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
