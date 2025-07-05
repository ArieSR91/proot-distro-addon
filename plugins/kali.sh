# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Kali (current)"
DISTRO_COMMENT="Current release."

TARBALL_URL['aarch64']="https://github.com/ArieSR91/proot-distro-addon/blob/main/rootfs/kalo-current-arm64.tar.xz"
TARBALL_SHA256['aarch64']="9ee28c8d2d149c44db333dbe3de0b223bc4ae120374aaba2e311d8d5828a21dd"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}

