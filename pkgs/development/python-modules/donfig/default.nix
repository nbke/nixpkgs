{ lib
, buildPythonPackage
, fetchFromGitHub
, pyyaml
, pytest
}:

buildPythonPackage rec {
  pname = "donfig";
  version = "0.5.0";

  src = fetchFromGitHub {
    owner = "pytroll";
    repo = "donfig";
    rev = "v${version}";
    sha256 = "12r3g0727mp8x57200ii2h2p52lj9y02fk06yf9da9sk9pld4n36";
   };

  propagatedBuildInputs = [ pyyaml ];

  checkInputs = [ pytest ];

  checkPhase = "pytest";

  meta = with lib; {
    homepage = "https://donfig.readthedocs.io/en/latest/";
    description = "Python package for configuring a python package";
    license = licenses.mit;
    #maintainers = with maintainers; [ nbke ];
  };
}
