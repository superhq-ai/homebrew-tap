cask "superhq" do
  version "0.2.2"
  sha256 "e7b6523f3efa76881820ef5142a9ef3120b61aa9287c8c2decc8de3649b15027"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
