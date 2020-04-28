.class Lcom/chartcross/location/MxLatitudeBand;
.super Ljava/lang/Object;
.source "MxCoordConverter.java"


# instance fields
.field m_Letter:I

.field m_MinNorthing:D

.field m_North:D

.field m_South:D


# direct methods
.method constructor <init>(IDDD)V
    .locals 0
    .param p1, "letter"    # I
    .param p2, "min_northing"    # D
    .param p4, "north"    # D
    .param p6, "south"    # D

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/chartcross/location/MxLatitudeBand;->m_Letter:I

    .line 71
    iput-wide p2, p0, Lcom/chartcross/location/MxLatitudeBand;->m_MinNorthing:D

    .line 72
    iput-wide p4, p0, Lcom/chartcross/location/MxLatitudeBand;->m_North:D

    .line 73
    iput-wide p6, p0, Lcom/chartcross/location/MxLatitudeBand;->m_South:D

    .line 74
    return-void
.end method
