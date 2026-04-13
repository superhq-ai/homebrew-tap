cask "superhq" do
  version "0.3.0"
  sha256 "bb56aaf667ae5ab3cbdef612d757acd603113aa3e4cf48771b0ba3df658d42a2"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SuperHQ.app"
end
