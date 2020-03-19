cask 'cypress-desktop' do

    version "4.2.0"
    url "https://cdn.cypress.io/desktop/#{version}/darwin-x64/cypress.zip"
    sha256 'c8de85acfaa247b03d419244f10c42e00c71265956d0762528778f27009abbd9'
    name 'Cypress desktop'
    homepage "https://www.cypress.io/"

    app "Cypress.app"

  end
