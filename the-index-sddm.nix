{ pkgs, ... }: let
  theme = pkgs.stdenv.mkDerivation {
    name = "sddm-theme";
    src = pkgs.fetchFromGitHub {
      owner = "ixora-0";
      repo = "the-index-sddm";
      rev = "d9615d4b99115b5f6a1badc827b056926e960aaf";
      hash = "sha256-iMCC32/3IzjWJa9HQeO5yWIQpSw3cnNgf69TWkJjYJU=";
    };
    installPhase = let
     basePath = "$out/share/sddm/themes/the-index-sddm";
    in ''
      mkdir -p ${basePath}
      cp -r $src/* ${basePath}
    '';
  };
in {
  systemd.services.display-manager.enable = true;
  environment.systemPackages = [ theme ];
  services.displayManager.sddm = {
    extraPackages = [pkgs.qt6.qt5compat];
    enable = true;
    wayland.enable = true;
    settings = {
      General = {
        GreeterEnvironment = "QML_XHR_ALLOW_FILE_READ=1";
      };
    };
    theme = "the-index-sddm";
  };
}
