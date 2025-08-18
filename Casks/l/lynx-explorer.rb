cask "lynx-explorer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "ebc84cfaabe7e8da40e08b9af248caf8388d50440008319074481fc0e3aa45ba",
         intel: "3e0bef6cbe1e0877fd90e3bc2d648761458197878be7274de52141663496aa22"

  url "https://example.com/releases/LynxExplorer-#{arch}.app.tar.gz",
  

  name "Lynx Explorer"
  desc "Empower the Web community and invite more to build across platforms."
  homepage "https://lynxjs.org"

  # Assuming the tarball unpacks a top-level "LynxExplorer.app"
  app "LynxExplorer.app"
end