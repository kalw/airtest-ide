class Multiblend < Formula
  desc "multiblend is a multi-level image blender for the seamless blending of panoramic images, such as those created with PTAssembler (my personal favourite), Hugin, or PTGui. It is a significantly faster drop-in alternative to Enblend, although it lacks Enblend's advanced features."
  homepage "http://horman.net/multiblend/"
  version "0.6.2"
  url "http://horman.net/multiblend/multiblend#{version}.tar.gz"
  sha256 "fbddda9230cf6ee2a4f5706b4b11e2190ae45f5eda1f0409dc4f99b35e0a70ee"
  revision 1

  bottle :unneeded
  
  def install
    system "g++",
           "-msse2",
           "-O3",
           "-ltiff",
           "-ltiffxx",
           "-ljpeg",
           "-lpng",
           "multiblend.cpp",
           "-o multiblend"
    bin.install_symlink Dir["multiblend"]
  end

  test do
    system "script", "-q", "/dev/null", bin/"multiblend"
  end
end
