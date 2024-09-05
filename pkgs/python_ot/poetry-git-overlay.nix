{pkgs}: self: super: {
  chipwhisperer = super.chipwhisperer.overridePythonAttrs (
    _: {
      src = pkgs.fetchzip {
        url = "https://github.com/newaetech/chipwhisperer-minimal/archive/2643131b71e528791446ee1bab7359120288f4ab.zip";
        sha256 = "19s8hp1n2hb2pbrvsdzi6z098hjcinr4aw8rsj0l5qg00bj8r404";
      };
    }
  );

  edalize = super.edalize.overridePythonAttrs (
    _: {
      src = pkgs.fetchzip {
        url = "https://github.com/olofk/edalize/archive/refs/tags/v0.5.4.zip";
        hash = "sha256-pgyUpbSVRCHioJc82hZwG+JbpnL7t9ZvN4OcPHFsirs=";
      };
    }
  );

  fusesoc = super.fusesoc.overridePythonAttrs (
    _: {
      src = pkgs.fetchurl {
        url = "https://github.com/a-will/fusesoc/archive/refs/tags/2.3-dev0+a-will.zip";
        hash = "sha256-GI8d1rXtJJFpE4OBkE5ZzMrnDDMuSjDuGJm81QgzJho=";
      };
    }
  );
}
