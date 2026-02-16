cask "context-grabber" do
  version "0.1.0"
  sha256 "48ff7c0e92c7ddf8c99e7b893d5a75077b8fdfb75cdaa44b526d5ece4ed57ea1"

  url "https://github.com/anthonylu23/context_grabber/releases/download/v#{version}/context-grabber-macos-#{version}.pkg"
  name "Context Grabber"
  desc "Capture browser tabs and desktop apps into structured markdown for LLM workflows"
  homepage "https://github.com/anthonylu23/context_grabber"

  depends_on macos: ">= :sonoma"

  pkg "context-grabber-macos-#{version}.pkg"

  uninstall delete:  [
              "/Applications/ContextGrabber.app",
              "/usr/local/bin/cgrab",
            ],
            pkgutil: [
              "com.contextgrabber.app",
              "com.contextgrabber.cli",
            ]

  zap trash: [
    "~/.contextgrabber",
    "~/contextgrabber",
  ]
end
