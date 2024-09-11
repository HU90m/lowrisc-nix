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

  fusesoc = prev.fusesoc.overridePythonAttrs (
    _: {
      src = pkgs.fetchzip {
        url = "https://github.com/a-will/fusesoc/archive/refs/tags/2.3-dev0+a-will.zip";
        sha256 = "14y8g43gsp6wydn83bm2p9v08z489v9vfszm5kzrw0gp837xdl78";
      };
    }
  );

}
