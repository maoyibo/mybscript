#Ubuntu dependence install bash script
#Author:Maoyibo
#Site:maoyibo.github.io
#Script page:http://maoyibo.github.io/2015/12/08/Ubuntu-Dependence-Installation/
#Version:0.1
#License:AGPL 3

#$IDEs
IDEs='eclipse eclipse-cdt qt-sdk vim '
#$Plugins
Plugins='nautilus-open-terminal p7zip p7zip-full p7zip-rar icedtea-7-plugin aria2 zsync tsocks '
#$Tools
Tools='virtualbox synaptic gimp inkscape goldendict gparted blender shutter calibre '
#$Vedios
Vedios='vlc gstreamer1.0-libav gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly'
#$Browser
Browser='chromium-browser chromium-browser-l10n '
#$Fonts
Fonts='fonts-wqy-microhei fonts-wqy-zenhei xfonts-wqy '
#$Depends
Depends='libcanberra-gtk-module:i386 '
#$Developer
Developer='build-essential linux-generic linux-headers-generic linux-image-generic subversion gcc g++ make cmake git-gui subversion bison '
#$Python
Python='ipython python-pip python-biopython python-dev python-pmw python-numpy python-scipy python-matplotlib '
#$Bio
Bio='openbabel openbabel-gui python-openbabel pymol r-bioc-biobase'
#$Amber12
Amber='csh flex gfortran xorg-dev zlib1g-dev libbz2-dev '
#$Pymol
Pymol='python-dev python-pmw libglew-dev freeglut3-dev libpng-dev libfreetype6-dev libxml2-dev '
#$Skype
Skype='gtk2-engines-murrine:i386 libcanberra-gtk-module:i386 '
#$Texlive
Texlive='perl-tk '
#$Lyx
Lyx='libmagic-dev '

echo "Before use this script please update your system."
echo "Run 'sudo apt-get update' and 'sudo apt-get upgrade'"
#sudo apt-get update
#sudo apt-get upgrade
sudo apt-get install $IDEs $Plugins $Tools $Vedios $Browser $Fonts $Depends $Developer $Python $Bio $Amber12 $Pymol $Skype $Lyx $Texlive

