{
  description = "XNM's NixOS Configuration";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.isitreal-laptop = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./bluetooth.nix
        ./bootloader.nix
        ./configuration.nix
        ./display-manager.nix
        ./dns.nix
        ./firewall.nix
        ./fonts.nix
        ./gc.nix
        ./hardware-configuration.nix
        ./hyprland.nix
        ./info-fetchers.nix
        ./internationalisation.nix
        ./linux-kernel.nix
        ./networking.nix
        ./nix-settings.nix
        ./nixpkgs.nix
        ./opengl.nix
        ./programming-languages.nix
        ./rust.nix
        ./screen.nix
        ./security-services.nix
        ./services.nix
        ./sound.nix
        ./swap.nix
        ./terminal-utils.nix
        ./theme.nix
        ./time.nix
        ./usb.nix
        ./users.nix
        ./virtualisation.nix
        # do not install
        # ./environment-variables.nix
        # ./work.nix
        # ./fingerprint-scanner.nix
        # ./clamav-scanner.nix
        # ./yubikey.nix
        # ./auto-upgrade.nix
        # ./printing.nix
        # ./gnome.nix
        # ./mac-randomize.nix
        # ./open-ssh.nix
        # ./vpn.nix
        # ./lsp.nix
        # ./wasm.nix
        # ./utils.nix
        # ./nvidia.nix
        # ./disable-nvidia.nix
      ];
    };
  };
}
