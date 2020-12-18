class Hicn < Formula
  desc "This formula contains the libs and the apps of hICN stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/FDio/hicn", :using=>:git, :branch=>"master"
  version "20.09-rc0-32-g0042b03"

  depends_on "cmake" => :build
  depends_on "asio"
  depends_on "libparc"
  depends_on "libconfig"

  def install
    system "cmake", ".", "-DBUILD_APPS=ON", "-DOPENSSL_ROOT_DIR=/usr/local/opt/openssl@1.1", *std_cmake_args
    system "make", "-j8", "install"
  end

  test do
    system "true"
  end
end
