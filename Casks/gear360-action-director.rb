cask 'gear360-action-director' do
    version '0427'
    sha256 'cc40405c8eecb4c3de768894331967d165c7b3855ce227489541849c59dab6ac'
    
    url "http://downloadcenter.samsung.com/content/SW/201704/20170428223105773/Gear360Mac_#{version}_signed.pkg"
    name 'Gear360-Action-Director'
    homepage 'https://www.samsung.com/us/support/owners/product/gear-360-2017'
  
    pkg 'Gear360Mac_#{version}_signed.pkg', allow_untrusted: true
    
  end
