.class Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;
.super Ljava/lang/Object;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/freerunning/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Android2ButtonHandler"
.end annotation


# instance fields
.field mEventDown:Landroid/view/MotionEvent;

.field mEventPointer1Down:Landroid/view/MotionEvent;

.field mEventPointer2Down:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/andoop/freerunning/GameScene;


# direct methods
.method constructor <init>(Lcom/andoop/freerunning/GameScene;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->this$0:Lcom/andoop/freerunning/GameScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerTouchEvent()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 509
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventDown:Landroid/view/MotionEvent;

    if-eqz v6, :cond_3

    .line 510
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 511
    .local v4, "time":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 512
    .local v0, "now":J
    sub-long v6, v0, v4

    const-wide/16 v8, 0x19

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 513
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    if-nez v6, :cond_1

    .line 514
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->this$0:Lcom/andoop/freerunning/GameScene;

    iget-object v7, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/andoop/freerunning/GameScene;->access$0(Lcom/andoop/freerunning/GameScene;FF)Z

    .line 524
    :goto_0
    iput-object v11, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventDown:Landroid/view/MotionEvent;

    .line 525
    iput-object v11, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    .line 534
    .end local v0    # "now":J
    .end local v4    # "time":J
    :cond_0
    :goto_1
    return-void

    .line 516
    .restart local v0    # "now":J
    .restart local v4    # "time":J
    :cond_1
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    .line 517
    .local v2, "p1":F
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    .line 518
    .local v3, "p2":F
    cmpl-float v6, v2, v3

    if-lez v6, :cond_2

    .line 519
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->this$0:Lcom/andoop/freerunning/GameScene;

    iget-object v7, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/andoop/freerunning/GameScene;->access$0(Lcom/andoop/freerunning/GameScene;FF)Z

    goto :goto_0

    .line 521
    :cond_2
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->this$0:Lcom/andoop/freerunning/GameScene;

    iget-object v7, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget-object v8, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    invoke-virtual {v8, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/andoop/freerunning/GameScene;->access$0(Lcom/andoop/freerunning/GameScene;FF)Z

    goto :goto_0

    .line 527
    .end local v0    # "now":J
    .end local v2    # "p1":F
    .end local v3    # "p2":F
    .end local v4    # "time":J
    :cond_3
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    if-eqz v6, :cond_4

    .line 528
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->this$0:Lcom/andoop/freerunning/GameScene;

    iget-object v7, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget-object v8, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    invoke-virtual {v8, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/andoop/freerunning/GameScene;->access$0(Lcom/andoop/freerunning/GameScene;FF)Z

    .line 529
    iput-object v11, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    goto :goto_1

    .line 530
    :cond_4
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer1Down:Landroid/view/MotionEvent;

    if-eqz v6, :cond_0

    .line 531
    iget-object v6, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->this$0:Lcom/andoop/freerunning/GameScene;

    iget-object v7, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer1Down:Landroid/view/MotionEvent;

    invoke-virtual {v7, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget-object v8, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer1Down:Landroid/view/MotionEvent;

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/andoop/freerunning/GameScene;->access$0(Lcom/andoop/freerunning/GameScene;FF)Z

    .line 532
    iput-object v11, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer1Down:Landroid/view/MotionEvent;

    goto :goto_1
.end method

.method public onTouch(FFLandroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 497
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 498
    iput-object p3, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventDown:Landroid/view/MotionEvent;

    .line 505
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 499
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 500
    iput-object p3, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer1Down:Landroid/view/MotionEvent;

    goto :goto_0

    .line 501
    :cond_2
    const/16 v1, 0x105

    if-ne v0, v1, :cond_0

    .line 502
    iput-object p3, p0, Lcom/andoop/freerunning/GameScene$Android2ButtonHandler;->mEventPointer2Down:Landroid/view/MotionEvent;

    goto :goto_0
.end method
