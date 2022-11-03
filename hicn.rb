class Hicn < Formula
  desc "This formula contains the libs and the apps of hICN stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/manang/hicn-sdk/releases/download/v0.0.1/hicn.tar.gz"
  version "v0.0.1"
  sha256 "a66f491cddad27f9b34511bcee96841d1d7fbb66f9c55d3238e937758dc8da2c"

#   depends_on "cmake" => :build
  depends_on "openssl@1.1"
  depends_on "libevent"
  depends_on "asio"
  depends_on "libconfig"

  def install
    bin.install "usr/bin/" => "bin"
  end
end
