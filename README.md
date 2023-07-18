# Development Environment
![alt text](https://github.com/kemalmao19/devShell/blob/main/gallery/shell.png?raw=true "Python DevShell")

this repositori provide a way to create Development Environment using flake.nix

## Why Nix?
I use nix develop to set up (currently) python development environment for different projects. 
I use a flake.nix to describe what package and library that i need and use **nix develop** to set up the environment for me.

## How to use it?
in the folder python ther is flake.nix file. 
Then you can run  **nix develop -c $SHELL** and nix will prepare python and its library for you to run. 