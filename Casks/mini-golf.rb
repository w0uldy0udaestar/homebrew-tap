cask "mini-golf" do
  version "0.8.0"
  sha256 "936eb7129d33891e5ff92d28f723422b30f9fb92d2f68eea7a6d1418fb1f9c3d"

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
