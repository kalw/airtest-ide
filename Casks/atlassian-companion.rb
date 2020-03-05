cask 'atlassian-companion' do
    version 'latest'
    sha256 '105619763eb622c05d8a4c925f636534d786316040d4eb5490afb37d3484e294'
    
    url "https://update-nucleus.atlassian.com/Atlassian-Companion/291cb34fe2296e5fb82b83a04704c9b4/#{version}/darwin/x64/Atlassian%20Companion.dmg"
    name 'Atlassian Companion'
    homepage 'https://confluence.atlassian.com/doc/atlassian-companion-app-release-notes-958455712.html'
  
    app 'Atlassian Companion.app'
  end
