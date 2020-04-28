.class public Lcom/chartcross/location/MxLLConvert;
.super Ljava/lang/Object;
.source "MxLLConvert.java"


# instance fields
.field public mDecimal:D

.field public mDecimalMinutes:D

.field public mDegrees:D

.field public mMinutes:D

.field public mSeconds:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "decimal"    # D

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/chartcross/location/MxLLConvert;->mDecimal:D

    .line 20
    invoke-virtual {p0}, Lcom/chartcross/location/MxLLConvert;->decimalToDMS()V

    .line 21
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "degrees"    # D
    .param p3, "minutes"    # D
    .param p5, "seconds"    # D

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    .line 26
    iput-wide p3, p0, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    .line 27
    iput-wide p5, p0, Lcom/chartcross/location/MxLLConvert;->mSeconds:D

    .line 28
    invoke-virtual {p0}, Lcom/chartcross/location/MxLLConvert;->DMSToDecimal()V

    .line 29
    return-void
.end method


# virtual methods
.method public DMSToDecimal()V
    .locals 8

    .prologue
    .line 105
    iget-wide v2, p0, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mSeconds:D

    const-wide v6, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v6

    add-double v0, v2, v4

    .line 110
    .local v0, "fraction":D
    iget-wide v2, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 112
    iget-wide v2, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/chartcross/location/MxLLConvert;->mDecimal:D

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-wide v2, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/chartcross/location/MxLLConvert;->mDecimal:D

    goto :goto_0
.end method

.method public decimalToDMS()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 39
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDecimal:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    .line 44
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    cmpg-double v4, v4, v10

    if-gez v4, :cond_0

    .line 46
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    add-double/2addr v4, v12

    iput-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    .line 52
    :cond_0
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDecimal:D

    iget-wide v6, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 57
    .local v0, "fraction":D
    const-wide v4, 0x40ac200000000000L    # 3600.0

    mul-double v2, v0, v4

    .line 62
    .local v2, "seconds":D
    div-double v4, v2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    .line 67
    mul-double v4, v0, v8

    iput-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDecimalMinutes:D

    .line 72
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    mul-double/2addr v4, v8

    sub-double v4, v2, v4

    iput-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mSeconds:D

    .line 77
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mSeconds:D

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-nez v4, :cond_1

    .line 79
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    add-double/2addr v4, v12

    iput-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    .line 80
    iput-wide v10, p0, Lcom/chartcross/location/MxLLConvert;->mSeconds:D

    .line 83
    :cond_1
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-nez v4, :cond_2

    .line 85
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    cmpg-double v4, v4, v10

    if-gez v4, :cond_3

    .line 87
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    sub-double/2addr v4, v12

    iput-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    .line 93
    :goto_0
    iput-wide v10, p0, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    .line 95
    :cond_2
    return-void

    .line 91
    :cond_3
    iget-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    add-double/2addr v4, v12

    iput-wide v4, p0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    goto :goto_0
.end method
