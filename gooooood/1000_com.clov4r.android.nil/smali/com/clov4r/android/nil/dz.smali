.class Lcom/clov4r/android/nil/dz;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/clov4r/android/nil/SystemPlayer;


# direct methods
.method private constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;Lcom/clov4r/android/nil/ci;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/dz;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->l:Landroid/widget/ImageButton;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    iget-boolean v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/SystemPlayer;->a()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/SystemPlayer;->l:Landroid/widget/ImageButton;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/clov4r/android/nil/dz;->b:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/clov4r/android/nil/dz;->a:I

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-virtual {v4}, Lcom/clov4r/android/nil/SystemPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/clov4r/android/nil/dz;->b:I

    iget-object v4, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-virtual {v4}, Lcom/clov4r/android/nil/SystemPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/clov4r/android/nil/dz;->a:I

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/clov4r/android/nil/dz;->a:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    neg-float v1, v2

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->a(Lcom/clov4r/android/nil/SystemPlayer;F)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/clov4r/android/nil/dz;->a:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    neg-float v1, v2

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->b(Lcom/clov4r/android/nil/SystemPlayer;F)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    iget v3, p0, Lcom/clov4r/android/nil/dz;->a:I

    iget v4, p0, Lcom/clov4r/android/nil/dz;->b:I

    invoke-static {v2, v1, v0, v3, v4}, Lcom/clov4r/android/nil/SystemPlayer;->a(Lcom/clov4r/android/nil/SystemPlayer;IIII)V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/clov4r/android/nil/SystemPlayer;->L:I

    iget-object v0, p0, Lcom/clov4r/android/nil/dz;->c:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/SystemPlayer;->a()V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
