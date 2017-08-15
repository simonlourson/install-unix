# Manette XBox One bluetooth :
echo 1 > /sys/module/bluetooth/parameters/disable_ertm

OU

cd /sys/module/bluetooth/parameters/
sudo nano disable_ertm

/opt/retropie/configs/all/



#Dosbox executable :
/opt/retropie/emulators/dosbox/bin/dosbox

/opt/retropie/emulators/dosbox/bin/dosbox -startmapper


-- Sauvegardes :

-- Sauvegarde du dossier avec les configs emulateurs :
/opt/retropie/configs/all/attractmode/emulators

-- Sauvegarde romlists attractmode
/opt/retropie/configs/all/attractmode/romlists

-- Sauvegarde attract.cfg
/opt/retropie/configs/all/attractmode/attract.cfg

-- Sauvegarde theme nevato
/opt/retropie/configs/all/attractmode/layouts/nevato

-- Sauvegarde retroarch.cfg
/opt/retropie/configs/all

-- Sauvegarde de scummvm
/opt/retropie/configs/scummvm
 
 * zip usb
 * save image
 

 
 
-- Boot

 * Change keyboard layouts
 * Setup wifi
 * Enable ssh
 * update all packages
 * reboot
 
 
-- AttractMode with MMAL :


cd ~
sudo mkdir develop
sudo apt-get install cmake libflac-dev libogg-dev libvorbis-dev libopenal-dev libjpeg62-turbo-dev libfreetype6-dev  libudev-dev libfontconfig1-dev 

cd ~/develop

sudo git clone --depth 1 https://github.com/mickelson/sfml-pi sfml-pi
sudo mkdir sfml-pi/build
cd sfml-pi/build
sudo cmake .. -DSFML_RPI=1 -DEGL_INCLUDE_DIR=/opt/vc/include -DEGL_LIBRARY=/opt/vc/lib/libEGL.so -DGLES_INCLUDE_DIR=/opt/vc/include -DGLES_LIBRARY=/opt/vc/lib/libGLESv1_CM.so
sudo make install
sudo ldconfig

sudo reboot now
	
cd ~/develop
sudo git clone --depth 1 git://source.ffmpeg.org/ffmpeg.git
cd ffmpeg

sudo ./configure --enable-mmal --disable-debug --enable-shared
sudo make
sudo make install
sudo ldconfig

sudo reboot now

ffmpeg -decoders | grep h264

cd ~/develop
sudo git clone --depth 1 https://github.com/mickelson/attract attract
cd attract
sudo make USE_GLES=1
sudo make install


dossier attractmode : /home/pi/.attract

 * delete and copy emulators
 * copy romlists
 * copy attract.cfg
 * copy layouts/nevato
 
copy autostart.sh to /opt/retropie/configs/all

configurer ipac avec emulationstation

-- Restoration retroarch.cfg
/opt/retropie/configs/all

usb audio :
lsusb
cat /proc/asound/modules
sudo nano /etc/modprobe.d/alsa-base.conf

paste :
options snd_usb_audio index=0
options snd_bcm2835 index=1
options snd slots=snd-usb-audio,snd-bcm2835

exit and save
reboot

installer packages-- Optional packages
 * Daphne
 * Dosbox
 * ScummVM
 
 
cd boot
sudo nano config.txt

-- Restoration de scummvm
/opt/retropie/configs/scummvm



