# $NetBSD: Makefile,v 1.1.1.1 2010/09/08 10:20:15 manu Exp $
#

PKGNAME=	pluged-0.1
DISTNAME=	pluged
CATEGORIES=	sysutils
MASTER_SITES=	http://plug.gnux.info/
EXTRACT_SUFX=	.tbz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://plug.gnux.info/
COMMENT=	USB plug/unplug monitoring daemon
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

BUILDLINK_TRANSFORM=	rm:-Werror

EGDIR=		${PREFIX}/share/examples/pluged
RCDDIR=		${PREFIX}/share/examples/rc.d
CONF_FILES+=	${EGDIR}/pluged.conf ${PREFIX}/etc/pluged.conf

do-install:
	${INSTALL_PROGRAM_DIR} ${DESTDIR}/${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${DESTDIR}/${EGDIR}
	${INSTALL_DATA_DIR} ${DESTDIR}/${RCDDIR}
	${INSTALL_PROGRAM} ${WRKSRC}/pluged ${DESTDIR}/${PREFIX}/sbin/pluged
	${INSTALL_DATA} ${WRKSRC}/pluged.conf ${DESTDIR}/${EGDIR}/pluged.conf
	${INSTALL_DATA} ${WRKSRC}/rc.d/pluged ${DESTDIR}/${RCDDIR}/pluged

.include "../../mk/bsd.pkg.mk"
