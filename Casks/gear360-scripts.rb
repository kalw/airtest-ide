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

    binary "gear360pano-master/gear360pano.sh", target: "gear360-jpg2pto"
    binary "gear360pano-master/gear360video.sh", target: "gear360-mp42pto"

    preflight do
            system_command '/usr/bin/sed',
            args: [
                      '-E',
                      '-i','.orig',
                      '-e', 's/readlink /greadlink /g',
                      "#{staged_path}/gear360pano-master/gear360pano.sh"
                  ]
            system_command '/usr/bin/sed',
            args: [
                      '-E',
                      '-i','.orig',
                      '-e', 's/readlink /greadlink /g',
                      "#{staged_path}/gear360pano-master/gear360video.sh"
                  ]
    end




  end
