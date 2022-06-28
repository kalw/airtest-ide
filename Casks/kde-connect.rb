cask 'kde-connect' do
    version '22.04.2-988'
    sha256 '8f9cd0bec10a481d7686a35e9c340f1de78bea93472c8c062c2bed02341212cd'
    
    url "https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-#{version}-macos-64-clang.dmg"
    name 'KDE Connect'
    homepage 'https://binary-factory.kde.org/view/MacOS/job/kdeconnect-kde_Release_macos/'
  
    app 'kdeconnect-indicator.app'
  end
