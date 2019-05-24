class Hicn < Formula
  desc "Hicn stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/FDio/hicn/archive/master.zip"
  version "19.04-40-g052cc4a"
  sha256 "26d720581896fb1a00cebfc2b442e4c5c5d7b7acd93f5d2c6c181222ff9bdc71"
  depends_on "cmake" => :build
  depends_on "libparc"
  depends_on "curl"
  depends_on "asio"
  def install
    system "cmake", ".", "-DBUILD_APPS=ON",*std_cmake_args
    system "make", "install" , "-j"
  end
  test do
    system "false"
  end
end
