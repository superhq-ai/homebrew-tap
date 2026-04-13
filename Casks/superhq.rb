cask "superhq" do
  version "0.2.9"
  sha256 "4a65486fd7f073e629c59cdb1ac3db413d1d21ab716563541c7a503c56d12b8c"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
