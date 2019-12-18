class Multiblend < Formula
  desc "multiblend is a multi-level image blender for the seamless blending of panoramic images, such as those created with PTAssembler (my personal favourite), Hugin, or PTGui. It is a significantly faster drop-in alternative to Enblend, although it lacks Enblend's advanced features."
  homepage "http://horman.net/multiblend/"
  version "0.6.2"
  url "http://horman.net/multiblend/multiblend#{version}.tar.gz"
  sha256 "6b6ed1ee0c96548803c9a8e8f432f93af2d7829f05b3c4e1e5cd0e2981e91d46"
  revision 1

  bottle :unneeded

  depends_on "jpeg-turbo"

  def install
    system "g++",
           "-msse2",
           "-O3",
           "-I/usr/local/opt/jpeg-turbo/include/",
           "-L/usr/local/opt/jpeg-turbo/lib/",
           "-ltiff",
           "-ltiffxx",
           "-lturbojpeg",
           "-lpng",
           "multiblend.cpp",
           "-o multiblend"
    prefix.install "multiblend"
  end

  test do
    system "script", "-q", "/dev/null", bin/"multiblend"
  end
end
