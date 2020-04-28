.class public Lcom/clearchannel/iheartradio/android/model/IHRThreadable;
.super Ljava/lang/Object;
.source "IHRThreadable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/model/IHRThreadable$RunnableInterruptor;
    }
.end annotation


# static fields
.field public static gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable; = null

.field public static final kDaemon:I = 0x1

.field public static final kJumpThread:I = 0x0

.field public static final kMakeThread:I = 0x1

.field public static final kOwnsHandler:I = 0x4

.field public static final kOwnsThread:I = 0x2

.field public static final kStopThread:I = 0x2


# instance fields
.field public mCallback:Landroid/os/Handler$Callback;

.field public mFlags:I

.field public mHandler:Landroid/os/Handler;

.field public mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "inCallback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;Landroid/content/Context;)V
    .locals 3
    .param p1, "inCallback"    # Landroid/os/Handler$Callback;
    .param p2, "inContext"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 29
    .local v0, "looper":Landroid/os/Looper;
    const/4 v1, 0x4

    iput v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mFlags:I

    .line 30
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mCallback:Landroid/os/Handler$Callback;

    .line 31
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    .line 32
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;Landroid/view/View;)V
    .locals 1
    .param p1, "inCallback"    # Landroid/os/Handler$Callback;
    .param p2, "inView"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mFlags:I

    .line 37
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mCallback:Landroid/os/Handler$Callback;

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;Z)V
    .locals 1
    .param p1, "inCallback"    # Landroid/os/Handler$Callback;
    .param p2, "inDaemon"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mCallback:Landroid/os/Handler$Callback;

    .line 44
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mFlags:I

    .line 46
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->create()V

    .line 47
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public create()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->rethread(I)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->rethread(I)V

    return-void
.end method

.method public handle(I)Z
    .locals 1
    .param p1, "inWhat"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public handle(IIILjava/lang/Object;)Z
    .locals 1
    .param p1, "inWhat"    # I
    .param p2, "inA"    # I
    .param p3, "inB"    # I
    .param p4, "inToken"    # Ljava/lang/Object;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public handle(IIILjava/lang/Object;J)Z
    .locals 1
    .param p1, "inWhat"    # I
    .param p2, "inA"    # I
    .param p3, "inB"    # I
    .param p4, "inToken"    # Ljava/lang/Object;
    .param p5, "inDelay"    # J

    .prologue
    .line 108
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p5, p6}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public handle(IJ)Z
    .locals 2
    .param p1, "inWhat"    # I
    .param p2, "inDelay"    # J

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public handle(Landroid/os/Message;)Z
    .locals 1
    .param p1, "inMessage"    # Landroid/os/Message;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public handle(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "inMessage"    # Landroid/os/Message;
    .param p2, "inDelay"    # J

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_0
.end method

.method public handle(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "inRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public handle(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "inRunnable"    # Ljava/lang/Runnable;
    .param p2, "inDelay"    # J

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_0
.end method

.method public handleFrames(Ljava/lang/Runnable;JI)V
    .locals 6
    .param p1, "inRunnable"    # Ljava/lang/Runnable;
    .param p2, "inDuration"    # J
    .param p4, "inFrames"    # I

    .prologue
    .line 112
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-le v0, p4, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    mul-long/2addr v2, p2

    int-to-long v4, p4

    div-long/2addr v2, v4

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public handleRepeat(Ljava/lang/Runnable;JI)V
    .locals 4
    .param p1, "inRunnable"    # Ljava/lang/Runnable;
    .param p2, "inInterval"    # J
    .param p4, "inRepeat"    # I

    .prologue
    .line 113
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-le v0, p4, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    mul-long/2addr v2, p2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public handleWaiting(Ljava/lang/Runnable;JJ)V
    .locals 9
    .param p1, "inRunnable"    # Ljava/lang/Runnable;
    .param p2, "inDelay"    # J
    .param p4, "inWait"    # J

    .prologue
    const-wide/16 v7, 0x0

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 123
    .local v1, "source":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    .line 125
    .local v2, "target":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;J)Z

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_1
    :try_start_0
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable$RunnableInterruptor;

    invoke-direct {v0, p0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable$RunnableInterruptor;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRThreadable;Ljava/lang/Runnable;Ljava/lang/Thread;)V

    .line 130
    .local v0, "interruptor":Ljava/lang/Runnable;
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    cmp-long v3, p2, v7

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;)Z

    .line 134
    :goto_1
    cmp-long v3, p4, v7

    if-gez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 130
    :goto_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    .end local v0    # "interruptor":Ljava/lang/Runnable;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 132
    .restart local v0    # "interruptor":Ljava/lang/Runnable;
    :cond_2
    :try_start_3
    invoke-virtual {p0, v0, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v2, p4, p5}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isCurrent()Z
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDaemon()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "inWhat"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public remove(ILjava/lang/Object;)V
    .locals 1
    .param p1, "inWhat"    # I
    .param p2, "inToken"    # Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .param p1, "inToken"    # Ljava/lang/Object;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "inRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public remove(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "inRunnable"    # Ljava/lang/Runnable;
    .param p2, "inToken"    # Ljava/lang/Object;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->rethread(I)V

    return-void
.end method

.method public rethread(I)V
    .locals 2
    .param p1, "inAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 66
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 71
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    .line 75
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    .line 77
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mCallback:Landroid/os/Handler$Callback;

    if-nez v1, :cond_4

    const-string v1, "IHR"

    :goto_0
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    .line 88
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    :cond_3
    return-void

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mCallback:Landroid/os/Handler$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 56
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mFlags:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mFlags:I

    .line 57
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 60
    return-void
.end method
