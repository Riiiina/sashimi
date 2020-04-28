.class public Lcom/clearchannel/iheartradio/android/view/IHRViewFeaturedGallery;
.super Landroid/widget/Gallery;
.source "IHRViewFeaturedGallery.java"


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRActivity;)V
    .locals 0
    .param p1, "context"    # Lcom/clearchannel/iheartradio/controller/IHRActivity;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRActivity;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lcom/clearchannel/iheartradio/controller/IHRActivity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method private isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/view/IHRViewFeaturedGallery;->isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const/16 v0, 0x15

    .line 29
    .local v0, "kEvent":I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewFeaturedGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 30
    const/4 v1, 0x1

    return v1

    .line 27
    .end local v0    # "kEvent":I
    :cond_0
    const/16 v0, 0x16

    .restart local v0    # "kEvent":I
    goto :goto_0
.end method
