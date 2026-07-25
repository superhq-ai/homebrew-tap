cask "superhq" do
  version "0.4.4"
  sha256 "4e672db7bd0bcc9723f134ecfe635a07303bd17d669d8b35dd7344e593b42a75"

  url "https://github.com/superhq-ai/superhq/releases/download/v#{version}/SuperHQ-#{version}.dmg"
  name "SuperHQ"
  desc "AI agent orchestration desktop app"
  homepage "https://github.com/superhq-ai/superhq"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "SuperHQ.app"
end
