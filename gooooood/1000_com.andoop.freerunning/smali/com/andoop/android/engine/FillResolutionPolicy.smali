.class public Lcom/andoop/android/engine/FillResolutionPolicy;
.super Ljava/lang/Object;
.source "FillResolutionPolicy.java"

# interfaces
.implements Lcom/andoop/android/engine/EngineOptions$IResolutionPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLayoutParams(Landroid/util/DisplayMetrics;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "pDisplayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v1, -0x1

    .line 34
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
