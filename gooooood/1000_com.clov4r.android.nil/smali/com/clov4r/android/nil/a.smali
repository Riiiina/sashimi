.class Lcom/clov4r/android/nil/a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method private constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/clov4r/android/nil/CMPlayer;Lcom/clov4r/android/nil/ek;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/a;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/CMPlayer;->b()V

    iget-object v0, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    iget-boolean v0, v0, Lcom/clov4r/android/nil/CMPlayer;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/CMPlayer;->a()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
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

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

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

    float-to-int v2, v2

    int-to-float v2, v2

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

    iget v4, p0, Lcom/clov4r/android/nil/a;->a:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/clov4r/android/nil/a;->b:I

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v4}, Lcom/clov4r/android/nil/CMPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/clov4r/android/nil/a;->b:I

    iget-object v4, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v4}, Lcom/clov4r/android/nil/CMPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/clov4r/android/nil/a;->a:I

    :cond_1
    iget v4, p0, Lcom/clov4r/android/nil/a;->a:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/clov4r/android/nil/a;->a:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    neg-float v1, v2

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;F)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    neg-float v1, v2

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->b(Lcom/clov4r/android/nil/CMPlayer;F)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/clov4r/android/nil/a;->b:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    if-le v0, v2, :cond_5

    :cond_5
    iget-object v2, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    iget v3, p0, Lcom/clov4r/android/nil/a;->a:I

    iget v4, p0, Lcom/clov4r/android/nil/a;->b:I

    invoke-static {v2, v1, v0, v3, v4}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;IIII)V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/clov4r/android/nil/CMPlayer;->ac:I

    iget-object v0, p0, Lcom/clov4r/android/nil/a;->c:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/CMPlayer;->a()V

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
