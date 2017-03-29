# simply add here entries with computer names and path to PaleoHydroEU folder
.onLoad <- function(libname, pkgname) {

  where = if(.Platform[["OS.type"]] == 'unix') (Sys.info()['nodename']) else (Sys.getenv('COMPUTERNAME'))

  switch(where,
    'match' = {
      proot = "/home/owc/PaleoHydroEU/"
        },
     'olda-change-name' = {
       proot = "/Users/rakovec/ownCloud/UFZ/projects/PaleoHydroEU/"
     }
         )
  assign('.dir', proot, envir = .GlobalEnv)
  invisible()
}
