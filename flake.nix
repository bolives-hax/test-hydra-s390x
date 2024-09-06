{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs, ... }: {
    packages.x86_64-linux = let pkgs = import nixpkgs {system = "s390x-linux"; }; in
      pkgs.hello;

    hydraJobs = {
      inherit (self)
        packages;
    };
  };
}
