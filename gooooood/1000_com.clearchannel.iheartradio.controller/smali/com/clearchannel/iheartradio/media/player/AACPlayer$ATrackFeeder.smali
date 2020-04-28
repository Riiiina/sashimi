.class Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;
.super Ljava/lang/Object;
.source "AACPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/media/player/AACPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ATrackFeeder"
.end annotation


# instance fields
.field atrack:Landroid/media/AudioTrack;

.field n:I

.field samples:[S

.field final synthetic this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Landroid/media/AudioTrack;)V
    .locals 2
    .param p2, "atrack"    # Landroid/media/AudioTrack;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    .line 416
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, v0}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$0(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Ljava/lang/Thread;)V

    .line 417
    invoke-static {p1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$1(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Feeder"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 418
    invoke-static {p1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$1(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized feed([SI)V
    .locals 2
    .param p1, "samples"    # [S
    .param p2, "n"    # I

    .prologue
    .line 427
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->samples:[S

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$2(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    :cond_0
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->samples:[S

    .line 436
    iput p2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->n:I

    .line 438
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    monitor-exit p0

    return-void

    .line 429
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 427
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 442
    :goto_0
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$2(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 538
    :cond_0
    monitor-enter p0

    .line 539
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 538
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 543
    iget-object v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    monitor-enter v6

    .line 544
    :try_start_1
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    if-eqz v7, :cond_1

    .line 545
    const-string v7, "AACPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tttttt "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v9}, Landroid/media/AudioTrack;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getState()I

    .line 550
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    .line 551
    const-string v7, "AACPlayer"

    const-string v8, "atrack released."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 554
    iget-object v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const-string v7, "stopped"

    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 555
    const-string v6, "AACPlayer"

    const-string v7, "Feeder has been terminated."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void

    .line 444
    :cond_2
    move-object v0, v6

    check-cast v0, [S

    move-object v3, v0

    .line 445
    .local v3, "lsamples":[S
    const/4 v2, 0x0

    .line 447
    .local v2, "ln":I
    monitor-enter p0

    .line 448
    :goto_1
    :try_start_2
    iget v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->n:I

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$2(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 456
    :cond_3
    iget-object v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->samples:[S

    .line 457
    iget v2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->n:I

    .line 459
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->samples:[S

    .line 460
    const/4 v7, 0x0

    iput v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->n:I

    .line 461
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 447
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$2(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 467
    const/4 v5, 0x0

    .line 470
    .local v5, "playedTotal":I
    :cond_4
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$2(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    if-nez v7, :cond_7

    .line 471
    :cond_5
    const-string v7, "AACPlayer"

    const-string v8, "PCMFeeder has detected that audio track is stopped."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v7, v10}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$3(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Z)V

    goto/16 :goto_0

    .line 450
    .end local v5    # "playedTotal":I
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 447
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 476
    .restart local v5    # "playedTotal":I
    :cond_7
    if-eqz v5, :cond_8

    .line 477
    const-string v7, "AACPlayer"

    const-string v8, "play(): too fast for playback, sleeping..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-wide/16 v7, 0x64

    :try_start_5
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 484
    :cond_8
    :goto_2
    const/4 v4, -0x1

    .line 486
    .local v4, "played":I
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$2(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    if-nez v7, :cond_a

    .line 487
    :cond_9
    const-string v7, "AACPlayer"

    const-string v8, "PCMFeeder has detected that audio track is stopped."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v7, v10}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$3(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Z)V

    goto/16 :goto_0

    .line 492
    :cond_a
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    monitor-enter v7

    .line 493
    :try_start_6
    iget-object v8, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    if-eqz v8, :cond_b

    .line 494
    iget-object v8, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9, v2}, Landroid/media/AudioTrack;->write([SII)I

    move-result v4

    .line 492
    :cond_b
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 496
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$4(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 497
    const-string v7, "AACPlayer"

    const-string v8, "asked for update status to playing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const-string v8, "playing"

    invoke-virtual {v7, v8}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 499
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v7, v10}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->setmOpenAttemptCount(I)V

    .line 525
    :cond_c
    if-gez v4, :cond_d

    .line 526
    const-string v7, "AACPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "feed.run(): error in playback feed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->stop()V

    .line 528
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-static {v7, v10}, Lcom/clearchannel/iheartradio/media/player/AACPlayer;->access$3(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Z)V

    goto/16 :goto_0

    .line 492
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    .line 532
    :cond_d
    add-int/2addr v5, v4

    .line 534
    if-lt v5, v2, :cond_4

    goto/16 :goto_0

    .line 538
    .end local v2    # "ln":I
    .end local v3    # "lsamples":[S
    .end local v4    # "played":I
    .end local v5    # "playedTotal":I
    :catchall_2
    move-exception v6

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6

    .line 543
    :catchall_3
    move-exception v7

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v7

    .line 480
    .restart local v2    # "ln":I
    .restart local v3    # "lsamples":[S
    .restart local v5    # "playedTotal":I
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
