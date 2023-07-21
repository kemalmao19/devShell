# Development Environment
![alt text](https://github.com/kemalmao19/devShell/blob/main/gallery/shell.png?raw=true "Python DevShell")

this repositori provide a way to create Development Environment using flake.nix

## Why Nix?
I use nix develop to set up (currently) python development environment for different projects. 
I use a flake.nix to describe what package and library that i need and use **nix develop** to set up the environment for me.

📌 Flake Nix is a fantastic tool that simplifies the setup and maintenance of Development projects. It allows me to create isolated, reproducible environments effortlessly, ensuring consistency across teams and deployments.

🛠️ With Flake Nix, managing dependencies has become a breeze! Gone are the days of battling with package conflicts and version mismatches. I can confidently develop projects without worrying about unexpected surprises during deployment.

🐍 Additionally, Flake Nix provides a seamless way to switch between different Python versions, enabling me to test my code across multiple environments effortlessly.

💻 This tool has transformed my development process, making it smoother, more efficient, and reducing setup time significantly. Now, I can focus more on writing clean, robust code and **less on dealing with environment issues**.


## How to use it?
in the folder python ther is flake.nix file. 
Then you can run  **nix develop -c $SHELL** and nix will prepare python and its library for you to run. 
