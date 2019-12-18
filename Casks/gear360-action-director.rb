cask 'gear360-action-director' do
    version '0427'
    sha256 '0c7301b54cfddaf3cf57afa57fa94f163795af347c0b080e1a999a454ea63874'
    
    url "http://downloadcenter.samsung.com/content/SW/201704/20170428223105773/Gear360Mac_#{version}_signed.pkg"
    name 'Gear360-Action-Director'
    homepage 'https://www.samsung.com/us/support/owners/product/gear-360-2017'
  
    pkg 'Gear360Mac_#{version}_signed.pkg', allow_untrusted: true
    
  end
