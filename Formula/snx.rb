class Snx < Formula
  desc "Checkpoint SSL Network Extender command line client"
  homepage "https://checkpoint.com/"
  version "master"
  url "https://remote.fr.publicisgroupe.net/CSHELL/snx_install_osx.sh"
  sha256 "539574a0594590f280a6858e436072b8701188445973270c974d76c92e319369"

  bottle :unneeded
  
  patch p0: "diff --git a/extract.sh b/extract.sh
    index e69de29..cb6a05f 100644
    --- a/extract.sh
    +++ b/extract.sh
    @@ -0,0 +1,2 @@
    +tail -n +64 #{prefix}/snx_install_osx.sh | bunzip2 -c - > #{prefix}/brew.installer.sh
    +"

  def install
    prefix.install "snx_install_osx.sh"
    system "bash", "-x", "extract.sh"
    inreplace "#{prefix}/brew.installer.sh" do |s|
      s.gsub! /INSTALL_DIR=.*/, "INSTALL_DIR=#{prefix}"
      s.gsub! "/etc/snx", "#{prefix}/etc/snx"
      s.gsub! /TMP_DIR=.*/ "TMP_DIR=#{prefix}"
    end
    system "bash", "-x", "#{prefix}/brew.installer.sh"
    bin.mkpath
    mv "#{prefix}/snx", "#{bin}/snx"
  end

  test do
    system "script", "-q", "/dev/null", "/usr/local/bin/snx"
  end
end

