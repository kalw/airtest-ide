cask 'cypress-desktop' do

    version "4.2.0"
    url "https://cdn.cypress.io/desktop/#{version}/darwin-x64/cypress.zip"
    sha256 '943e6232b01b9cb07a8c67752002e861958eda841eccd50d62123cb791b8d8fa'
    name 'Cypress desktop'
    homepage "https://www.cypress.io/"

    app "Cypress.app"

  end
