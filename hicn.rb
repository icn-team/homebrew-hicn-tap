class Hicn < Formula
  desc "This formula contains the libs and the apps of hICN stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/manang/hicn-sdk/releases/download/v0.0.1/binaries.zip"
  version "v0.0.0"
  sha256 "f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528f60a3c"

  depends_on "cmake" => :build
  depends_on "asio"
  depends_on "libparc"
  depends_on "libconfig"

  def install
    bin.install "hicn"
  end
end
