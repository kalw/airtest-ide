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
+
"

  def install
    prefix.install "snx_install_osx.sh"
    system "tail", "-n", "+64", "#{prefix}/snx_install_osx.sh", "|", "bunzip2", "-c", "-", ">", "#{prefix}/brew.installer.sh"
    system "sed", "-e", "'s!INSTALL_DIR=.*!INSTALL_DIR=#{prefix}!'", "installer.sh", ">", "#{prefix}/brew.installer.sh"
    system "sed", "-e", "'s!/etc/snx!#{prefix}/etc/snx!g'", "installer.sh", ">", "#{prefix}/brew.installer.sh"
    system "sed", "-e", "'s!TMP_DIR=.*!TMP_DIR=#{prefix}!'", "installer.sh", ">", "#{prefix}/brew.installer.sh"
    system "bash", "-x", "#{prefix}/brew.installer.sh"
    bin.mkpath
    mv "#{prefix}/snx", "#{bin}/snx"
  end

  test do
    system "script", "-q", "/dev/null", "/usr/local/bin/snx"
  end
end

