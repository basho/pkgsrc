# $NetBSD: Makefile,v 1.3 2011/11/01 06:02:38 sbd Exp $
#

DISTNAME=	dikt-2d
PKGREVISION=	1
CATEGORIES=	textproc x11
MASTER_SITES=	http://dikt.googlecode.com/files/
EXTRACT_SUFX=	.tbz

MAINTAINER=	cheusov@NetBSD.org
HOMEPAGE=	http://dikt.googlecode.com/
COMMENT=	Dictionary protocol client for KDE
LICENSE=	2-clause-bsd

BUILD_DEPENDS+=	automoc4-[0-9]*:../../devel/automoc4

PKG_DESTDIR_SUPPORT=	user-destdir

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
