# $NetBSD: Makefile,v 1.7 2008/08/12 10:16:54 obache Exp $

PKGNAME=	${DISTNAME:S/cyrus-sasl/cy2-crammd5/}
COMMENT=	Cyrus SASL CRAM-MD5 authentication plugin
SASL_PLUGIN=	yes

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=	cyrus-sasl<=2.1.19nb1

.include "../../security/cyrus-sasl/Makefile.common"

CONFIGURE_ARGS+=	--enable-cram

BUILD_DIRS=	${WRKSRC}/plugins
BUILD_TARGET=	libcrammd5.la

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PLUGINDIR}
	cd ${WRKSRC}/plugins && ${SHLIBTOOL} --mode=install		\
		${INSTALL_PROGRAM} libcrammd5.la ${DESTDIR}${PLUGINDIR}

.include "../../mk/bsd.pkg.mk"
