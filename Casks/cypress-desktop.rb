cask 'cypress-desktop' do

    version "5.4.0"
    url "https://cdn.cypress.io/desktop/#{version}/darwin-x64/cypress.zip"
    sha256 'a36c61edbb1eb1fa529071ea9f2ccd32bb35722ff4f8cd3d0516ad582ae53f58'
    name 'Cypress desktop'
    homepage "https://www.cypress.io/"

    app "Cypress.app"

  end
