.class public Lcom/adobe/reader/ARGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# static fields
.field private static final SNAP_FLICK_THRESHOLD:D = 1.5

.field public static final TIME_BEFORE_ALLOWING_SCROLL_AFTER_PINCH:I = 0x1f4

.field private static final VELOCITY_ADJUSTMENT_FACTOR_SMARTPHONE:D = 0.75

.field private static final VELOCITY_ADJUSTMENT_FACTOR_TABLET:D = 0.9


# instance fields
.field private mDoNotShowUIElemsOnTap:Z

.field private mMouseDownX:F

.field private mMouseDownY:F

.field private mPageView:Lcom/adobe/reader/PageView;

.field private mVelocityAdjustmentFactor:D


# direct methods
.method public constructor <init>(Lcom/adobe/reader/PageView;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/ARGestureListener;->mDoNotShowUIElemsOnTap:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/adobe/reader/ARGestureListener;->mVelocityAdjustmentFactor:D

    iput-object p1, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    iput-wide v1, p0, Lcom/adobe/reader/ARGestureListener;->mVelocityAdjustmentFactor:D

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isRunningOnTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iput-wide v0, p0, Lcom/adobe/reader/ARGestureListener;->mVelocityAdjustmentFactor:D

    :cond_0
    return-void
.end method

.method private handleTap(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->getmLastPinchGestureTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->handleTap(DD)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/adobe/reader/ARGestureListener;->mDoNotShowUIElemsOnTap:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/ARGestureListener;->mDoNotShowUIElemsOnTap:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0}, Lcom/adobe/reader/AdobeReader;->showOrHideUIElemsForTap()V

    goto :goto_0
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->handleTap(DD)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/reader/PageView;->doubleTapZoom(DD)V

    :cond_1
    move v0, v5

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/adobe/reader/ARGestureListener;->mDoNotShowUIElemsOnTap:Z

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/adobe/reader/ARGestureListener;->mMouseDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/adobe/reader/ARGestureListener;->mMouseDownY:F

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    iget v1, p0, Lcom/adobe/reader/ARGestureListener;->mMouseDownX:F

    iget v2, p0, Lcom/adobe/reader/ARGestureListener;->mMouseDownY:F

    invoke-virtual {v0, v1, v2}, Lcom/adobe/reader/PageView;->setTouchdownPoint(FF)V

    move v0, v3

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->isDoubleTapAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v6, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->getmLastPinchGestureTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v0

    float-to-double v4, v1

    mul-double/2addr v4, v7

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    move v0, v9

    move v1, p3

    :goto_1
    float-to-double v1, v1

    iget-wide v3, p0, Lcom/adobe/reader/ARGestureListener;->mVelocityAdjustmentFactor:D

    mul-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/adobe/reader/ARGestureListener;->mVelocityAdjustmentFactor:D

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iget-object v2, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/reader/PageView;->handleFling(FF)V

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0, v6}, Lcom/adobe/reader/AdobeReader;->resetTimerHandlerForUIElems(Z)V

    move v0, v6

    goto :goto_0

    :cond_4
    float-to-double v1, v1

    float-to-double v3, v0

    mul-double/2addr v3, v7

    cmpl-double v0, v1, v3

    if-lez v0, :cond_5

    move v0, p4

    move v1, v9

    goto :goto_1

    :cond_5
    move v0, p4

    move v1, p3

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/reader/ARGestureListener;->handleTap(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->isDoubleTapAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v5, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v2}, Lcom/adobe/reader/PageView;->getmLastPinchGestureTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/adobe/reader/ARGestureListener;->mMouseDownX:F

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iget v3, p0, Lcom/adobe/reader/ARGestureListener;->mMouseDownY:F

    sub-float/2addr v3, v1

    float-to-int v3, v3

    iget-object v4, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v4}, Lcom/adobe/reader/PageView;->inReflowMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v4, v2, v3}, Lcom/adobe/reader/PageView;->handleScroll(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iput v0, p0, Lcom/adobe/reader/ARGestureListener;->mMouseDownX:F

    iput v1, p0, Lcom/adobe/reader/ARGestureListener;->mMouseDownY:F

    iget-object v0, p0, Lcom/adobe/reader/ARGestureListener;->mPageView:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    invoke-virtual {p0, v5}, Lcom/adobe/reader/AdobeReader;->resetTimerHandlerForUIElems(Z)V

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/adobe/reader/ARGestureListener;->handleTap(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method
