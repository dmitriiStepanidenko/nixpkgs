{
  lib,
  fetchFromGitHub,
  buildGoModule,
}:
buildGoModule rec {
  pname = "tiup";
  version = "1.16.2";

  src = fetchFromGitHub {
    owner = "pingcap";
    repo = "tiup";
    rev = "v${version}";
    sha256 = "sha256-zCkszW2TA2/rkTk8Vuy3+J/fD1OOhXJ4K1y90FlvRhI=";
  };
  vendorHash = "sha256-gJNdR5cCCjFe03cC7DBx8ZkGMyk4BwZkvIo94HTyimU=";

  doCheck = false;

  meta = with lib; {
    description = "A component manager for TiDB ";
    homepage = "https://tiup.io/";
    mainProgram = "tiup";
    license = licenses.asl20;
  };
}
