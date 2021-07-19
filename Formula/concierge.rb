class Concierge < Formula
  desc "lambdatest hypertest command line utility"
  homepage "https://github.com/fgrehm/vagrant-notify/"
  version "v0.0.1"
  url "https://downloads.lambdatest.com/concierge/darwin/concierge"
  sha256 "4358831b7a5af09d80e7f3588ac7ad75c918ba66dcfd9cd463477cd44d78c23a"

  bottle :unneeded

  def install
    bin.mkpath
    prefix.install "concierge"
    mv "#{prefix}/concierge", "#{bin}/concierge"
  end

  test do
    system "script", "-q", "/dev/null", bin/"concierge"
  end
end
