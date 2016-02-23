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
}
