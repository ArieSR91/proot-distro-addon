#!/data/data/com.termux/files/usr/bin/bash


if dpkg -s "proot-distro" >/dev/null 2>&1; then
    echo "proot-distro allready installed"
else
    apt update; apt install pulseaudio proot-distro -y
fi
if [ ! -f $PREFIX/etc/proot-distro/debian-oldstable.sh ]; then
    wget -P $PREFIX/etc/proot-distro/ https://raw.githubusercontent.com/ArieSR91/proot-distro-addon/refs/heads/main/plugins/debian-oldstable.sh 2>/dev/null
fi
if [ ! -f $PREFIX/etc/proot-distro/debian-oldoldstable.sh ]; then
    wget -P $PREFIX/etc/proot-distro/ https://raw.githubusercontent.com/ArieSR91/proot-distro-addon/refs/heads/main/plugins/debian-oldoldstable.sh 2>/dev/null
fi
if [ ! -f $PREFIX/etc/proot-distro/kali.sh ]; then
    wget -P $PREFIX/etc/proot-distro/ https://raw.githubusercontent.com/ArieSR91/proot-distro-addon/refs/heads/main/plugins/kali.sh 2>/dev/null
fi
echo -e "\nrun: proot-distro list. to see all available rootfs"

