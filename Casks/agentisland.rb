cask "agentisland" do
  version "0.0.13"
  sha256 "88436924e79a2c530007ba9900a469d800123e024c9d632622ae2ab3652242c1"

  url "https://github.com/dimsky/agent-island-dist/releases/download/v#{version}/AgentIsland.dmg",
      verified: "github.com/dimsky/agent-island-dist/"
  name "Agent Island"
  desc "Notch companion for AI coding agents"
  homepage "https://island.dimsky.cn/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Agent Island.app"

  zap trash: [
    "~/Library/Application Support/agent-island",
    "~/Library/Application Support/AgentIsland",
    "~/Library/Caches/app.agentisland.AgentIsland",
    "~/Library/HTTPStorages/app.agentisland.AgentIsland",
    "~/Library/Preferences/app.agentisland.AgentIsland.plist",
  ]
end
