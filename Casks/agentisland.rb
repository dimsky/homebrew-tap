cask "agentisland" do
  version "0.0.22"
  sha256 "9cb048bd2ea72bbd453c48491221d0ea0700d10f5d181eddf69711c66f5e1d65"

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
