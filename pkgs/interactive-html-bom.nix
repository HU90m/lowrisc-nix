# Copyright lowRISC Contributors.
# SPDX-License-Identifier: MIT
{
  #pkgs,
  lib,
  python3Packages,
  fetchFromGitHub,
}:
  python3Packages.buildPythonPackage rec {
    name = "interactive-html-bom";
    version = "2.9.0";
    src = fetchFromGitHub {
      owner = "openscopeproject";
      repo = "InteractiveHtmlBom";
      rev = "v${version}";
      hash = "sha256-jUHEI0dWMFPQlXei3+0m1ruHzpG1hcRnxptNOXzXDqQ=";
    };
    propagatedBuildInputs = with python3Packages;
      [
        #setuptools
        #setuptools-scm
        kicad
        #hatchling
        #wxpython
        #jsonschema
      ];
    format = "pyproject";
    meta = {
      homepage = "https://github.com/openscopeproject/InteractiveHtmlBom";
      license = lib.licenses.mit;
      platforms = lib.platforms.all;
      mainProgram = "generate_interactive_bom";
    };
  }
