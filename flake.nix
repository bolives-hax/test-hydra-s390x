{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs, ... }: {
    packages.s390x-linux = let pkgs = import nixpkgs {system = "s390x-linux"; }; in
      pkgs.gcc12;

    hydraJobs = {
      inherit (self)
        packages;
    };
  };
}
