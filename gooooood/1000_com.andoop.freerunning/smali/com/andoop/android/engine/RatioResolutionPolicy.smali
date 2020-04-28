.class public Lcom/andoop/android/engine/RatioResolutionPolicy;
.super Ljava/lang/Object;
.source "RatioResolutionPolicy.java"

# interfaces
.implements Lcom/andoop/android/engine/EngineOptions$IResolutionPolicy;


# instance fields
.field private final mRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pRatio"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/andoop/android/engine/RatioResolutionPolicy;->mRatio:F

    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "pWidthRatio"    # I
    .param p2, "pHeightRatio"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/RatioResolutionPolicy;->mRatio:F

    .line 32
    return-void
.end method


# virtual methods
.method public createLayoutParams(Landroid/util/DisplayMetrics;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6
    .param p1, "pDisplayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 44
    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 48
    .local v2, "realRatio":F
    iget v4, p0, Lcom/andoop/android/engine/RatioResolutionPolicy;->mRatio:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    .line 49
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    .local v3, "width":I
    int-to-float v4, v3

    iget v5, p0, Lcom/andoop/android/engine/RatioResolutionPolicy;->mRatio:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 56
    .local v0, "height":I
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    return-object v1

    .line 52
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "width":I
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 53
    .restart local v0    # "height":I
    int-to-float v4, v0

    iget v5, p0, Lcom/andoop/android/engine/RatioResolutionPolicy;->mRatio:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .restart local v3    # "width":I
    goto :goto_0
.end method
