cask 'kde-connect' do
    version '1.4-198'
    sha256 'cb4c987a2db0f9f4b901abdc1ed2d36116a5e8d797b498b073db7a1525d6cc0a'
    
    url "https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-#{version}-macos-64-clang.dmg"
    name 'KDE Connect'
    homepage 'https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/'
  
    app 'kdeconnect-indicator.app'
  end
