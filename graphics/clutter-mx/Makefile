# $NetBSD: Makefile,v 1.5 2011/11/01 06:01:27 sbd Exp $
#

DISTNAME=	mx-1.0.4
PKGNAME=	clutter-mx-1.0.4
PKGREVISION=	3
CATEGORIES=	graphics
MASTER_SITES=	http://source.clutter-project.org/sources/mx/1.0/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://blogs.gnome.org/thos/2010/05/20/mx-toolkit-1-0/
COMMENT=	Clutter-based widget set
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config intltool gmake msgfmt msgmerge xgettext

PKGCONFIG_OVERRIDE+=	mx-gtk.pc.in
PKGCONFIG_OVERRIDE+=	mx.pc.in

.include "../../graphics/clutter/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
