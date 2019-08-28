SERVICE = fisean
REGGAE_PATH := /usr/local/share/reggae
XORG = YES

.if exists(provisioners.mk)
.include <provisioners.mk>
.endif
.include <${REGGAE_PATH}/mk/service.mk>
