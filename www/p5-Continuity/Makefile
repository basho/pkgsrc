# $NetBSD: Makefile,v 1.4 2011/11/18 00:15:56 hiramatsu Exp $

DISTNAME=	Continuity-1.5
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/A/AW/AWWAIID/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Continuity/
COMMENT=	Perl 5 module to abstract statelessness of HTTP
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/Continuity/.packlist

BUILD_DEPENDS+=	p5-Test-WWW-Mechanize-[0-9]*:../../www/p5-Test-WWW-Mechanize
DEPENDS+=	p5-Event-[0-9]*:../../devel/p5-Event
DEPENDS+=	p5-Coro>=4.37:../../devel/p5-Coro
DEPENDS+=	p5-libwww>=1.36:../../www/p5-libwww

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
