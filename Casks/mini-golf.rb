cask "mini-golf" do
  version "0.8.2"
  sha256 "78993af9a1999b79ac9dcb348fe57fbe1d191e716edeaf4884dcf1c3a83966b7"

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
