cask "mini-golf" do
  version "0.4.0"
  sha256 "4523c3ce8668c584e46c51dbcf984559d6c38fc5234b6548d1c2ea04ae3d2768"

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
