cask 'gear360-scripts' do
        
    version "master"
    url "https://github.com/ultramango/gear360pano/archive/#{version}.zip"
    sha256 :no_check
    
    name 'Gear360 Scripts'
    homepage "https://github.com/ultramango/gear360pano"
    
    depends_on formula: "bash"
    depends_on formula: "coreutils"
    depends_on formula: "ffmpeg"
    depends_on formula: "multiblend"
    depends_on formula: "parallel"
    depends_on cask: "hugin"
    
    preflight do
            system_command '/usr/bin/sed',
            args: [
                      '-E',
                      '-i', '.gear360pano-master/gear360pano.sh.orig',
                      '-e', 's/readlink /greadlink /g',
                      'gear360pano-master/gear360pano.sh'
                  ]
    end
    
    binary "gear360pano-master/gear360pano.sh", target: "gear360-jpg2pto"
    binary "gear360pano-master/gear360video.sh", target: "gear360-mp42pto"
  
    
    
  end
