.class Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;
.super Ljava/lang/Object;
.source "AACPlayerStreamDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ATrackFeeder"
.end annotation


# instance fields
.field atrack:Landroid/media/AudioTrack;

.field n:I

.field samples:[S

.field final synthetic this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;Landroid/media/AudioTrack;)V
    .locals 2
    .param p2, "atrack"    # Landroid/media/AudioTrack;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    .line 371
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, v0}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$3(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;Ljava/lang/Thread;)V

    .line 372
    invoke-static {p1}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$4(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Feeder"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 373
    invoke-static {p1}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$4(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Ljava/lang/Thread;

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
    .line 381
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->samples:[S

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$5(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->samples:[S

    .line 390
    iput p2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->n:I

    .line 392
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 383
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 381
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

    .line 396
    :goto_0
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$5(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 466
    :cond_0
    monitor-enter p0

    .line 467
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 466
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 470
    iget-object v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    if-eqz v6, :cond_2

    .line 471
    iget-object v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    monitor-enter v6

    .line 472
    :try_start_1
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 473
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->stop()V

    .line 474
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->release()V

    .line 476
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    .line 477
    const-string v7, "AACPlayer"

    const-string v8, "atrack released."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 480
    :cond_2
    iget-object v6, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const-string v7, "stopped"

    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 481
    const-string v6, "AACPlayer"

    const-string v7, "Feeder has been terminated."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void

    .line 398
    :cond_3
    move-object v0, v6

    check-cast v0, [S

    move-object v3, v0

    .line 399
    .local v3, "lsamples":[S
    const/4 v2, 0x0

    .line 401
    .local v2, "ln":I
    monitor-enter p0

    .line 402
    :goto_1
    :try_start_2
    iget v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->n:I

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$5(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 410
    :cond_4
    iget-object v3, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->samples:[S

    .line 411
    iget v2, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->n:I

    .line 413
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->samples:[S

    .line 414
    const/4 v7, 0x0

    iput v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->n:I

    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 401
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$5(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 421
    const/4 v5, 0x0

    .line 424
    .local v5, "playedTotal":I
    :cond_5
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$5(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    if-nez v7, :cond_8

    .line 425
    :cond_6
    const-string v7, "AACPlayer"

    const-string v8, "PCMFeeder has detected that audio track is stopped."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v7, v10}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$6(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;Z)V

    goto/16 :goto_0

    .line 404
    .end local v5    # "playedTotal":I
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 401
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 430
    .restart local v5    # "playedTotal":I
    :cond_8
    if-eqz v5, :cond_9

    .line 431
    const-string v7, "AACPlayer"

    const-string v8, "play(): too fast for playback, sleeping..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-wide/16 v7, 0x64

    :try_start_5
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 438
    :cond_9
    :goto_2
    const/4 v4, -0x1

    .line 440
    .local v4, "played":I
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$5(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    if-nez v7, :cond_b

    .line 441
    :cond_a
    const-string v7, "AACPlayer"

    const-string v8, "PCMFeeder has detected that audio track is stopped."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v7, v10}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$6(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;Z)V

    goto/16 :goto_0

    .line 446
    :cond_b
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    monitor-enter v7

    .line 447
    :try_start_6
    iget-object v8, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9, v2}, Landroid/media/AudioTrack;->write([SII)I

    move-result v4

    .line 446
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 449
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$7(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v7

    if-lez v7, :cond_c

    .line 450
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->ihrServicePlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    const-string v8, "playing"

    invoke-virtual {v7, v8}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->updateStatus(Ljava/lang/String;)V

    .line 453
    :cond_c
    if-gez v4, :cond_d

    .line 454
    const-string v7, "AACPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "feed.run(): error in playback feed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->stop()V

    .line 456
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop$ATrackFeeder;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;

    invoke-static {v7, v10}, Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;->access$6(Lcom/clearchannel/iheartradio/media/player/AACPlayerStreamDrop;Z)V

    goto/16 :goto_0

    .line 446
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    .line 460
    :cond_d
    add-int/2addr v5, v4

    .line 462
    if-lt v5, v2, :cond_5

    goto/16 :goto_0

    .line 466
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

    .line 471
    :catchall_3
    move-exception v7

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v7

    .line 434
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
    .line 377
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
