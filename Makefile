# $FreeBSD$

PORTNAME= with
DISTVERSION= g20171025
CATEGORIES= misc
LICENSE= APACHE20 
MAINTAINER= youremail@example.com
COMMENT= Command prefixing for continuous workflow using a single tool.

USE_GITHUB= yes
GH_ACCOUNT= mchav
GH_PROJECT= with
GH_TAGNAME= 3d0ed3d

do-build:

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/with ${STAGEDIR}${PREFIX}/bin/with \
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/bash_completion.d
	${INSTALL_DATA} ${WRKSRC}/with.bash-completion ${STAGEDIR}${PREFIX}/etc/bash_completion.d/with.bash-completion

PLIST_FILES= bin/with \
	     etc/bash_completion.d/with.bash-completion

.include <bsd.port.mk>
