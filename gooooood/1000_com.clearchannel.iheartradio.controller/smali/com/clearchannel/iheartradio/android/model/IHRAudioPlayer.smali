.class public Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;
.super Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;
.source "IHRAudioPlayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;-><init>()V

    return-void
.end method

.method public static shared()Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;->sSingleton:Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;-><init>()V

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;->sSingleton:Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;

    .line 9
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;->sSingleton:Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRAudioPlayer;

    return-object v0
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;->start(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRAudioPlayerBase;->stop()V

    return-void
.end method
