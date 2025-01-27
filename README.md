# Core
The code on this repository is what is actually installed on your Mac OS system. 

This fills the gap as a hassle-free and fast alternative to Homebrew, and as the package manager that Apple (and Microsoft) happen to not install on their operating systems.

VirtualShip creates two folders, inside of which it will operate. The first folder the Warehouse (located at ```/usr/local/Warehouse```) will be the place where the code in this repository is stored. The second folder is the Garage (located at ```/usr/local/Garage```), where the installed packages will be put. Note: _VirtualShip will operate only within the Warehouse and Garage environments_.

VirtualShip is currently being actively developed. New downloads will be added to the Products repository, and the stocks to the Stocks repository. All released code will be labeled (in a commit) as either 'alpha', 'beta', or 'stable'.

## Why VirtualShip?
You might be asking by now, why VirtualShip? Why not Homebrew, or perhaps MacPorts? Below is a listing of what VirtualShip is intended to be. We call the below 3 reasons, the "3 S's".
### Speed
VirtualShip is fast. Take the package a52dec, as an example (currently in beta stage, released for testing). Look at the statistics below, for a comparison. Note that all of these are tested on 'bare' computers, with no previous dependencies installed.

Homebrew speed: 1 minute
VirtualShip speed: 20 seconds

VirtualShip is actually 3 times faster than its counterparts! This is because all of our instructions for installing products are on the cloud: a GitHub repository (VirtualShip/Products). This means updating speeds and installing speeds stay exactly the same!
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
VirtualShip is secure. As mentioned before, VirtualShip only operates within 2 folders, all located within the /usr/local directory. _Even if some virus, somehow infiltrates into your system, your computer will not be harmed_. Here are the main security points:

* All products and stocks are personally inspected by VirtualShip
* VirtualShip only operates within the Warehouse and the Garage enviornments in the /usr/local directory
* VirtualShip will _not_ give your password away to large Makefiles: no more sudo!
* All downloaded files will be checked with the SHA-512 algorithm

You can trust VirtualShip to keep your computer secure.

PLEASE NOTE: THE ABOVE POINTS ARE ONLY GUARANTEED WHEN INSTALLING 'STABLE' PRODUCTS

## Installation Guide
Ready to install VirtualShip? Follow the directions below if you are experienced, or check out the installation guide on the wiki.
### On Mac OS
#### Script
Script install for VirtualShip is now supported. It is still in its alpha stages, so if this method doesn't work, try manualling installing it. Here is an overview of what the script does:
* Prompts you to install VirtualShip
* Installs VirtualShip

Alright, so simply type the following code into the terminal to install:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/VirtualShip/Core/main/.install)"
```
And you're done!
#### Manual
You can also manually install VirtualShip, if the above method does not work for you.

##### Create Folders
Navigate or cd to the ```/usr/local``` directory, and add the ```Warehouse``` and ```Garage``` folders. In terminal, run the following:
```
cd /usr/local
sudo mkdir Warehouse
sudo mkdir Garage
```
Then, you will need to update permissions:
```
sudo chmod -R 777 Warehouse
sudo chmod -R 777 Garage
```
##### Edit PATH
After you create all the folders, you must add these to the PATH variable. Issue the following command to do so:
```
export PATH="/usr/local/Warehouse:/usr/local/Warehouse/bin:/usr/local/Garage:/usr/local/Garage/bin:$PATH"
```
Then, you could check if it worked (it should), by running ```echo $PATH```. You should get something like this:
```
/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Warehouse:/usr/local/Warehouse/bin:/usr/local/Garage:/usr/local/Garage/bin:usr/local/:/Library/Apple/usr/bin
```

##### Install code
Finally, you can install the code required for VirtualShip to run smoothly. _Install both the code on the main and self branch of this repository_. You can do it through the Finder and Github GUI, or you can run it through the terminal. Simply download all of the code to two seperate folders, move the contents of the folders to the /usr/local/Warehouse directory, run ```sudo chmod +x bin/ship```, ```sudo chmod +x bin/gh```, ```sudo chmod +x bin/sha```, and ```sudo chmod +x bin/gdrived```, and you're done. For a more detailed installation guide, check out the wiki.

And you're done! Now that you have installed VirtualShip on your computer, go to the wiki to learn more!

## Uninstalling VirtualShip
### Removing Code
Before you install, you must understand that uninstalling is very, very easy! The reason for this is because VirtualShip is designed only to put products and code in two folders: the Warehouse and the Garage. To uninstall VirtualShip, simply run the following code in terminal:
```
rm -r -d /usr/local/Garage
rm -r -d /usr/local/Warehouse
```
### Removing PATH
After removing the folders, be sure to modify the PATH variable so it won't include two missing folders. To do this, edit your ```/etc/paths``` file:
```
sudo nano /etc/paths
```
Remove the lines that contain the following:
```
/usr/local/Garage
/usr/local/Garage/bin
/usr/local/Warehouse
/usr/local/Warehouse/bin
```
Write out (Ctrl+O) and exit (Ctrl+X). Quit the terminal and reopen it. Check that it has removed it successfully by entering ```echo $PATH```. And you're done!
