class Dclc < Formula
  desc "DCLC is a C version of DCL, a drawing library useful for planetary and Earth sciences. This library includes graphical, character processing, and mathematical libraries."
  homepage "http://www.gfd-dennou.org/library/dcl/"
  url "http://www.gfd-dennou.org/library/dcl/dcl-7.1.1-C.tar.gz"
  sha256 "5d7e684c0de5d70730a549da6173112ad6d9c0ffffd958ce313685858f59dc1d"
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
