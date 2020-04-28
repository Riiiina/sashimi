.class Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;
.super Landroid/view/SurfaceView;
.source "AnimatingImageView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/os/Handler$Callback;
.implements Ljava/lang/Runnable;


# instance fields
.field mDuration:J

.field mFrames:I

.field mIndex:I

.field mSurfaceHeight:I

.field mSurfaceWidth:I

.field mThread:Ljava/lang/Thread;

.field mValid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 30
    return-void
.end method


# virtual methods
.method public advanceBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "inPosition"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->advanceID(I)I

    move-result v1

    .line 111
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public advanceID(I)I
    .locals 4
    .param p1, "inPosition"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->advanceName(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public advanceName(I)Ljava/lang/String;
    .locals 2
    .param p1, "inPosition"    # I

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "frame_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public animateFPS(II)V
    .locals 4
    .param p1, "inFPS"    # I
    .param p2, "inFrames"    # I

    .prologue
    const-wide/16 v2, 0x3e8

    .line 44
    if-lez p2, :cond_0

    int-to-long v0, p2

    mul-long/2addr v0, v2

    .line 45
    :goto_0
    if-lez p1, :cond_1

    move v2, p1

    :goto_1
    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 44
    invoke-virtual {p0, v0, v1, p2}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->animateFor(JI)V

    .line 46
    return-void

    :cond_0
    move-wide v0, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/16 v2, 0xc

    goto :goto_1
.end method

.method public animateFor(JI)V
    .locals 2
    .param p1, "inDuration"    # J
    .param p3, "inFrames"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mIndex:I

    .line 34
    iput p3, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mFrames:I

    .line 35
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mDuration:J

    .line 36
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mThread:Ljava/lang/Thread;

    .line 38
    iget v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mValid:I

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    :cond_0
    return-void
.end method

.method public drawInCanvas(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v1, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mIndex:I

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->advanceBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 119
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    :cond_0
    return-void
.end method

.method public drawInThread()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 126
    .local v1, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 128
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->drawInCanvas(Landroid/graphics/Canvas;)V

    .line 131
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 134
    :cond_0
    return-void
.end method

.method public enterAnimation()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public getSurfaceHeight()I
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 57
    .local v0, "result":I
    if-lez v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mSurfaceHeight:I

    goto :goto_0
.end method

.method public getSurfaceWidth()I
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 51
    .local v0, "result":I
    if-lez v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mSurfaceWidth:I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public leaveAnimation()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 149
    .local v5, "started":J
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->enterAnimation()V

    .line 154
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, "current":J
    iget v7, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mFrames:I

    if-lez v7, :cond_2

    .line 157
    iget v7, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mIndex:I

    int-to-long v7, v7

    iget-wide v9, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mDuration:J

    mul-long/2addr v7, v9

    iget v9, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mFrames:I

    int-to-long v9, v9

    div-long v2, v7, v9

    .line 162
    .local v2, "desired":J
    :goto_0
    sub-long v7, v0, v5

    cmp-long v7, v7, v2

    if-gez v7, :cond_1

    .line 165
    sub-long v7, v0, v5

    sub-long v7, v2, v7

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->drawInThread()V

    .line 172
    iget v7, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mIndex:I

    .line 174
    iget v7, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mFrames:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mIndex:I

    iget v8, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mFrames:I

    if-lt v7, v8, :cond_3

    .line 179
    :goto_2
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->leaveAnimation()V

    .line 181
    return-void

    .line 159
    .end local v2    # "desired":J
    :cond_2
    iget v7, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mIndex:I

    int-to-long v7, v7

    iget-wide v9, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mDuration:J

    mul-long v2, v7, v9

    .restart local v2    # "desired":J
    goto :goto_0

    .line 166
    :catch_0
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "AnimatingImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "error:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 177
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    iget v7, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mValid:I

    if-nez v7, :cond_0

    goto :goto_2
.end method

.method public setFixedSize(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 64
    .local v1, "holder":Landroid/view/SurfaceHolder;
    if-nez p1, :cond_0

    .line 65
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->advanceBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 68
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 70
    .local v0, "height":I
    invoke-interface {v1, v2, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->setMinimumHeight(I)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->setMinimumWidth(I)V

    .line 75
    iput v2, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mSurfaceWidth:I

    .line 76
    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mSurfaceHeight:I

    .line 77
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mValid:I

    .line 82
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 85
    iget v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mValid:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mValid:I

    .line 91
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;->mValid:I

    .line 95
    return-void
.end method
