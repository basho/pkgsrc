# $NetBSD: buildlink3.mk,v 1.8 2011/11/01 23:18:24 sbd Exp $

BUILDLINK_TREE+=	py-qt4-qscintilla

.if !defined(PY_QT4_QSCINTILLA_BUILDLINK3_MK)
PY_QT4_QSCINTILLA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-qt4-qscintilla+=	${PYPKGPREFIX}-qt4-qscintilla>=2.4.3
BUILDLINK_ABI_DEPENDS.py-qt4-qscintilla?=	${PYPKGPREFIX}-qt4-qscintilla>=2.5.1nb1
BUILDLINK_PKGSRCDIR.py-qt4-qscintilla?=	../../x11/py-qt4-qscintilla

.include "../../x11/py-sip/buildlink3.mk"
.include "../../x11/py-qt4/buildlink3.mk"
.include "../../x11/qt4-qscintilla/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.endif	# PY_QT4_QSCINTILLA_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-qt4-qscintilla
