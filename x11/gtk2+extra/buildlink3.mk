# $NetBSD: buildlink3.mk,v 1.17 2011/11/01 06:02:52 sbd Exp $

BUILDLINK_TREE+=	gtk2+extra

.if !defined(GTK2_EXTRA_BUILDLINK3_MK)
GTK2_EXTRA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gtk2+extra+=	gtk2+extra>=2.1.1
BUILDLINK_ABI_DEPENDS.gtk2+extra?=	gtk2+extra>=2.1.2nb6
BUILDLINK_PKGSRCDIR.gtk2+extra?=	../../x11/gtk2+extra

.include "../../x11/gtk2/buildlink3.mk"
.endif # GTK2_EXTRA_BUILDLINK3_MK

BUILDLINK_TREE+=	-gtk2+extra
