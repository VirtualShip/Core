# Core
The code on this repository is what is actually installed on your Mac OS (or Windows) system. 

This fills the gap as a hassle-free and fast alternative to Homebrew, and as the package manager that Apple (and Microsoft) happen to not install on their operating systems.

VirtualShip creates a small folder, referred to as 'The Warehouse' (or simply Warehouse, the name of the folder). Inside the folder (located at /usr/local/Warehouse), is where all the dependencies are stored. The folder Garage (located at /usr/local/Garage) is where the actual package will be stored. Finally, the folder Shipper is where the actual Core (the code in this repository) will be stored. Note: _VirtualShip will operate only within the Warehouse, the Garage, and the Shipper environments._

VirtualShip is currently being actively developed. New downloads will be added to the Products repository, and the stocks to the Stocks repository. All released code will be labeled (in a commit) as either 'alpha', 'beta', or 'stable'.

## Why VirtualShip?
You might be asking by now, why VirtualShip? Why not Homebrew, or perhaps MacPorts? Below is a listing of what VirtualShip is intended to be. We call the below 3 reasons, the "3 S's".
### Speed
VirtualShip is fast. Take the package ffmpeg, as an example (currently in alpha stage, not yet released). Look at the statistics below, for a comparison. Note that all of these are tested on 'bare' computers, with no previous dependencies installed.

Homebrew speed: 6 minutes
VirtualShip speed: 2 minutes

VirtualShip is actually 3 times faster than its counterparts!
### Simplicity
VirtualShip is simple. Most commands are only 3 words, with easily human-readable commands:
```
ship order ffmpeg
```

Or this:
```
ship refurbish ffmpeg
```

Or perhaps this:
```
ship return ffmpeg
```

Simple commands that are easily remembered! No more looking up how to install a package.
### Security
VirtualShip is secure. As mentioned before, VirtualShip only operates within 3 folders, all located within the /usr/local directory. _Even if some virus, somehow infiltrates into your system, your computer will not be harmed_. Here are the main security points:

* All products and stocks are personally inspected by VirtualShip
* VirtualShip only operates within the Warehouse, the Garage, and the Shipper environments in the /usr/local directory
* VirtualShip will _not_ give your password away to large Makefiles: no more sudo!

You can trust VirtualShip to keep your computer secure.

PLEASE NOTE: THE ABOVE POINTS ARE ONLY GUARANTEED WHEN INSTALLING 'STABLE' PRODUCTS

## Installation Guide
Ready to install VirtualShip? Follow the directions below!
### On Mac OS
