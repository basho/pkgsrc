# $NetBSD: Makefile,v 1.5 2011/08/14 12:26:20 obache Exp $
#

DISTNAME=	MooseX-App-Cmd-0.06
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MooseX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MooseX-App-Cmd-0.05/
COMMENT=	Perl 5 module providing MooseX::Getopt and App::Cmd mashup
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/MooseX/App/Cmd/.packlist

DEPENDS+=	p5-App-Cmd>=0.300:../../devel/p5-App-Cmd
DEPENDS+=	p5-Getopt-Long-Descriptive-[0-9]*:../../devel/p5-Getopt-Long-Descriptive
DEPENDS+=	p5-Moose>=0.86:../../devel/p5-Moose
DEPENDS+=	p5-MooseX-Getopt>=0.18:../../devel/p5-MooseX-Getopt

# For test target
BUILD_DEPENDS+=	p5-Test-use-ok-[0-9]*:../../devel/p5-Test-use-ok
BUILD_DEPENDS+=	p5-Test-Output-[0-9]*:../../devel/p5-Test-Output

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
