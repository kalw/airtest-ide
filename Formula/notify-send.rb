class NotifySend < Formula
  desc "applescript notify-send ruby wrapper script"
  homepage "https://github.com/fgrehm/vagrant-notify/"
  version "master"
  url "https://raw.githubusercontent.com/fgrehm/vagrant-notify/#{version}/examples/osx/applescript/notify-send.rb"
  sha256 :nocheck

  bottle :unneeded

  def install
    bin.mkpath
    prefix.install "notify-send.rb"
    mv "#{prefix}/notify-send.rb", "#{bin}/notify-send"
  end

  test do
    system "script", "-q", "/dev/null", bin/"notify-send"
  end
end
