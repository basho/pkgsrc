# $NetBSD: Makefile,v 1.6 2011/10/27 12:23:12 hiramatsu Exp $

DISTNAME=	Parallel-Prefork-0.11
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	parallel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Parallel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Parallel-Prefork/
COMMENT=	Perl 5 simple prefork server framework
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Class-Accessor-Lite>=0.04:../../devel/p5-Class-Accessor-Lite
DEPENDS+=	p5-List-MoreUtils-[0-9]*:../../devel/p5-List-MoreUtils
DEPENDS+=	p5-Proc-Wait3>=0.03:../../devel/p5-Proc-Wait3
DEPENDS+=	p5-Scope-Guard-[0-9]*:../../devel/p5-Scope-Guard

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Parallel/Prefork/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
