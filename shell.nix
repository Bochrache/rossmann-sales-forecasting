{ pkgs ? import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz";
  }) {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python310
    pkgs.python310Packages.pip 
    pkgs.python310Packages.numpy
    pkgs.python310Packages.pandas
    pkgs.python310Packages.scikit-learn
    pkgs.python310Packages.matplotlib
    pkgs.python310Packages.seaborn
    pkgs.python310Packages.jupyter
    pkgs.python310Packages.jupyterlab
    pkgs.python310Packages.statsmodels
    pkgs.python310Packages.xgboost
    pkgs.python310Packages.lightgbm
    pkgs.python310Packages.python-dotenv
  ];

  shellHook = ''
    echo "Welcome to your Rossmann Sales Forecasting environment!"
  '';
}
