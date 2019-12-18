cask 'gear360' do
    version '180817'
    sha256 '0c7301b54cfddaf3cf57afa57fa94f163795af347c0b080e1a999a454ea63874'
    
    url "http://downloadcenter.samsung.com/content/SW/201809/20180917135001161/Gear360Mac_#{version}.pkg"
    name 'Gear360'
    homepage 'https://www.samsung.com/us/support/owners/product/gear-360-2017'
  
    pkg 'Gear360Mac_#{version}.pkg', allow_untrusted: true
    
  end
