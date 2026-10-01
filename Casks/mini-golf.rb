cask "mini-golf" do
  version "0.8.9"
  sha256 "5c84746abd75518a24dd56b3a2064f825da0fbf52f978e96112cf10c95d70b41"

  url "https://github.com/w0uldy0udaestar/mini-golf/releases/download/v#{version}/MiniGolf-#{version}.zip"
  name "MiniGolf"
  desc "Side-view mini golf overlay that plays across the bottom of your desktop"
  homepage "https://github.com/w0uldy0udaestar/mini-golf"

  depends_on macos: :ventura

  app "MiniGolf.app"

  caveats <<~EOS
    서명되지 않은 앱입니다. 첫 실행이 막히면:
      xattr -dr com.apple.quarantine "#{appdir}/MiniGolf.app"
  EOS
end
