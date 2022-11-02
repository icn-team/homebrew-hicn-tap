class Hicn < Formula
  desc "This formula contains the libs and the apps of hICN stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/manang/hicn-sdk/releases/download/v0.0.1/binaries.zip"
  version "v0.0.4"
  sha256 "8739c76e681f900923b900c9df0ef75cf421d39cabb54650c4b9ad19b6a76d85"

  depends_on "cmake" => :build
  depends_on "asio"
  depends_on "libparc"
  depends_on "libconfig"

  def install
    bin.install "hicn"
  end
end
