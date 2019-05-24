class Libparc < Formula
  desc "Libparc library"
  homepage "https://github.com/FDio/cicn/blob/cframework/master/libparc/README.md"
  url "https://github.com/FDio/cicn", :using=>:git, :branch=>"cframework/master"
#@archive/cframework/master.zip"
  version "1.0-65~g7944543~b1"
  sha256 "c49e1cbb4c534ca72109a1d53ce83e683e5bc7b30026e6c5eeefb0b9ef7df333"
  depends_on "cmake" => :build
  depends_on "openssl@1.1"
  depends_on "libevent"

  def install
    system "cmake", "libparc", *std_cmake_args
    system "make", "install", "-j"
  end

  test do
    system "false"
  end
end
