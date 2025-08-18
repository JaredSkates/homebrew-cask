cask "lynx-explorer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "ARM_SHA256_HERE",
         intel: "INTEL_SHA256_HERE"

  url "https://example.com/releases/LynxExplorer-#{arch}.app.tar.gz",
      verified: "example.com/"

  name "Lynx Explorer"
  desc "File explorer that does Lynx-y things"
  homepage "https://example.com/lynx-explorer"

  # Assuming the tarball unpacks a top-level "LynxExplorer.app"
  app "LynxExplorer.app"
end