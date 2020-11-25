# Core
The code on this repository is what is actually installed on your Mac OS (or Windows) system. 

This fills the gap as a hassle-free and fast alternative to Homebrew, and as the package manager that Apple (and Microsoft) happen to not install on their operating systems.

VirtualShip creates a small folder, referred to as 'The Warehouse' (or simply Warehouse, the name of the folder). Inside the folder (located at ```/usr/local/Warehouse```), is where all the dependencies are stored. The folder Garage (located at ```/usr/local/Garage```) is where the actual package will be stored. Finally, the folder Shipper is where the actual Core (the code in this repository) will be stored. Note: _VirtualShip will operate only within the Warehouse, the Garage, and the Shipper environments._

VirtualShip is currently being actively developed. New downloads will be added to the Products repository, and the stocks to the Stocks repository. All released code will be labeled (in a commit) as either 'alpha', 'beta', or 'stable'.

## Why VirtualShip?
You might be asking by now, why VirtualShip? Why not Homebrew, or perhaps MacPorts? Below is a listing of what VirtualShip is intended to be. We call the below 3 reasons, the "3 S's".
### Speed
VirtualShip is fast. Take the package a52dec, as an example (currently in beta stage, released for testing). Look at the statistics below, for a comparison. Note that all of these are tested on 'bare' computers, with no previous dependencies installed.

Homebrew speed: 1 minute
VirtualShip speed: 20 seconds

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
Ready to install VirtualShip? Follow the directions below if you are experienced, or check out the installation guide on the wiki.
### On Mac OS
#### Package
For Version 0.1.0 (alpha), we have released a package, as well as source code. _This is the preferred method for downloading VirtualShip_. It is the easiest way to get VirtualShip up and running on your computer. Go to https://github.com/VirtualShip/Core/releases/tag/v0.1.0-alpha and download the package named "VirtualShip.pkg". Once it is downloaded, click on it. A installation window should pop up, follow the directions, and you should be done.
#### Manual
You can also manually install VirtualShip, if the above method does not work for you. Go to https://github.com/VirtualShip/Core/releases/tag/v0.1.0-alpha, and download the zip or tar gz file called Source Code. Then, follow the directions below.
##### Dependencies
First, we, of course, have to install all the dependencies for VirtualShip. At the time of this writing, VirtualShip is still in alpha mode, so these packages are not yet supported. Below is a quick list of the dependencies you should install:
* python 3
* pip
* ssl
* gdown
* git

##### Create Folders
Navigate or cd to the ```/usr/local``` directory, and add the ```Warehouse```, ```Garage```, and ```Shipper``` folders. In terminal, run the following:
```
cd /usr/local
sudo mkdir Warehouse
sudo mkdir Garage
sudo mkdir Shipper
```
Then, you will need to update permissions:
```
sudo chmod -R 777 Warehouse
sudo chmod -R 777 Garage
sudo chmod -R 777 Shipper
```
##### Edit PATH
After you create all the folders, you must add these to the PATH variable. Use the following command to do so:
```
export PATH="/usr/local/Warehouse:/usr/local/Warehouse/bin:/usr/local/Garage:/usr/local/Garage/bin:/usr/local/Shipper:$PATH"
```
Then, you could check if it worked (it should), by running ```echo $PATH```. You should get something like this:
```
/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Warehouse:/usr/local/Warehouse/bin:/usr/local/Garage:/usr/local/Garage/bin:/usr/local/Shipper:/usr/local/:/Library/Apple/usr/bin
```

##### Install code
Finally, you can install the code required for VirtualShip to run smoothly. _Install both the code on the main and self branch of this repository_. You can do it through the Finder and Github GUI, or you can run it through the terminal:
```
cd /usr/local
sudo git clone --mirror https://github.com/VirtualShip/Core
sudo mv Core.git Shipper/.git
cd Shipper/.git
sudo nano config
```
Here, you want to remove the line named 'bare=true' from the config file. Once you do that, exit ```nano``` and run the following:
```
cd ..
sudo git checkout
sudo chmod +x ship
```
And you're done! Now that you've installed VirtualShip successfully, check out the wiki for more information.


