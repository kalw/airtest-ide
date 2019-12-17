cask 'brainio' do
    version '0.0.1-beta.27'
    sha256 '557fa2367d27d295d8c6d6941e07de38bff72804edf154c55b1bf42aa36a1856'
    
    url "https://cdn.brainio.com/Brainio-{{version}}.dmg"
    name 'Brainio'
    homepage 'https://brainio.com/'
  
    app 'Brainio.app'
  end
