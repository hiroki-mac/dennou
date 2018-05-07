class Dclc < Formula
  desc "DCLC is a C version of DCL, a drawing library useful for planetary and Earth sciences. This library includes graphical, character processing, and mathematical libraries."
  homepage "http://www.gfd-dennou.org/library/dcl/"
  url "http://www.gfd-dennou.org/library/dcl/dcl-7.3.1-C.tar.gz"
  sha256 "3a1fdadf40878d52580647e80a769af927318bcb58943284bed432058b2c702c"
  depends_on "gtk+"
  depends_on "pkg-config"

  def install
    ENV.deparallelize
    system "./configure", "--prefix=#{prefix}", "--with-gtk2"
    system "make"
    system "make install"
  end

  test do
    system "true"
  end
end
