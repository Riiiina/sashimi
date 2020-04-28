.class public abstract Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRAudioPlayerBase.java"


# static fields
.field protected static sSingleton:Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;


# instance fields
.field protected mInputStream:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

.field protected mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    .line 12
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;->mInputStream:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    .line 13
    return-void
.end method


# virtual methods
.method public getInputStream()Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;->mInputStream:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    return-object v0
.end method

.method public start(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;->mInputStream:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->start()V

    .line 26
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;->mInputStream:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;->stop()V

    .line 30
    return-void
.end method
