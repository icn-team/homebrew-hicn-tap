class Hicn < Formula
  desc "This formula contains the libs and the apps of hICN stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/FDio/hicn", :using=>:git, :branch=>"master"
  version "19.08-249-g82f51e4"

  depends_on "cmake" => :build
  depends_on "asio"
  depends_on "libparc"
  depends_on "libconfig"

  def install
    system "cmake", ".", "-DBUILD_APPS=ON", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end
