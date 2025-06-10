with (import <nixpkgs> {});
mkShell rec {
  buildInputs = [
    gnumake
    gcc
    gdb
    rpclib
    libpcap
  ];

  shellHook = ''
            export LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath buildInputs}:$LD_LIBRARY_PATH"
  '';
}
