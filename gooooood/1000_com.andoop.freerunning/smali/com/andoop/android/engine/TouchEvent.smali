.class public Lcom/andoop/android/engine/TouchEvent;
.super Ljava/lang/Object;
.source "TouchEvent.java"


# static fields
.field private static final TOUCHEVENT_RECYCLE_LOCK:Ljava/lang/Object;

.field private static final TOUCHEVENT_STACK:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/andoop/android/engine/TouchEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAction:I

.field protected mMotionEvent:Landroid/view/MotionEvent;

.field protected mPointerID:I

.field protected mX:F

.field protected mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/TouchEvent;->TOUCHEVENT_STACK:Ljava/util/Stack;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/andoop/android/engine/TouchEvent;->TOUCHEVENT_RECYCLE_LOCK:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/andoop/android/engine/TouchEvent;
    .locals 2

    .prologue
    .line 37
    sget-object v1, Lcom/andoop/android/engine/TouchEvent;->TOUCHEVENT_RECYCLE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/andoop/android/engine/TouchEvent;->TOUCHEVENT_STACK:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/andoop/android/engine/TouchEvent;

    invoke-direct {v0}, Lcom/andoop/android/engine/TouchEvent;-><init>()V

    monitor-exit v1

    .line 41
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/andoop/android/engine/TouchEvent;->TOUCHEVENT_STACK:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andoop/android/engine/TouchEvent;

    monitor-exit v1

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static recycle(Lcom/andoop/android/engine/TouchEvent;)V
    .locals 2
    .param p0, "pTouchEvent"    # Lcom/andoop/android/engine/TouchEvent;

    .prologue
    .line 47
    sget-object v0, Lcom/andoop/android/engine/TouchEvent;->TOUCHEVENT_RECYCLE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/andoop/android/engine/TouchEvent;->TOUCHEVENT_STACK:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v0

    .line 50
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/andoop/android/engine/TouchEvent;->mAction:I

    return v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/andoop/android/engine/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPointerID()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/andoop/android/engine/TouchEvent;->mPointerID:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/andoop/android/engine/TouchEvent;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/andoop/android/engine/TouchEvent;->mY:F

    return v0
.end method

.method public offset(FF)V
    .locals 1
    .param p1, "pDeltaX"    # F
    .param p2, "pDeltaY"    # F

    .prologue
    .line 82
    iget v0, p0, Lcom/andoop/android/engine/TouchEvent;->mX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/andoop/android/engine/TouchEvent;->mX:F

    .line 83
    iget v0, p0, Lcom/andoop/android/engine/TouchEvent;->mY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/andoop/android/engine/TouchEvent;->mY:F

    .line 84
    return-void
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0}, Lcom/andoop/android/engine/TouchEvent;->recycle(Lcom/andoop/android/engine/TouchEvent;)V

    .line 54
    return-void
.end method

.method public set(FF)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/andoop/android/engine/TouchEvent;->mX:F

    .line 78
    iput p2, p0, Lcom/andoop/android/engine/TouchEvent;->mY:F

    .line 79
    return-void
.end method

.method public set(FFIILandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pAction"    # I
    .param p4, "pPointerID"    # I
    .param p5, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    iput p1, p0, Lcom/andoop/android/engine/TouchEvent;->mX:F

    .line 58
    iput p2, p0, Lcom/andoop/android/engine/TouchEvent;->mY:F

    .line 59
    iput p3, p0, Lcom/andoop/android/engine/TouchEvent;->mAction:I

    .line 60
    iput p4, p0, Lcom/andoop/android/engine/TouchEvent;->mPointerID:I

    .line 61
    iput-object p5, p0, Lcom/andoop/android/engine/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 62
    return-void
.end method
