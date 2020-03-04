cask 'atlassian-companion' do
    version 'latest'
    sha256 '0c7301b54cfddaf3cf57afa57fa94f163795af347c0b080e1a999a454ea63874'
    
    url "https://update-nucleus.atlassian.com/Atlassian-Companion/291cb34fe2296e5fb82b83a04704c9b4/#{version}/darwin/x64/Atlassian%20Companion.dmg"
    name 'Brainio'
    homepage 'https://confluence.atlassian.com/doc/atlassian-companion-app-release-notes-958455712.html'
  
    app 'Atlassian Companion.app'
  end
