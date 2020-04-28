.class public Lcom/chartcross/location/MxLLGeometry;
.super Ljava/lang/Object;
.source "MxLLGeometry.java"


# static fields
.field public static final PI:D = 3.1415926536


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CourseBetweenPoints(DDDD)D
    .locals 10
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 9
    const-wide v0, 0x400921fb544486e0L    # 3.1415926536

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    .line 10
    .local v0, "latr1":D
    const-wide p0, 0x400921fb544486e0L    # 3.1415926536

    mul-double/2addr p0, p2

    const-wide p2, 0x4066800000000000L    # 180.0

    div-double v2, p0, p2

    .line 11
    .local v2, "lonr1":D
    const-wide p0, 0x400921fb544486e0L    # 3.1415926536

    mul-double/2addr p0, p4

    const-wide p2, 0x4066800000000000L    # 180.0

    div-double v4, p0, p2

    .line 12
    .local v4, "latr2":D
    const-wide p0, 0x400921fb544486e0L    # 3.1415926536

    mul-double p0, p0, p6

    const-wide p2, 0x4066800000000000L    # 180.0

    div-double v6, p0, p2

    .line 14
    .local v6, "lonr2":D
    invoke-static/range {v0 .. v7}, Lcom/chartcross/location/MxLLGeometry;->DistanceR(DDDD)D

    .end local p0    # "lat1":D
    .end local p2    # "lon1":D
    move-result-wide v8

    .line 15
    .local v8, "distr":D
    invoke-static/range {v0 .. v9}, Lcom/chartcross/location/MxLLGeometry;->CourseBetweenPointsR(DDDDD)D

    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, p2

    const-wide p2, 0x400921fb544486e0L    # 3.1415926536

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static CourseBetweenPointsR(DDDDD)D
    .locals 2
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "dist"    # D

    .prologue
    .line 49
    sub-double p2, p6, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    .end local p2    # "lon1":D
    move-result-wide p2

    const-wide/16 p6, 0x0

    cmpl-double p2, p2, p6

    if-lez p2, :cond_0

    .line 51
    .end local p6    # "lon2":D
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    .end local p4    # "lat2":D
    invoke-static {p8, p9}, Ljava/lang/Math;->cos(D)D

    move-result-wide p6

    mul-double/2addr p4, p6

    sub-double/2addr p2, p4

    invoke-static {p8, p9}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    .end local p0    # "lat1":D
    mul-double/2addr p0, p4

    div-double p0, p2, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    .line 58
    .local p0, "tc1":D
    :goto_0
    return-wide p0

    .line 55
    .local p0, "lat1":D
    .restart local p4    # "lat2":D
    :cond_0
    const-wide p2, 0x401921fb544486e0L    # 6.2831853072

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    .end local p4    # "lat2":D
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    invoke-static {p8, p9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr p6, v0

    sub-double/2addr p4, p6

    invoke-static {p8, p9}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    .end local p0    # "lat1":D
    mul-double/2addr p0, p6

    div-double p0, p4, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    sub-double p0, p2, p0

    .local p0, "tc1":D
    goto :goto_0
.end method

.method public static Distance(DDDD)D
    .locals 8
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 77
    const-wide v0, 0x400921fb544486e0L    # 3.1415926536

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    .line 78
    .local v0, "latr1":D
    const-wide p0, 0x400921fb544486e0L    # 3.1415926536

    mul-double/2addr p0, p2

    const-wide p2, 0x4066800000000000L    # 180.0

    div-double v2, p0, p2

    .line 79
    .local v2, "lonr1":D
    const-wide p0, 0x400921fb544486e0L    # 3.1415926536

    mul-double/2addr p0, p4

    const-wide p2, 0x4066800000000000L    # 180.0

    div-double v4, p0, p2

    .line 80
    .local v4, "latr2":D
    const-wide p0, 0x400921fb544486e0L    # 3.1415926536

    mul-double/2addr p0, p6

    const-wide p2, 0x4066800000000000L    # 180.0

    div-double v6, p0, p2

    .line 82
    .local v6, "lonr2":D
    invoke-static/range {v0 .. v7}, Lcom/chartcross/location/MxLLGeometry;->DistanceR(DDDD)D

    .end local p0    # "lat1":D
    .end local p2    # "lon1":D
    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, p2

    const-wide p2, 0x409cf00000000000L    # 1852.0

    mul-double/2addr p0, p2

    const-wide p2, 0x400921fb544486e0L    # 3.1415926536

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static DistanceR(DDDD)D
    .locals 6
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 63
    cmpl-double v0, p0, p4

    if-nez v0, :cond_0

    cmpl-double v0, p2, p6

    if-nez v0, :cond_0

    .line 65
    const-wide/16 v0, 0x0

    .line 69
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double v4, p2, p6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    goto :goto_0
.end method
