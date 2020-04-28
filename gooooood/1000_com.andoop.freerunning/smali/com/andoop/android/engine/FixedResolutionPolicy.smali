.class public Lcom/andoop/android/engine/FixedResolutionPolicy;
.super Ljava/lang/Object;
.source "FixedResolutionPolicy.java"

# interfaces
.implements Lcom/andoop/android/engine/EngineOptions$IResolutionPolicy;


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/andoop/android/engine/FixedResolutionPolicy;->mWidth:I

    .line 29
    iput p2, p0, Lcom/andoop/android/engine/FixedResolutionPolicy;->mHeight:I

    .line 30
    return-void
.end method


# virtual methods
.method public createLayoutParams(Landroid/util/DisplayMetrics;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p1, "pDisplayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/andoop/android/engine/FixedResolutionPolicy;->mWidth:I

    iget v2, p0, Lcom/andoop/android/engine/FixedResolutionPolicy;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 44
    return-object v0
.end method
