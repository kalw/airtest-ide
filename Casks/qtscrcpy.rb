cask 'qtscrcpy' do
    version 'v1.4.5'
    sha256 'a4971dad010306f7b5e5031de343d2b69fd005c6ee44654c3ea929fd1c6995b8'
    
    url "https://github.com/barry-ran/QtScrcpy/releases/download/#{version}/QtScrcpy-mac-x64-#{version}.dmg"
    name 'qtscrcpy'
    homepage 'https://github.com/barry-ran/QtScrcpy/'
  
    app 'QtScrcpy.app'
  end
