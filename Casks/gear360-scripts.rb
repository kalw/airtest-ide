cask 'gear360-scripts' do
        
    url "https://github.com/ultramango/gear360pano/archive/master.zip"
    sha256 :no_check
    name 'Gear360 Scripts'
    homepage "https://github.com/ultramango/gear360pano"
    
    depends_on formula: "bash"
    depends_on formula: "ffmpeg"
    depends_on formula: "multiblend"
    depends_on formula: "parallel"
    depends_on cask: "hugin"
  
    
    
  end
