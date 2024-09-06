{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs, ... }: {
    packages.x86_64-linux = let pkgs = import (nixpkgs {system = "x86_64-linux"; }); in
      pkgs;

    hydraJobs = {
      inherit (self)
        packages;
    };
  };
}
