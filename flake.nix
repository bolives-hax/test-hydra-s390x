{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs, ... }: {
    packages.x86_64-linux = {
      ...
    };

    hydraJobs = {
      inherit (self)
        packages;
    };
  };
}
