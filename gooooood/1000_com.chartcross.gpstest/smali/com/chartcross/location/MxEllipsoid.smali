.class Lcom/chartcross/location/MxEllipsoid;
.super Ljava/lang/Object;
.source "MxCoordConverter.java"


# instance fields
.field public m_EquatorialRadius:D

.field public m_InverseFlattening:D

.field public m_PolarRadius:D


# direct methods
.method constructor <init>(DDD)V
    .locals 0
    .param p1, "EquatorialRadius"    # D
    .param p3, "PolarRadius"    # D
    .param p5, "InverseFlattening"    # D

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/chartcross/location/MxEllipsoid;->m_EquatorialRadius:D

    .line 14
    iput-wide p3, p0, Lcom/chartcross/location/MxEllipsoid;->m_PolarRadius:D

    .line 15
    iput-wide p5, p0, Lcom/chartcross/location/MxEllipsoid;->m_InverseFlattening:D

    .line 16
    return-void
.end method
