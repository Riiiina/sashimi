.class public Lcom/clearchannel/iheartradio/model/IHRAnimator;
.super Ljava/lang/Object;
.source "IHRAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final kDefaultAnimationStepIntervalMs:I = 0x29

.field public static final kMessageAnimationStarted:I

.field public static final kMessageAnimationStepped:I

.field public static final kMessageAnimationStopped:I


# instance fields
.field protected mDurationMs:I

.field protected mHandler:Landroid/os/Handler;

.field protected mStepIntervalMs:I

.field protected mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "Ani0"

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->osType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStarted:I

    .line 20
    const-string v0, "Ani1"

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->osType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStepped:I

    .line 21
    const-string v0, "Ani2"

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->osType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStopped:I

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "delegate"    # Landroid/os/Handler$Callback;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 48
    .local v5, "thread":Ljava/lang/Thread;
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mThread:Ljava/lang/Thread;

    if-eq v6, v5, :cond_0

    monitor-exit p0

    .line 72
    :goto_0
    return-void

    .line 51
    :cond_0
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mDurationMs:I

    .line 52
    .local v0, "durationMs":I
    iget v4, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mStepIntervalMs:I

    .line 48
    .local v4, "stepIntervalMs":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    .local v2, "startTime":J
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mHandler:Landroid/os/Handler;

    sget v8, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStarted:I

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    :goto_1
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mThread:Ljava/lang/Thread;

    if-eq v6, v5, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 48
    .end local v0    # "durationMs":I
    .end local v2    # "startTime":J
    .end local v4    # "stepIntervalMs":I
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 60
    .restart local v0    # "durationMs":I
    .restart local v2    # "startTime":J
    .restart local v4    # "stepIntervalMs":I
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    long-to-int v1, v6

    .line 64
    .local v1, "elapsed":I
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mHandler:Landroid/os/Handler;

    sget v8, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStepped:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v1, v9, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    if-lez v0, :cond_2

    if-lt v1, v0, :cond_2

    .line 71
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mHandler:Landroid/os/Handler;

    sget v8, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStopped:I

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 68
    :cond_2
    int-to-long v6, v4

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public start()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 27
    const/16 v0, 0x29

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRAnimator;->start(II)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public start(I)Ljava/lang/Thread;
    .locals 1
    .param p1, "durationMs"    # I

    .prologue
    .line 28
    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/model/IHRAnimator;->start(II)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized start(II)Ljava/lang/Thread;
    .locals 3
    .param p1, "stepIntervalMs"    # I
    .param p2, "durationMs"    # I

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mDurationMs:I

    .line 32
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mStepIntervalMs:I

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IHRAnimator "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v2, p2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mThread:Ljava/lang/Thread;

    .line 34
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAnimator;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
