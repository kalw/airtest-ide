cask 'brainio' do
    version '0.0.1-beta.27'
    sha256 '0c7301b54cfddaf3cf57afa57fa94f163795af347c0b080e1a999a454ea63874'
    
    url "https://cdn.brainio.com/Brainio-#{version}.dmg"
    name 'Brainio'
    homepage 'https://brainio.com/'
  
    app 'Brainio.app'
  end
