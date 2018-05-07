class Dclc < Formula
  desc "DCLC is a C version of DCL, a drawing library useful for planetary and Earth sciences. This library includes graphical, character processing, and mathematical libraries."
  homepage "http://www.gfd-dennou.org/library/dcl/"
  url "http://www.gfd-dennou.org/library/dcl/dcl-7.1.2-C.tar.gz"
  sha256 "1cc9ea4bed8f000229a74f182126e6e496614e3abb650f40e9cffaa72ad201f1"
  depends_on "gtk+"
  depends_on "pkg-config"

  def install
    ENV.deparallelize
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  test do
    system "true"
  end
end
