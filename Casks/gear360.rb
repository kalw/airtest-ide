cask 'gear360' do
    version '180817'
    sha256 '052bab2526667411e706207c3ce3e0d702c60fb00c2ba1822a64ef4eed96816a'
    
    url "http://downloadcenter.samsung.com/content/SW/201809/20180917135001161/Gear360Mac_#{version}.pkg"
    name 'Gear360'
    homepage 'https://www.samsung.com/us/support/owners/product/gear-360-2017'
  
    pkg "Gear360Mac_#{version}.pkg", allow_untrusted: true
    
  end
