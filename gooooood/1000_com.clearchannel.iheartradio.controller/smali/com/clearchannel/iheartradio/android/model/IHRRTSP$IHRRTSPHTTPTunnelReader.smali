.class public Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;
.super Lcom/clearchannel/iheartradio/model/IHRHTTP;
.source "IHRRTSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRRTSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IHRRTSPHTTPTunnelReader"
.end annotation


# static fields
.field protected static final kReadingRTCP:I = 0x1

.field protected static final kReadingRTP:I = 0x2

.field protected static final kReadingRTSP:I = 0x3

.field protected static final kReadingUnknown:I


# instance fields
.field protected mDatagram:Ljava/net/DatagramPacket;

.field protected mDatagramSocket:Ljava/net/DatagramSocket;

.field protected mFixup:[B

.field protected mLastThroughputSentTime:J

.field protected mOutputStream:Ljava/io/OutputStream;

.field protected mSize:I

.field protected mState:I

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 835
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    .line 817
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;-><init>()V

    .line 819
    new-instance v0, Ljava/net/DatagramPacket;

    new-array v1, v3, [B

    const-string v4, "127.0.0.1"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mDatagram:Ljava/net/DatagramPacket;

    .line 820
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 821
    invoke-static {p1}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mOutputStream:Ljava/io/OutputStream;

    .line 822
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->randomUUID()[B

    move-result-object v1

    invoke-static {v1}, Lcom/clearchannel/iheartradio/model/IHRBase64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mSessionCookie:Ljava/lang/String;

    .line 829
    iget-object v0, p1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mURL:Ljava/lang/String;

    .line 832
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->open()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 839
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->close()V

    .line 846
    return-void
.end method

.method protected prepareRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 861
    const-string v0, "accept"

    const-string v1, "application/x-rtsp-tunnelled"

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v0, "cache-control"

    const-string v1, "no-cache"

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v0, "pragma"

    const-string v1, "no-cache"

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v0, "x-sessioncookie"

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mSessionCookie:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method protected processData([BLjava/lang/String;)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 884
    if-eqz p2, :cond_0

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 887
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mLastThroughputSentTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    add-long v16, v16, v18

    cmp-long v16, v10, v16

    if-lez v16, :cond_0

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mDelegate:Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;->rtspThroughput(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;Ljava/lang/String;)V

    .line 889
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mLastThroughputSentTime:J

    .line 893
    .end local v10    # "now":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mFixup:[B

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mFixup:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v5, v0

    .line 895
    .local v5, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mFixup:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mFixup:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v5

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 896
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mFixup:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mFixup:[B

    .line 898
    move-object/from16 p1, v5

    .line 903
    .end local v5    # "buffer":[B
    :cond_1
    const/4 v12, 0x0

    .line 904
    .local v12, "offset":I
    :cond_2
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    sub-int v13, v16, v12

    .local v13, "remaining":I
    if-nez v13, :cond_6

    .line 983
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    sub-int v13, v16, v12

    if-lez v13, :cond_5

    .line 984
    if-lez v12, :cond_4

    .line 985
    new-array v5, v13, [B

    .line 986
    .restart local v5    # "buffer":[B
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move v1, v12

    move-object v2, v5

    move/from16 v3, v16

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 987
    move-object/from16 p1, v5

    .line 990
    .end local v5    # "buffer":[B
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mFixup:[B

    .line 992
    :cond_5
    return-void

    .line 906
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mState:I

    move/from16 v16, v0

    if-nez v16, :cond_7

    .line 907
    aget-byte v16, p1, v12

    packed-switch v16, :pswitch_data_0

    .line 919
    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mState:I

    .line 924
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mState:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1

    goto :goto_0

    .line 961
    :pswitch_0
    const/16 v16, 0x4

    move v0, v13

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    .line 962
    add-int/lit8 v16, v12, 0x2

    aget-byte v16, p1, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    add-int/lit8 v17, v12, 0x3

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    add-int/lit8 v14, v16, 0x4

    .line 963
    .local v14, "size":I
    if-lt v13, v14, :cond_3

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mDatagram:Ljava/net/DatagramPacket;

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x4

    const/16 v18, 0x4

    sub-int v18, v14, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mDatagram:Ljava/net/DatagramPacket;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPForwarder:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->getPort()I

    move-result v17

    :goto_3
    invoke-virtual/range {v16 .. v17}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mDatagramSocket:Ljava/net/DatagramSocket;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mDatagram:Ljava/net/DatagramPacket;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 977
    add-int/2addr v12, v14

    .line 978
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mState:I

    goto/16 :goto_0

    .line 909
    .end local v14    # "size":I
    :pswitch_1
    const/16 v16, 0x2

    move v0, v13

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    .line 910
    add-int/lit8 v16, v12, 0x1

    aget-byte v16, p1, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPChannel:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mState:I

    goto/16 :goto_2

    .line 911
    :cond_8
    add-int/lit8 v16, v12, 0x1

    aget-byte v16, p1, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPChannel:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mState:I

    goto/16 :goto_2

    .line 912
    :cond_9
    new-instance v16, Ljava/lang/Exception;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "invalid interleave channel "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x1

    aget-byte v18, p1, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v16

    .line 926
    :pswitch_2
    add-int/lit8 v7, v12, 0x3

    .local v7, "i":I
    move-object/from16 v0, p1

    array-length v0, v0

    move v9, v0

    .local v9, "n":I
    :goto_4
    if-lt v7, v9, :cond_a

    .line 956
    if-ne v7, v9, :cond_2

    goto/16 :goto_1

    .line 927
    :cond_a
    aget-byte v16, p1, v7

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 928
    :cond_b
    const/16 v16, 0x1

    sub-int v16, v7, v16

    aget-byte v16, p1, v16

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    add-int/lit8 v7, v7, 0x3

    goto :goto_4

    .line 929
    :cond_c
    const/16 v16, 0x2

    sub-int v16, v7, v16

    aget-byte v16, p1, v16

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 930
    :cond_d
    const/16 v16, 0x3

    sub-int v16, v7, v16

    aget-byte v16, p1, v16

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 936
    :cond_e
    new-instance v15, Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    sub-int v16, v7, v12

    const-string v17, "ISO-8859-1"

    move-object v0, v15

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 938
    .local v15, "string":Ljava/lang/String;
    sget-object v16, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternContentLength:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 940
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 941
    new-instance v16, Ljava/lang/Integer;

    const/16 v17, 0x1

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int v7, v7, v16

    if-gt v7, v9, :cond_3

    .line 944
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object/from16 v16, v0

    sub-int v17, v7, v12

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->modifyRemoteRTSPReply([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 948
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    invoke-virtual/range {v16 .. v19}, Ljava/io/OutputStream;->write([BII)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 951
    move v12, v7

    .line 952
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->mState:I

    goto/16 :goto_0

    .line 974
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "i":I
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "n":I
    .end local v15    # "string":Ljava/lang/String;
    .restart local v14    # "size":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTPForwarder:Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->getPort()I

    move-result v17

    goto/16 :goto_3

    .line 907
    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch

    .line 924
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected processHeaders()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 998
    const-string v0, "content-type"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "header":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 999
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-rtsp-tunnelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    const-string v0, "x-server-ip-address"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1002
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    new-instance v4, Ljava/net/URI;

    const-string v5, "http"

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v8

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURI:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelURL:Ljava/lang/String;

    .line 1008
    return-void

    .line 1012
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no rtsp tunnel support"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 851
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->read()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->notifyDelegate(ILjava/lang/Object;)V

    goto :goto_0
.end method
