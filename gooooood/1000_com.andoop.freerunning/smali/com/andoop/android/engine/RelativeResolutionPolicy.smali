.class public Lcom/andoop/android/engine/RelativeResolutionPolicy;
.super Ljava/lang/Object;
.source "RelativeResolutionPolicy.java"

# interfaces
.implements Lcom/andoop/android/engine/EngineOptions$IResolutionPolicy;


# instance fields
.field private final mHeightScale:F

.field private final mWidthScale:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "pScale"    # F

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/andoop/android/engine/RelativeResolutionPolicy;->mWidthScale:F

    .line 29
    iput p1, p0, Lcom/andoop/android/engine/RelativeResolutionPolicy;->mHeightScale:F

    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "pWidthScale"    # I
    .param p2, "pHeightScale"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    int-to-float v0, p1

    iput v0, p0, Lcom/andoop/android/engine/RelativeResolutionPolicy;->mWidthScale:F

    .line 34
    int-to-float v0, p2

    iput v0, p0, Lcom/andoop/android/engine/RelativeResolutionPolicy;->mHeightScale:F

    .line 35
    return-void
.end method


# virtual methods
.method public createLayoutParams(Landroid/util/DisplayMetrics;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 5
    .param p1, "pDisplayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 47
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/andoop/android/engine/RelativeResolutionPolicy;->mWidthScale:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 48
    .local v2, "width":I
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/andoop/android/engine/RelativeResolutionPolicy;->mHeightScale:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 50
    .local v0, "height":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    return-object v1
.end method
