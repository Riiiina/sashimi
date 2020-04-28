.class public Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;
.super Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;
.source "IHRAudioStreamShoutcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;
    }
.end annotation


# instance fields
.field protected mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;Ljava/lang/Object;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "delegate"    # Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;
    .param p3, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/clearchannel/iheartradio/model/IHRAudioStreamShoutcastBase;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRAudioStreamDelegate;Ljava/lang/Object;)V

    .line 21
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;->mServerSocket:Ljava/net/ServerSocket;

    .line 23
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast$DummyHTTPServer;->start()V

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;)Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;->mInputStreamAudio:Lcom/clearchannel/iheartradio/model/IHRInputStreamAudio;

    return-object v0
.end method


# virtual methods
.method public getLocalURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://127.0.0.1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRAudioStreamShoutcast;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/16 v0, 0xc8

    return v0
.end method
