cask 'kde-connect' do
    version '1058'
    sha256 '10f386f6304c8a265a0e1edb7f9452e7a144f78d24cfc1391dac37d57e0e986c'
    
    url "https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-#{version}-macos-64-clang.dmg"
    name 'KDE Connect'
    homepage 'https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/'
  
    app 'kdeconnect-indicator.app'
  end
