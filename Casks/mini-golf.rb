cask "mini-golf" do
  version "0.1.1"
  sha256 "a2c51c44edd07818ff7f8e920a516cd945a6e860bfa1d5247e1dc287ffb94396"

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
