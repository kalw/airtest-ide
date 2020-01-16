class Snx < Formula
  desc "Checkpoint SSL Network Extender command line client"
  homepage "https://checkpoint.com/"
  version "master"
  url "https://remote.fr.publicisgroupe.net/CSHELL/snx_install_osx.sh"
  sha256 "75f7013a538aa70493e9aa105a846a596f9425df0d2305bde65be6a98dfcb267"

  bottle :unneeded

  def install
    prefix.install "snx_install_osx.sh"
    system "bash", "-x", "#{prefix}/snx_install_osx.sh"
  end

  test do
    system "script", "-q", "/dev/null", bin/"notify-send"
  end
end
