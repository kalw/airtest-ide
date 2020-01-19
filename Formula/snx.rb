class Snx < Formula
  desc "Checkpoint SSL Network Extender command line client"
  homepage "https://checkpoint.com/"
  version "master"
  url "https://remote.fr.publicisgroupe.net/CSHELL/snx_install_osx.sh"
  sha256 "539574a0594590f280a6858e436072b8701188445973270c974d76c92e319369"

  bottle :unneeded
  
  patch :DATA

  def install
    prefix.install "snx_install_osx.sh"
    system "bash", "-x", "extract.sh"
    inreplace "#{prefix}/brew.installer.sh", /INSTALL_DIR=.*/, "INSTALL_DIR=#{prefix}"
    inreplace "#{prefix}/brew.installer.sh", "/etc/snx", "#{prefix}/etc/snx"
    inreplace "#{prefix}/brew.installer.sh", /TMP_DIR=.*/, "TMP_DIR=#{v}"
    system "bash", "-x", "#{prefix}/brew.installer.sh"
    bin.mkpath
    mv "#{opt_prefix}/snx", "#{bin}/snx"
  end

  test do
    system "script", "-q", "/dev/null", "/usr/local/bin/snx"
  end
end

__END__
diff --git a/extract.sh b/extract.sh
index e69de29..cb6a05f 100644
--- a/extract.sh
+++ b/extract.sh
@@ -0,0 +1,2 @@
+tail -n +64 HOMEBREW_PREFIX/snx_install_osx.sh | bunzip2 -c - > HOMEBREW_PREFIX/brew.installer.sh
+
