cask 'remarkable' do
    version '2.3.1-126-a3a0129fd'
    sha256 'd16c8e2d6e388cf0f65706e4fff5ef93fa829ba74daae79c5bfe33b9af13aacf'
    
    url "https://downloads.remarkable.com/desktop/production/mac/reMarkable-#{version}.dmg"
    name 'reMarkable Desktop app'
    homepage 'https://support.remarkable.com/hc/en-us/articles/360002665378-Desktop-app'
  
    app 'reMarkable.app'
  end
