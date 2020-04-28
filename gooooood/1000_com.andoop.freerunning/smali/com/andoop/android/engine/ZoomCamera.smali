.class public Lcom/andoop/android/engine/ZoomCamera;
.super Lcom/andoop/android/engine/Camera;
.source "ZoomCamera.java"


# static fields
.field public static final MAX_ZOOM_FACTOR:F = 2.0f

.field public static final MIN_ZOOM_FACTOR:F = 0.2f


# instance fields
.field private mMaxZoom:F

.field private mMinZoom:F

.field private mSmoothZoom:Z

.field private mSmoothZoomVelocity:F

.field private mTargetZoomFactor:F

.field private mZoomFactor:F

.field private mZoomFactor1:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/andoop/android/engine/Camera;-><init>(FFFF)V

    .line 19
    iput v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    .line 20
    iput v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor1:F

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoom:Z

    .line 23
    iput v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mTargetZoomFactor:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoomVelocity:F

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mMaxZoom:F

    .line 27
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mMinZoom:F

    .line 32
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 110
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getHeight()F

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor1:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getMaxX()F
    .locals 3

    .prologue
    .line 71
    iget v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 72
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getMaxX()F

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/andoop/android/engine/ZoomCamera;->getCenterX()F

    move-result v0

    .line 75
    .local v0, "centerX":F
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getMaxX()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor1:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method public getMaxY()F
    .locals 3

    .prologue
    .line 91
    iget v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 92
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getMaxY()F

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/andoop/android/engine/ZoomCamera;->getCenterY()F

    move-result v0

    .line 95
    .local v0, "centerY":F
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getMaxY()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor1:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method public getMinX()F
    .locals 3

    .prologue
    .line 61
    iget v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 62
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getMinX()F

    move-result v1

    .line 65
    :goto_0
    return v1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/andoop/android/engine/ZoomCamera;->getCenterX()F

    move-result v0

    .line 65
    .local v0, "centerX":F
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getMinX()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor1:F

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    goto :goto_0
.end method

.method public getMinY()F
    .locals 3

    .prologue
    .line 81
    iget v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 82
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getMinY()F

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/andoop/android/engine/ZoomCamera;->getCenterY()F

    move-result v0

    .line 85
    .local v0, "centerY":F
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getMinY()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor1:F

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    goto :goto_0
.end method

.method protected getScaleX()F
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 117
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mScaleX:F

    .line 119
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mScaleX:F

    iget v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected getScaleY()F
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mScaleY:F

    .line 126
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mScaleY:F

    iget v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getWidth()F

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor1:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getZoomFactor()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    return v0
.end method

.method public onUpdate(F)V
    .locals 5
    .param p1, "pSeconds"    # F

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-boolean v3, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoom:Z

    if-eqz v3, :cond_0

    .line 149
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    .line 150
    .local v0, "currentZoomFactor":F
    iget v2, p0, Lcom/andoop/android/engine/ZoomCamera;->mTargetZoomFactor:F

    .line 151
    .local v2, "targetZoomFactor":F
    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    .line 152
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoom:Z

    .line 164
    .end local v0    # "currentZoomFactor":F
    .end local v2    # "targetZoomFactor":F
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/andoop/android/engine/Camera;->onUpdate(F)V

    .line 165
    return-void

    .line 155
    .restart local v0    # "currentZoomFactor":F
    .restart local v2    # "targetZoomFactor":F
    :cond_1
    sub-float v1, v0, v2

    .line 156
    .local v1, "diffZoomFactor":F
    cmpl-float v3, v1, v4

    if-lez v3, :cond_2

    .line 157
    iget v3, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoomVelocity:F

    mul-float/2addr v3, p1

    sub-float v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/andoop/android/engine/ZoomCamera;->setZoomFactor(F)V

    goto :goto_0

    .line 159
    :cond_2
    cmpg-float v3, v1, v4

    if-gez v3, :cond_0

    .line 160
    iget v3, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoomVelocity:F

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/andoop/android/engine/ZoomCamera;->setZoomFactor(F)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 130
    invoke-super {p0}, Lcom/andoop/android/engine/Camera;->reset()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoom:Z

    .line 132
    iput v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    .line 133
    iput v1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor1:F

    .line 134
    return-void
.end method

.method public setSmoothZoom(FF)V
    .locals 1
    .param p1, "pTargetZoomFactor"    # F
    .param p2, "pZoomVelocity"    # F

    .prologue
    .line 137
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoom:Z

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoom:Z

    .line 142
    iput p1, p0, Lcom/andoop/android/engine/ZoomCamera;->mTargetZoomFactor:F

    .line 143
    iput p2, p0, Lcom/andoop/android/engine/ZoomCamera;->mSmoothZoomVelocity:F

    goto :goto_0
.end method

.method public setZoomBound(FF)V
    .locals 0
    .param p1, "pMin"    # F
    .param p2, "pMax"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/andoop/android/engine/ZoomCamera;->mMinZoom:F

    .line 38
    iput p2, p0, Lcom/andoop/android/engine/ZoomCamera;->mMaxZoom:F

    .line 39
    return-void
.end method

.method public setZoomFactor(F)V
    .locals 1
    .param p1, "pZoomFactor"    # F

    .prologue
    .line 46
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mMaxZoom:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 47
    iget p1, p0, Lcom/andoop/android/engine/ZoomCamera;->mMaxZoom:F

    .line 53
    :cond_0
    :goto_0
    iput p1, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor:F

    .line 54
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mZoomFactor1:F

    .line 57
    :cond_1
    return-void

    .line 49
    :cond_2
    iget v0, p0, Lcom/andoop/android/engine/ZoomCamera;->mMinZoom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 50
    iget p1, p0, Lcom/andoop/android/engine/ZoomCamera;->mMinZoom:F

    goto :goto_0
.end method
