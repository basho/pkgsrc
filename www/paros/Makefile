# $NetBSD: Makefile,v 1.12 2009/09/29 17:06:15 wiz Exp $
#

DISTNAME=	paros-3.2.13-unix
PKGNAME=	${DISTNAME:S/-unix//}
PKGREVISION=	1
CATEGORIES=	www security java
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=paros/}
EXTRACT_SUFX=	.zip

MAINTAINER=	salo@NetBSD.org
HOMEPAGE=	http://www.parosproxy.org/
COMMENT=	HTTP/HTTPS proxy for assessing web application vulnerabilities

PKG_DESTDIR_SUPPORT=	user-destdir

NO_BUILD=	yes
USE_JAVA2=	yes
USE_JAVA=	run
USE_TOOLS+=	pax

INSTALLATION_DIRS=	bin lib

WRKSRC=		${WRKDIR}/${PKGBASE}

SUBST_CLASSES+=		java
SUBST_MESSAGE.java=	Fixing hardcoded path to Java.
SUBST_STAGE.java=	pre-configure
SUBST_FILES.java=	${WRKSRC}/startserver.sh
SUBST_SED.java=		-e 's,java ,${PKG_JAVA_HOME}/bin/&,'

do-configure:
	@(${ECHO} '#! /bin/sh' && 			\
		${ECHO} cd ${PREFIX}/lib/${PKGBASE} &&	\
		${CAT} ${WRKSRC}/startserver.sh &&	\
		${ECHO}) > ${WRKDIR}/paros.sh

do-install:
	@cd ${WRKDIR} && pax -rw -pm ${PKGBASE} ${DESTDIR}${PREFIX}/lib/
	${INSTALL_SCRIPT} ${WRKDIR}/paros.sh ${DESTDIR}${PREFIX}/bin/paros

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
