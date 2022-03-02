# BlackArtix
Heads up: 
**This script is only tested and expected to run the Base version of Artix, bigger ISOs might cause unwanted package conflicts.**


<summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#warnings">Warnings</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
  </ol>
  
### Warnings
- This is made for personal use and is not tested on anything like an Arm machine, although i don't see why it should'nt work.
- This project is incomplete, but is completely usable.
- The install is pretty light, it finishes with about a 2.2Gb download and will install ~1100 packages (including artix's packages), 140 of which are security tools.
- The default scripts installs no bloatware, only security tools. (No DEs, File managers, ETC ETC)
- I take no credit for anything in this repo, all of the tools belong to blackarch and their team.

### Prerequisites
1- Enable the multilib repo [Guide](https://forum.artixlinux.org/index.php/topic,132.0.html)

2- Add blackarch repo using the [Official script](https://blackarch.org/downloads.html)
```sh
# Run https://blackarch.org/strap.sh as root and follow the instructions.

$ curl -O https://blackarch.org/strap.sh
# Verify the SHA1 sum (Check this part from the official guide.)

$ echo 8bfe5a569ba7d3b055077a4e5ceada94119cccef strap.sh | sha1sum -c
# Set execute bit

$ chmod +x strap.sh
# Run strap.sh

$ sudo ./strap.sh

$ sudo pacman -Syu
```
3- Check that everything is working correctly, and continute to the install.
### Installation
use the package list provided in the repo, if you want to modify it feel free to modify.

```sh 
$ wget https://raw.githubusercontent.com/DisheartenedEthereal/BlackArtix/main/packages.txt

$ sudo pacman -S - < pkglist.txt --needed --overwrite='*'
```
