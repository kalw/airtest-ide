cask 'kde-connect' do
    version '1.4-180'
    sha256 '007c7aef5ac2c5f5dd91ecaaff227af9cbe3a2f0619dafe2a10b326a3c17ef17'
    
    url "https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-#{version}-macos-64-clang.dmg"
    name 'KDE Connect'
    homepage 'https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/'
  
    app 'kdeconnect-indicator.app'
  end
