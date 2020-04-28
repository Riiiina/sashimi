.class public interface abstract Lcom/clearchannel/iheartradio/media/player/IAACPlayer;
.super Ljava/lang/Object;
.source "IAACPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;
    }
.end annotation


# static fields
.field public static final LOG:Ljava/lang/String; = "AACPlayer"


# virtual methods
.method public abstract isPlaying()Z
.end method

.method public abstract play(Ljava/lang/String;)V
.end method

.method public abstract setIHRMediaPlayer(Lcom/clearchannel/iheartradio/android/services/IHRMediaPlayer;)V
.end method

.method public abstract setIhrService(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
.end method

.method public abstract setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
.end method

.method public abstract stop()V
.end method
