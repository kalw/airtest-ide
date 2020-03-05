cask 'kde-connect' do
    version '1.4-146'
    sha256 '105619763eb622c05d8a4c925f636534d786316040d4eb5490afb37d3484e294'
    
    url "https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-#{version}-macos-64-clang.dmg"
    name 'KDE Connect'
    homepage 'https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/'
  
    app 'kdeconnect-indicator.app'
  end
