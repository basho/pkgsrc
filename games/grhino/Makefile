# $NetBSD: Makefile,v 1.46 2011/11/01 06:01:17 sbd Exp $
#

DISTNAME=		grhino-0.16.0
PKGREVISION=		9
CATEGORIES=		games
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rhino/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://rhino.sourceforge.net/
COMMENT=		Othello (Reversi) engine

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_TOOLS+=		pkg-config msgfmt
GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes

.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
