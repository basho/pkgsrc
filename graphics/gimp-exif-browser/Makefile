# $NetBSD: Makefile,v 1.8 2011/11/01 06:01:34 sbd Exp $
#

DISTNAME=	exif-browser
PKGNAME=	gimp-exif-browser-0.1.0
DIST_SUBDIR=	gimp-exif-browser-0.1.0
PKGREVISION=	7
CATEGORIES=	graphics
MASTER_SITES=	http://registry.gimp.org/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://registry.gimp.org/node/8839
COMMENT=	EXIF data browser plugin
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir
USE_TOOLS+=	intltool pkg-config

GNU_CONFIGURE=	yes

.include "../../graphics/gimp/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
