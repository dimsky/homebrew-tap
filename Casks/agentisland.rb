cask "agentisland" do
  version "0.0.11"
  sha256 "a5e81471fd0171aefda0845e8a1ffbede229ba1178e352b5f20fb9fcc7c05530"

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
