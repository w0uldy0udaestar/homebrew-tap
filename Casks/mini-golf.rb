cask "mini-golf" do
  version "0.8.5"
  sha256 "fc0ea9e62530a975c4ac884e3ca8b218aa9baf1227d88d7031855d3096390748"

  url "https://github.com/w0uldy0udaestar/mini-golf/releases/download/v#{version}/MiniGolf-#{version}.zip"
  name "MiniGolf"
  desc "Side-view mini golf overlay that plays across the bottom of your desktop"
  homepage "https://github.com/w0uldy0udaestar/mini-golf"

  depends_on macos: :ventura

  app "MiniGolf.app"

  caveats <<~EOS
    서명되지 않은 앱입니다. 첫 실행이 막히면:
      xattr -cr "#{appdir}/MiniGolf.app"
  EOS
end
