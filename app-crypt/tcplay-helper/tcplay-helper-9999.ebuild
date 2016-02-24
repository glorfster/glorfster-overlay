# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3

DESCRIPTION="Helper for tcplay and pam_mount"
HOMEPAGE="https://github.com/glorfster/tcplay-helper"
SRC_URI=""
EGIT_REPO_URI="git://github.com/glorfster/tcplay-helper.git"

LICENSE="BSD"
KEYWORDS="~amd64"
SLOT="0"

DEPEND="
	sys-auth/pam_mount
	app-crypt/tc-play"
RDEPEND="${DEPEND}"

src_install() {
    dobin tcplay-helper
	dodoc README.md
	insinto /etc/pam.d
	newins pam-mount mount1
}

pkg_postinst() {
    einfo "Before you can use pam_mount + tcplay-helper you must add the"
	einfo "following lines to 'system-local-login' and 'system-remote-login'"
	einfo "   auth			include		mount"
	einfo "   password		include		mount"
	einfo "   session		include		mount"
	einfo ""
	einfo "In addition you must change '/etc/security/pam_mount.conf.xml'"
	einfo "the following params:"
	einfo "  <cryptmount>bash -c \"/usr/bin/tcplay-helper open '%(VOLUME)' '%(MNTPT)'\"</cryptmount>"
	einfo "  <cryptumount>bash -c \"/usr/bin/tcplay-helper close '%(MNTPT)'\"</cryptumount>"
	einfo ""
}

pkg_postrm() {
    # TODO remove from /etc/pam.d/* include mount
	return
}
