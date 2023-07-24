{ lib
, stdenv
, fetchFromGitHub
, rustPlatform
}:

rustPlatform.buildRustPackage rec {
  pname = "hed";
  version = "0.1.9";

  src = fetchFromGitHub {
    owner = "credmp";
    repo = pname;
    rev = "refs/tags/${version}";
    sha256 = "0nrc27ixd661kxy7dkhvd155l0h8c5ar4wgc8slb9jzhxz5hh1g4";
  };

  cargoHash = "sha256:05lq0cxnrzlg4scvv66r3zv6mdpa4h2nfwx2b0m2hpkmg1vd7h1s";

  meta = with lib; {
    description = "Commandline hostfile editor";
    homepage = "https://github.com/credmp/hed";
    changelog = "https://github.com/credmp/hed/releases/tag/${version}";
    license = with licenses; [ mit ];
    maintainers = with maintainers; [ credmp ];
    platforms = platforms.unix;
  };
}
