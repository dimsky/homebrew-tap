cask "agentisland" do
  version "0.0.21"
  sha256 "3444966c420500447318924bc4d6cedc907b7922fe9c3f58e81c4d1d15b8241b"

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
