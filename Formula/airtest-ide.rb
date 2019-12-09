cask 'airtest-ide' do
    version '1.2.2'
    sha256 'bafa8cb37992fdd727809f360c7d93651c76ea24bca529ef7ec0d60b6dbe61a6'
    
    url "https://airtestproject.s3.netease.com/downloads/AirtestIDE/AirtestIDE_2019-09-10_py3_Mac10-12.dmg"
    name 'AirTest-IDE'
    homepage 'http://airtest.netease.com/'
  
    app 'AirTest-IDE.app'
  end
