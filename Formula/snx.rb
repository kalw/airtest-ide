class Snx < Formula
  desc "Checkpoint SSL Network Extender command line client"
  homepage "https://checkpoint.com/"
  version "master"
  url "https://vpnportal.aktifbank.com.tr/SNX/INSTALL/snx_install.sh"
  sha256 "8900c3708c1bb695ed9c9e2892544359ec93f38b668af318d585e3ca7efac6a2"  
  
  def install
    extract_file = "extract.sh"
    prefix.install "snx_install_osx.sh"
    (prefix/extract_file).write <<~EOS
      tail -n +64 #{prefix}/snx_install_osx.sh | bunzip2 -c - > #{prefix}/brew.installer.tgz
      tar -zxvf #{prefix}/brew.installer.tgz -C #{prefix}/
    EOS
    system "bash", "-x", prefix/extract_file
    inreplace "#{prefix}/installer.sh", /INSTALL_DIR=.*/, "INSTALL_DIR=#{prefix}"
    inreplace "#{prefix}/installer.sh", "/etc/snx", "#{prefix}/etc/snx"
    inreplace "#{prefix}/installer.sh", /TMP_DIR=.*/, "TMP_DIR=#{prefix}"
    system "bash", "-x", "#{prefix}/installer.sh"
    bin.mkpath
    etc.mkpath
    mv "#{prefix}/snx", "#{bin}/snx"
    mv "#{prefix}/etc/snx", "#{etc}/snx"
  end

  test do
    system "script", "-q", "/dev/null", "/usr/local/bin/snx"
  end
end
