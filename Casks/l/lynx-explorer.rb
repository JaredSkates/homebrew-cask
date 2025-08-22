cask "lynx-explorer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.1"
  sha256 arm:   "ebc84cfaabe7e8da40e08b9af248caf8388d50440008319074481fc0e3aa45ba",
         intel: "3e0bef6cbe1e0877fd90e3bc2d648761458197878be7274de52141663496aa22"

  url "https://github.com/lynx-family/lynx/releases/download/#{version}/LynxExplorer-#{arch}.app.tar.gz",
      verified: "github.com/lynx-family/lynx/"

  name "LynxExplorer"
  desc "Empower the Web community and invite more to build across platforms."
  homepage "https://lynxjs.org"

  # The .tar.gz contains LynxExplorer-<arch>.app.tar, which contains LynxExplorer.app
  container nested: "LynxExplorer-#{arch}.app.tar"

  app "LynxExplorer.app"

  zap trash: [
    "~/Library/Application Support/LynxExplorer",
    "~/Library/Preferences/org.lynxjs.LynxExplorer.plist",
    "~/Library/Saved Application State/org.lynxjs.LynxExplorer.savedState",
    "~/Library/Caches/org.lynxjs.LynxExplorer",
  ]
end