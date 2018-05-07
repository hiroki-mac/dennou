class Dclc < Formula
  desc "DCLC is a C version of DCL, a drawing library useful for planetary and Earth sciences. This library includes graphical, character processing, and mathematical libraries."
  homepage "http://www.gfd-dennou.org/library/dcl/"
  url "http://www.gfd-dennou.org/library/dcl/dcl-7.2.3-C.tar.gz"
  sha256 "cdabede9ed4ff8ded349c8f6d35c036191935d004e7c1fee4b6e5cc842eaba25"
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
