cask 'simul-ide' do

    version "1.0.0"
    url "https://mailfence.com/pub/docs/santigoro/web/SimulIDE_#{version}/SimulIDE_#{version}-SR0_MacOs.zip"
    sha256 'e06c7bc2c6e08950eee1245e3b7544d3867deda54916b9735315ee52c336dbf8'
    name 'Simul IDE'
    homepage "https://www.simulide.com/"

    container :nested => "SimulIDE_#{version}-SR0_MacOs"
    app "simulide.app"

  end
