class Dclc < Formula
  desc "C-DCL is a C version of DCL, a drawing library useful for planetary and Earth sciences. This library includes graphical, character processing, and mathematical libraries."
  homepage "http://www.gfd-dennou.org/library/dcl/"
  url "http://www.gfd-dennou.org/library/dcl/dcl-6.0.3-C.tar.gz"
  sha256 "507c97ddc7a99be4dddf96469d4a5a826f9d7468cf681b834950adae4556c96a"
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
