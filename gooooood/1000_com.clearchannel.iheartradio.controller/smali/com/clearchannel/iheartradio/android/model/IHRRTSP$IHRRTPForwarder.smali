.class public Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTPForwarder;
.super Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;
.source "IHRRTSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRRTSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IHRRTPForwarder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;Ljava/net/DatagramSocket;ILjava/lang/String;I)V
    .locals 0
    .param p2, "socket"    # Ljava/net/DatagramSocket;
    .param p3, "localPort"    # I
    .param p4, "remoteHost"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 603
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTPForwarder;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    .line 602
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;-><init>(Ljava/net/DatagramSocket;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getPacketSource(Ljava/net/DatagramPacket;)I
    .locals 2
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTPForwarder;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->getPacketSource(Ljava/net/DatagramPacket;)I

    move-result v0

    .line 612
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTPForwarder;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPLocalPort:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected sendToRemoteHost(Ljava/net/DatagramPacket;)V
    .locals 0
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 633
    return-void
.end method
