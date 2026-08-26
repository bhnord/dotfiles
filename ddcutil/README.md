1. (make sure it's installed) - desktop only
2. `sudo modprobe i2c-dev` -- loads necessary brightness module
3. `echo "i2c-dev" | sudo tee /etc/modules-load.d/i2c-dev.conf` set to auto load module on boot
