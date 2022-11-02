class Hicn < Formula
  desc "This formula contains the libs and the apps of hICN stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/manang/hicn-sdk/releases/download/v0.0.1/hicn.zip"
  version "v0.0.1"
  sha256 "9f6f4497b359dca7bf59c113bc01b81d6a98b2c3cbbd367f10d3383b500c5190"

#   depends_on "cmake" => :build
  depends_on "openssl@1.1"
  depends_on "libevent"
  depends_on "asio"
  depends_on "libconfig"

  def install
    bin.install "hicn"
  end
end
