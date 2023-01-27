cask 'kde-connect' do
    version '22.12.1-1199'
    sha256 '5bd19be269fd189bbbdb6ade97ce3b8057a708ae1492c1f67bd76484234e677e'
    
    url "https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-#{version}-macos-64-clang.dmg"
    name 'KDE Connect'
    homepage 'https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/'
  
    app 'kdeconnect-indicator.app'
  end
