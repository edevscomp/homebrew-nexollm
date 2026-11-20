# NexoLLM for Homebrew

Inline autocomplete, writing tools and instant answers for every app, 100% on-device.
App and source: [edevscomp/NexoLLM](https://github.com/edevscomp/NexoLLM)

```sh
brew install --cask edevscomp/nexollm/nexollm     # install
open -a NexoLLM                                    # open
brew upgrade --cask edevscomp/nexollm/nexollm     # update
brew uninstall --cask edevscomp/nexollm/nexollm   # remove the app
brew uninstall --zap --cask edevscomp/nexollm/nexollm   # remove the app and all local data
```

NexoLLM is not notarized yet: on first launch open **System Settings → Privacy & Security** and click
**Open Anyway** once. Every release is also signed with NexoLLM's own Ed25519 key — see
[SECURITY.md](https://github.com/edevscomp/NexoLLM/blob/main/SECURITY.md).

The cask is updated automatically by NexoLLM's release script.
