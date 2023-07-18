# Development Environment
this repositori provide a way to create Development Environment using flake.nix

## Why Nix?
I use nix develop to set up (currently) python development environment for different projects. 
I use a flake.nix to describe what package and library that i need and use **nix develop** to set up the environment for me.

## How to use it?
Let’s save below to flake.nix. 
Then you can run  **nix develop -c $SHELL** and nix will prepare python and its library for you to run. 