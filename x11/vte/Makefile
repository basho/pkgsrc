# $NetBSD: Makefile,v 1.87 2011/11/01 06:03:09 sbd Exp $
#

.include "Makefile.common"

PKGREVISION=	1
CATEGORIES=	x11

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/
COMMENT=	Terminal widget with improved accessibility and I18N support
LICENSE=	gnu-lgpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config

CONFIGURE_ARGS+=	--disable-python
CONFIGURE_ARGS+=	--with-ft-exec-prefix=${BUILDLINK_PREFIX.freetype2}
CONFIGURE_ARGS+=	--enable-Bsymbolic=auto

BUILDLINK_API_DEPENDS.glib2+=		glib2>=2.10.0
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
# for FC_WIDTH
BUILDLINK_API_DEPENDS.fontconfig+=	fontconfig>=2.1.93
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
BUILDLINK_API_DEPENDS.gtk2+=		gtk2+>=2.10.0
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
