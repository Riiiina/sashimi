.class Lcom/chartcross/location/MxDatum;
.super Ljava/lang/Object;
.source "MxCoordConverter.java"


# static fields
.field static final PI:D = 3.141592653589793


# instance fields
.field m_DeltaX:D

.field m_DeltaY:D

.field m_DeltaZ:D

.field m_EastLongitude:D

.field m_EllipsoidIndex:I

.field m_NorthLatitude:D

.field m_RotationX:D

.field m_RotationY:D

.field m_RotationZ:D

.field m_ScaleFactor:D

.field m_SigmaX:D

.field m_SigmaY:D

.field m_SigmaZ:D

.field m_SouthLatitude:D

.field m_Type:I

.field m_WestLongitude:D


# direct methods
.method constructor <init>(IIDDDDDDDDDD)V
    .locals 2
    .param p1, "Type"    # I
    .param p2, "EllipsoidIndex"    # I
    .param p3, "DeltaX"    # D
    .param p5, "SigmaX"    # D
    .param p7, "DeltaY"    # D
    .param p9, "SigmaY"    # D
    .param p11, "DeltaZ"    # D
    .param p13, "SigmaZ"    # D
    .param p15, "SouthLatitude"    # D
    .param p17, "NorthLatitude"    # D
    .param p19, "WestLongitude"    # D
    .param p21, "EastLongitude"    # D

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/chartcross/location/MxDatum;->m_Type:I

    .line 43
    iput p2, p0, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    .line 44
    iput-wide p3, p0, Lcom/chartcross/location/MxDatum;->m_DeltaX:D

    .line 45
    iput-wide p7, p0, Lcom/chartcross/location/MxDatum;->m_DeltaY:D

    .line 46
    iput-wide p11, p0, Lcom/chartcross/location/MxDatum;->m_DeltaZ:D

    .line 47
    iput-wide p5, p0, Lcom/chartcross/location/MxDatum;->m_SigmaX:D

    .line 48
    iput-wide p9, p0, Lcom/chartcross/location/MxDatum;->m_SigmaY:D

    .line 49
    iput-wide p13, p0, Lcom/chartcross/location/MxDatum;->m_SigmaZ:D

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartcross/location/MxDatum;->m_RotationX:D

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartcross/location/MxDatum;->m_RotationY:D

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartcross/location/MxDatum;->m_RotationZ:D

    .line 53
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/chartcross/location/MxDatum;->m_ScaleFactor:D

    .line 54
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, p19

    iput-wide v0, p0, Lcom/chartcross/location/MxDatum;->m_WestLongitude:D

    .line 55
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, p21

    iput-wide v0, p0, Lcom/chartcross/location/MxDatum;->m_EastLongitude:D

    .line 56
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, p15

    iput-wide v0, p0, Lcom/chartcross/location/MxDatum;->m_SouthLatitude:D

    .line 57
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, p17

    iput-wide v0, p0, Lcom/chartcross/location/MxDatum;->m_NorthLatitude:D

    .line 58
    return-void
.end method
