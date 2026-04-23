cask "superhq" do
  version "0.4.3"
  sha256 "a6f36d43fdac602e5622048c9cfadabf1d4790437a41e5c0aaa486c28aa5ae9d"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
