.class public Lcom/clov4r/android/nil/AudioThread;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/media/AudioTrack;

.field private c:[B


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/clov4r/android/nil/AudioThread;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->b:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->c:[B

    invoke-virtual {p0}, Lcom/clov4r/android/nil/AudioThread;->start()V

    return-void
.end method

.method private static native nativeAudioBufferLock()I
.end method

.method private static native nativeAudioBufferUnlock()I
.end method

.method private static native nativeAudioInit([B)I
.end method

.method private static native nativeAudioSetup()[I
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/AudioThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->b:Landroid/media/AudioTrack;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/clov4r/android/nil/AudioThread;->nativeAudioSetup()[I

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Lcom/clov4r/android/nil/AudioThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    aget v2, v0, v11

    aget v3, v0, v6

    if-ne v3, v6, :cond_2

    move v3, v10

    :goto_1
    aget v4, v0, v10

    if-ne v4, v6, :cond_3

    move v4, v10

    :goto_2
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    aget v7, v0, v1

    if-le v7, v5, :cond_1

    aget v0, v0, v1

    move v5, v0

    :cond_1
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->c:[B

    iget-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->c:[B

    invoke-static {v0}, Lcom/clov4r/android/nil/AudioThread;->nativeAudioInit([B)I

    const-string v0, "player"

    const-string v7, "new AudioTrack rate =%d,channels =%d,bufsize =%d"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioTrack;

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->b:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/clov4r/android/nil/AudioThread;->nativeAudioBufferLock()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v2, p0, Lcom/clov4r/android/nil/AudioThread;->b:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/clov4r/android/nil/AudioThread;->c:[B

    invoke-virtual {v2, v3, v11, v0}, Landroid/media/AudioTrack;->write([BII)I

    :cond_5
    invoke-static {}, Lcom/clov4r/android/nil/AudioThread;->nativeAudioBufferUnlock()I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clov4r/android/nil/AudioThread;->b:Landroid/media/AudioTrack;

    :cond_7
    return-void
.end method
