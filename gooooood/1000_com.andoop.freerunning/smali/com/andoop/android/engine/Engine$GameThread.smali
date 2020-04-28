.class Lcom/andoop/android/engine/Engine$GameThread;
.super Ljava/lang/Thread;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameThread"
.end annotation


# instance fields
.field mLastUpdateTime:J

.field mMinFrameLength:J

.field mRunning:Z

.field final synthetic this$0:Lcom/andoop/android/engine/Engine;


# direct methods
.method constructor <init>(Lcom/andoop/android/engine/Engine;Lcom/andoop/android/engine/EngineOptions;)V
    .locals 2
    .param p2, "eo"    # Lcom/andoop/android/engine/EngineOptions;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    .line 240
    const-string v0, "GameEngineThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andoop/android/engine/Engine$GameThread;->mRunning:Z

    .line 237
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/andoop/android/engine/Engine$GameThread;->mLastUpdateTime:J

    .line 241
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/Engine$GameThread;->setPriority(I)V

    .line 242
    invoke-virtual {p2}, Lcom/andoop/android/engine/EngineOptions;->getMinFrameLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/andoop/android/engine/Engine$GameThread;->mMinFrameLength:J

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/andoop/android/engine/Engine$GameThread;->mRunning:Z

    .line 340
    iget-object v1, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v1, v1, Lcom/andoop/android/engine/Engine;->mSurfaceHolderLock:[B

    monitor-enter v1

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v2, v2, Lcom/andoop/android/engine/Engine;->mSurfaceHolderLock:[B

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 340
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :try_start_1
    invoke-virtual {p0}, Lcom/andoop/android/engine/Engine$GameThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 351
    iget-object v1, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-static {v1, v3}, Lcom/andoop/android/engine/Engine;->access$0(Lcom/andoop/android/engine/Engine;Lcom/andoop/android/engine/Engine$GameThread;)V

    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 354
    :goto_0
    return-void

    .line 340
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 351
    iget-object v1, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-static {v1, v3}, Lcom/andoop/android/engine/Engine;->access$0(Lcom/andoop/android/engine/Engine;Lcom/andoop/android/engine/Engine$GameThread;)V

    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 350
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    .line 351
    iget-object v2, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-static {v2, v3}, Lcom/andoop/android/engine/Engine;->access$0(Lcom/andoop/android/engine/Engine;Lcom/andoop/android/engine/Engine$GameThread;)V

    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 353
    throw v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/Engine$GameThread;->mRunning:Z

    .line 358
    invoke-virtual {p0}, Lcom/andoop/android/engine/Engine$GameThread;->start()V

    .line 359
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v0, v0, Lcom/andoop/android/engine/Engine;->mSurfaceHolderLock:[B

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iput-object p1, v1, Lcom/andoop/android/engine/Engine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 323
    iget-object v1, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v1, v1, Lcom/andoop/android/engine/Engine;->mSurfaceHolderLock:[B

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 321
    monitor-exit v0

    .line 325
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v0, v0, Lcom/andoop/android/engine/Engine;->mSurfaceHolderLock:[B

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/andoop/android/engine/Engine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 332
    monitor-exit v0

    .line 335
    return-void

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 10

    .prologue
    .line 247
    const-string v4, "---> GameThread run"

    invoke-static {v4}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 249
    :goto_0
    iget-boolean v4, p0, Lcom/andoop/android/engine/Engine$GameThread;->mRunning:Z

    if-nez v4, :cond_1

    .line 313
    :cond_0
    const-string v4, "---> GameThread stop"

    invoke-static {v4}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 314
    return-void

    .line 250
    :cond_1
    invoke-static {}, Lcom/andoop/android/engine/Time;->update()V

    .line 251
    invoke-static {}, Lcom/andoop/android/engine/Time;->getTicksFraction()F

    move-result v3

    .line 254
    .local v3, "seconds":F
    iget-object v4, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v4, v4, Lcom/andoop/android/engine/Engine;->mRunnableHandler:Lcom/andoop/android/engine/RunnableHandler;

    invoke-virtual {v4, v3}, Lcom/andoop/android/engine/RunnableHandler;->onUpdate(F)V

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v4, v4, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    if-nez v4, :cond_2

    .line 260
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v4

    goto :goto_0

    .line 266
    :cond_2
    invoke-static {}, Lcom/andoop/android/engine/Time;->isPaused()Z

    move-result v4

    if-nez v4, :cond_3

    .line 267
    iget-object v4, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v4, v3}, Lcom/andoop/android/engine/Engine;->onUpdate(F)V

    .line 273
    :cond_3
    iget-object v4, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v4, v4, Lcom/andoop/android/engine/Engine;->mSurfaceHolderLock:[B

    monitor-enter v4

    .line 274
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v5, v5, Lcom/andoop/android/engine/Engine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/andoop/android/engine/Engine$GameThread;->mRunning:Z

    if-nez v5, :cond_8

    .line 273
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    iget-boolean v4, p0, Lcom/andoop/android/engine/Engine$GameThread;->mRunning:Z

    if-eqz v4, :cond_0

    .line 286
    iget-object v4, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v4, v4, Lcom/andoop/android/engine/Engine;->mSurfaceHolderLock:[B

    monitor-enter v4

    .line 287
    :try_start_2
    iget-object v5, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v5, v5, Lcom/andoop/android/engine/Engine;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v5, :cond_6

    .line 289
    :try_start_3
    iget-object v5, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v5, v5, Lcom/andoop/android/engine/Engine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 290
    iget-object v5, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v5, v5, Lcom/andoop/android/engine/Engine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 291
    :try_start_4
    iget-object v6, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v6, v6, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    if-eqz v6, :cond_5

    .line 292
    iget-object v6, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v6, v6, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    iget-object v7, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v7, v7, Lcom/andoop/android/engine/Engine;->mCamera:Lcom/andoop/android/engine/Camera;

    invoke-virtual {v6, v0, v7}, Lcom/andoop/android/engine/Scene;->onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V

    .line 290
    :cond_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 296
    if-eqz v0, :cond_6

    .line 297
    :try_start_5
    iget-object v5, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v5, v5, Lcom/andoop/android/engine/Engine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 286
    :cond_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 303
    iget-wide v4, p0, Lcom/andoop/android/engine/Engine$GameThread;->mMinFrameLength:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/andoop/android/engine/Engine$GameThread;->mLastUpdateTime:J

    sub-long/2addr v6, v8

    sub-long v1, v4, v6

    .line 304
    .local v1, "diff":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_7

    .line 306
    :try_start_6
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 310
    :cond_7
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/andoop/android/engine/Engine$GameThread;->mLastUpdateTime:J

    goto/16 :goto_0

    .line 276
    .end local v1    # "diff":J
    :cond_8
    :try_start_7
    iget-object v5, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v5, v5, Lcom/andoop/android/engine/Engine;->mSurfaceHolderLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 277
    :catch_1
    move-exception v5

    goto :goto_1

    .line 273
    :catchall_0
    move-exception v5

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v5

    .line 290
    :catchall_1
    move-exception v6

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 295
    :catchall_2
    move-exception v5

    .line 296
    if-eqz v0, :cond_9

    .line 297
    :try_start_b
    iget-object v6, p0, Lcom/andoop/android/engine/Engine$GameThread;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v6, v6, Lcom/andoop/android/engine/Engine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 299
    :cond_9
    throw v5

    .line 286
    :catchall_3
    move-exception v5

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v5

    .line 307
    .restart local v1    # "diff":J
    :catch_2
    move-exception v4

    goto :goto_2
.end method
