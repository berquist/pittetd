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
    cp achicago.pit $out
    cp pitetd10.clo $out
    cp pitetd11.clo $out
    cp pitetd12.clo $out
    cp pittdiss.pit $out
    cp pittetd.cls $out
    cp pittetd.pdf $out
    cp pitthesis.pit $out
  '';
}
