# $NetBSD: Makefile,v 1.3 2011/04/22 13:42:17 obache Exp $
#

DISTNAME=		liblqr-1-0.4.1
PKGNAME=		liblqr-0.4.1
PKGREVISION=		1
CATEGORIES=		graphics
MASTER_SITES=		http://liblqr.wikidot.com/local--files/en:download-page/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://liblqr.wikidot.com/
COMMENT=		Content-aware image resizing library

PKG_DESTDIR_SUPPORT=	user-destdir
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE=	lqr-1.pc.in

.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
