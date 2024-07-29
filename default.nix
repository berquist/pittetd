{ pkgs ? import <nixpkgs> { }, ... }:

pkgs.stdenv.mkDerivation {
  name = "pittetd";
  src = ./.;
  buildInputs = with pkgs; [
    texliveFull
  ];
  buildPhase = ''
    make all
  '';
  installPhase = ''
    mkdir -p $out
    cp pittetd.pdf $out
  '';
}
