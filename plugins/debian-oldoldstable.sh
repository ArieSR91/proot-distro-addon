# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Debian (buster)"
DISTRO_COMMENT="Old old stable release."

TARBALL_URL['aarch64']="https://github.com/ArieSR91/proot-distro-addon/blob/main/rootfs/debian-buster-arm64.tar.xz"
TARBALL_SHA256['aarch64']="95c3eab5a96de83985c211fd906031e479907b2506da7a3f53f396a8606b5ba7"
TARBALL_URL['arm']="https://github.com/ArieSR91/proot-distro-addon/blob/main/rootfs/debian-buster-arm.tar.xz"
TARBALL_SHA256['arm']="ed48c94928bd8e8b7b4647de69e83433a44d5568f85c80798c84f1562b3f9d16"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}

