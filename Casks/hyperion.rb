cask 'hyperion' do
    version '2.0.12'
    sha256 '2a84dd8d0815a9ed0a7804536e517352ed9fc4632e2cc4c9aeb059636515c6c6'
    
    url "https://github.com/hyperion-project/hyperion.ng/releases/download/#{version}/Hyperion-#{version}-macOS-x86_64.dmg"
    name 'Hyperion Desktop app'
    homepage 'https://github.com/hyperion-project/hyperion.ng'
  
    app 'Hyperion.app'
  end
