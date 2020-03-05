cask 'kde-connect' do
    version '1.4-146'
    sha256 'bca89a61a53acb5743ca2a44ef0590eccea57c36bfcea3cda6c87a35a873f99d'
    
    url "https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-#{version}-macos-64-clang.dmg"
    name 'KDE Connect'
    homepage 'https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/'
  
    app 'kdeconnect-indicator.app'
  end
