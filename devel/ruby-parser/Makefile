# $NetBSD: Makefile,v 1.8 2011/12/15 15:07:27 taca Exp $

DISTNAME=	ruby_parser-2.3.1
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/ruby_//}
CATEGORIES=	devel

MAINTAINER=	filip@joyent.com
HOMEPAGE=	http://rubyforge.org/projects/parsetree/
COMMENT=	Ruby parser written in pure ruby
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-sexp-processor>=3.0<4:../../devel/ruby-sexp-processor

CONFLICTS+=	ruby[1-9][0-9]-ruby-parser-[0-9]*

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
