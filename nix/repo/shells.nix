{
  inputs,
  cell,
}: let
  inherit (inputs.std) lib std;
in
  builtins.mapAttrs (_: lib.dev.mkShell) {
    default = {
      name = "Nshoor Devshell";

      imports = [std.devshellProfiles.default];

      commands = [
        {package = inputs.nixpkgs.nodejs;}
      ];
    };
  }
