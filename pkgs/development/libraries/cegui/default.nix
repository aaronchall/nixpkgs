{ lib, stdenv, fetchurl, cmake, ogre, freetype, boost, expat }:

stdenv.mkDerivation rec {
  pname = "cegui";
  version = "0.8.7";

  src = fetchurl {
    url = "mirror://sourceforge/crayzedsgui/${pname}-${version}.tar.bz2";
    sha256 = "067562s71kfsnbp2zb2bmq8zj3jk96g5a4rcc5qc3n8nfyayhldk";
  };

  nativeBuildInputs = [ cmake ];
  buildInputs = [ ogre freetype boost expat ];

  meta = with lib; {
    homepage = "http://cegui.org.uk/";
    description = "C++ Library for creating GUIs";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
