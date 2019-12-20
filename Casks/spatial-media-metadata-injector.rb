cask 'spatial-media-metadata-injector' do

    version "v2.1"
    url "https://github.com/google/spatial-media/releases/download/#{version}/360.Video.Metadata.Tool.mac.zip"
    sha256 :no_check

    name 'Spatial Media Metadata Injector'
    homepage "https://github.com/google/spatial-media"

    app "Spatial\ Media\ Metadata\ Injector.app"

  end
