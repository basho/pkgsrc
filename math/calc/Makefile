# $NetBSD: Makefile,v 1.24 2010/11/13 21:08:59 shattered Exp $

DISTNAME=	calc-2.02f
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	2
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_GNU:=calc/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://directory.fsf.org/project/calc/
COMMENT=	Advanced Calculator for GNU Emacs

PKG_DESTDIR_SUPPORT=	user-destdir

EMACS_VERSIONS_ACCEPTED=	emacs21 emacs21nox emacs20 \
				xemacs215, xemacs215nox, xemacs214, xemacs214nox

.include "../../editors/emacs/modules.mk"

MAKE_ENV+=	EMACS=${EMACS_FLAVOR:Q}

USE_TOOLS+=	makeinfo
INFO_FILES=	# PLIST

INSTALLATION_DIRS=	${EMACS_INFOPREFIX} ${EMACS_LISPPREFIX}/calc

do-install:
	${INSTALL_DATA} ${WRKSRC}/*.el ${WRKSRC}/*.elc			\
		${WRKSRC}/calccard.tex ${DESTDIR}${EMACS_LISPPREFIX}/calc
	cd ${WRKSRC}; for f in *.info *.info-[0-9]*; do			\
		${TEST} ! -f "$$f" ||					\
		${INSTALL_DATA} "$$f" ${DESTDIR}${EMACS_INFOPREFIX};	\
	done

.include "../../mk/bsd.pkg.mk"
