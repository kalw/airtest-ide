cask 'kde-connect' do
    version '21.08.2-741'
    sha256 '32a66878050f8e4f3eadcaa462ca2f40cf677b3a9c555d90d9fcdb4b17a73d6b'
    
    url "https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-#{version}-macos-64-clang.dmg"
    name 'KDE Connect'
    homepage 'https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/'
  
    app 'kdeconnect-indicator.app'
  end
