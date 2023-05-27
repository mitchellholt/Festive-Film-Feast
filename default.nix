with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "elm-tailwind-project";

  buildInputs = [
    elmPackages.elm
    elmPackages.elm-test
    elmPackages.elm-format
    nodePackages.node2nix
    nodePackages.tailwindcss
  ];

  shellHook = ''
    export NODE_PATH="${nodejs}/lib/node_modules:${elmPackages.elm}/lib/node_modules:${nodePackages.tailwindcss}/lib/node_modules"
  '';
}