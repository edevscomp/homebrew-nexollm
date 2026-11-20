cask "nexollm" do
  version "0.9.3"
  sha256 "85fba0f7ad3585e769aff32bb095b8e8dcdb40273df38d97f0f16bd1bb72266f"

  url "https://github.com/edevscomp/NexoLLM/releases/download/v#{version}/NexoLLM-macos.dmg"
  name "NexoLLM"
  desc "On-device inline autocomplete and writing tools for every app"
  homepage "https://github.com/edevscomp/NexoLLM"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "NexoLLM.app"

  zap trash: [
    "~/Library/Application Support/NexoLLM",
    "~/Library/Caches/com.edevs.NexoLLM",
    "~/Library/HTTPStorages/com.edevs.NexoLLM",
    "~/Library/Logs/NexoLLM*.log",
    "~/Library/Preferences/com.edevs.NexoLLM.plist",
  ]

  caveats <<~EOS
    NexoLLM is not notarized yet, so the first launch is blocked by Gatekeeper:
    open System Settings › Privacy & Security and click "Open Anyway" once.
    Then grant Accessibility access when NexoLLM asks for it.
  EOS
end
