class Hicn < Formula
  desc "Hicn stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/FDio/hicn", :using=>:git, :branch=>"master"
  version "19.04-42-gcb549ca"
  sha256 "909b9905d7dc0e09a3ca577529d299e5fc72fdf098bd9f87d220c00aae68df13"
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
