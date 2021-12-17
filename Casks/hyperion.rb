cask 'hyperion' do
    version '2.0.12'
    sha256 'd16c8e2d6e388cf0f65706e4fff5ef93fa829ba74daae79c5bfe33b9af13aacf'
    
    url "https://github.com/hyperion-project/hyperion.ng/releases/download/#{version}/Hyperion-#{version}-macOS-x86_64.dmg"
    name 'Hyperion Desktop app'
    homepage 'https://github.com/hyperion-project/hyperion.ng'
  
    app 'Hyperion.app'
  end
