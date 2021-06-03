# Fixe NVIDIA audio driver on ubuntu
Fully inspired by [this post](https://ubuntuforums.org/showthread.php?t=2421187).

- Open `/etc/modprobe.d/alsa-base.conf` file
- And paste the following line
```
options snd-dha-intel probe_mask=0x1
options snd-hda-intel model=alc225-wyse
```
- Reboot
