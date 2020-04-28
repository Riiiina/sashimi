.class public Lcom/chartcross/location/MxLowPassFilter;
.super Ljava/lang/Object;
.source "MxLowPassFilter.java"


# instance fields
.field private mBuffer:[D

.field private mIndex:I

.field private mSamples:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x4b

    iput v0, p0, Lcom/chartcross/location/MxLowPassFilter;->mSamples:I

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartcross/location/MxLowPassFilter;->mIndex:I

    .line 7
    iget v0, p0, Lcom/chartcross/location/MxLowPassFilter;->mSamples:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/chartcross/location/MxLowPassFilter;->mBuffer:[D

    .line 3
    return-void
.end method


# virtual methods
.method public AddSample(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 20
    iget-object v0, p0, Lcom/chartcross/location/MxLowPassFilter;->mBuffer:[D

    iget v1, p0, Lcom/chartcross/location/MxLowPassFilter;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/chartcross/location/MxLowPassFilter;->mIndex:I

    aput-wide p1, v0, v1

    .line 21
    iget v0, p0, Lcom/chartcross/location/MxLowPassFilter;->mIndex:I

    iget v1, p0, Lcom/chartcross/location/MxLowPassFilter;->mSamples:I

    if-lt v0, v1, :cond_0

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartcross/location/MxLowPassFilter;->mIndex:I

    .line 25
    :cond_0
    return-void
.end method

.method public Clear()V
    .locals 4

    .prologue
    .line 11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/chartcross/location/MxLowPassFilter;->mSamples:I

    if-lt v0, v1, :cond_0

    .line 15
    const/4 v1, 0x0

    iput v1, p0, Lcom/chartcross/location/MxLowPassFilter;->mIndex:I

    .line 16
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/chartcross/location/MxLowPassFilter;->mBuffer:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public GetValue()D
    .locals 5

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .local v0, "avg":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/chartcross/location/MxLowPassFilter;->mSamples:I

    if-lt v2, v3, :cond_0

    .line 34
    iget v3, p0, Lcom/chartcross/location/MxLowPassFilter;->mSamples:I

    int-to-double v3, v3

    div-double/2addr v0, v3

    .line 35
    return-wide v0

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/chartcross/location/MxLowPassFilter;->mBuffer:[D

    aget-wide v3, v3, v2

    add-double/2addr v0, v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
