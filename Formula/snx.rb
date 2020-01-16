class Snx < Formula
  desc "Checkpoint SSL Network Extender command line client"
  homepage "https://checkpoint.com/"
  version "master"
  url "https://remote.fr.publicisgroupe.net/CSHELL/snx_install_osx.sh"
  sha256 "539574a0594590f280a6858e436072b8701188445973270c974d76c92e319369"

  bottle :unneeded

  def install
    prefix.install "snx_install_osx.sh"
    system "bash", "-x", "#{prefix}/snx_install_osx.sh"
  end

  test do
    system "script", "-q", "/dev/null", bin/"notify-send"
  end
end
