{ pkgs }:
final: prev: {

  chipwhisperer = prev.chipwhisperer.overridePythonAttrs (
    _: {
      src = pkgs.fetchzip {
        url = "https://github.com/newaetech/chipwhisperer-minimal/archive/2643131b71e528791446ee1bab7359120288f4ab.zip";
        sha256 = "19s8hp1n2hb2pbrvsdzi6z098hjcinr4aw8rsj0l5qg00bj8r404";
      };
    }
  );

}
