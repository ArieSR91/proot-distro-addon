# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Debian (bullseye)"
DISTRO_COMMENT="Old stable release."

TARBALL_URL['aarch64']="https://github.com/ArieSR91/proot-distro-addon/raw/refs/heads/main/rootfs/debian-bullseye-arm64.tar.xz"
TARBALL_SHA256['aarch64']="bf723c32eeb56ad09e059799cddc7d4a7ea9d993c6c40fab07afff7719c21e7b"
TARBALL_URL['arm']="https://github.com/ArieSR91/proot-distro-addon/raw/refs/heads/main/rootfs/debian-bullseye-arm.tar.xz"
TARBALL_SHA256['arm']="74920fcb183780b7eb11367acd9f00952e1c2909bac960fef670c6af2288af86"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}

