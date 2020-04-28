.class public Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;
.super Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;
.source "IHRRTSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRRTSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IHRRTCPForwarder"
.end annotation


# instance fields
.field protected mTimeInModifyByteStream:J

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
    .line 495
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    .line 494
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;-><init>(Ljava/net/DatagramSocket;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getPacketSource(Ljava/net/DatagramPacket;)I
    .locals 2
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mTunnelReader:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelReader;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->getPacketSource(Ljava/net/DatagramPacket;)I

    move-result v0

    .line 504
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mRTCPLocalPort:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected modifyByteStream(I[BIZ)Ljava/nio/ByteBuffer;
    .locals 14
    .param p1, "dataSource"    # I
    .param p2, "bytes"    # [B
    .param p3, "length"    # I
    .param p4, "returnCopy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 514
    .local v1, "done":Z
    const/16 v10, 0xb

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "amgArtistId"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "amgTrackId"

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "cartcutId"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    const-string v11, "itunesTrackId"

    aput-object v11, v6, v10

    const/4 v10, 0x4

    const-string v11, "lyricsId"

    aput-object v11, v6, v10

    const/4 v10, 0x5

    const-string v11, "MediaBaseId"

    aput-object v11, v6, v10

    const/4 v10, 0x6

    const-string v11, "song_spot"

    aput-object v11, v6, v10

    const/4 v10, 0x7

    const-string v11, "text"

    aput-object v11, v6, v10

    const/16 v10, 0x8

    const-string v11, "thumbplayId"

    aput-object v11, v6, v10

    const/16 v10, 0x9

    const-string v11, "URL"

    aput-object v11, v6, v10

    const/16 v10, 0xa

    const-string v11, "Title"

    aput-object v11, v6, v10

    .line 515
    .local v6, "keys":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 519
    .local v9, "string":Ljava/lang/String;
    invoke-super/range {p0 .. p4}, Lcom/clearchannel/iheartradio/model/IHRUDPForwarder;->modifyByteStream(I[BIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 521
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .local v7, "n":I
    move v3, v7

    .line 523
    .local v3, "i":I
    iget-object v10, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v10, v10, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mDelegate:Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    if-eq p1, v10, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 524
    :cond_1
    if-nez v1, :cond_2

    .line 525
    new-instance v9, Ljava/lang/String;

    .end local v9    # "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    const-string v13, "ISO-8859-1"

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 526
    .restart local v9    # "string":Ljava/lang/String;
    const-string v10, "Data"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v10, "Artist="

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    const/4 v1, 0x1

    .line 529
    :cond_2
    if-nez v1, :cond_3

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_3

    const/4 v1, 0x1

    .line 530
    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3b

    if-ne v10, v11, :cond_4

    const/4 v1, 0x1

    .line 531
    :cond_4
    if-nez v1, :cond_a

    .line 534
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 536
    .local v2, "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v10, ";"

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .local v4, "j":I
    if-gez v4, :cond_5

    move v4, v7

    .line 538
    :cond_5
    const-string v10, "artist"

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const/4 v5, 0x0

    .local v5, "k":I
    array-length v8, v6

    .local v8, "o":I
    :goto_0
    if-lt v5, v8, :cond_b

    .line 550
    const-string v10, "URL"

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "string":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "string":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v10, "lyricsURL"

    invoke-virtual {v2, v10, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_6
    const-string v10, "text"

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "string":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "string":Ljava/lang/String;
    if-eqz v9, :cond_f

    .line 554
    const-string v10, "track"

    invoke-virtual {v2, v10, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_7
    :goto_1
    const-string v10, "iscommercial"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v10, "song_spot"

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "string":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "string":Ljava/lang/String;
    if-eqz v9, :cond_8

    const-string v10, "M"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 561
    const-string v10, "track"

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "string":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "string":Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_9

    .line 563
    :cond_8
    const-string v10, "iscommercial"

    const-string v11, "1"

    invoke-virtual {v2, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v10, "artist"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v10, "track"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v10, "lyricsURL"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_9
    iget-object v10, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    iget-object v10, v10, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->mDelegate:Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;

    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTCPForwarder;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    invoke-interface {v10, v11, v2}, Lcom/clearchannel/iheartradio/android/model/IHRRTSPDelegate;->rtspMetadata(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 576
    .end local v2    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v8    # "o":I
    :cond_a
    return-object v0

    .line 541
    .restart local v2    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v8    # "o":I
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    aget-object v11, v6, v5

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_c

    .line 542
    aget-object v10, v6, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    if-ne v3, v7, :cond_d

    .line 540
    :cond_c
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 544
    :cond_d
    const-string v10, "\""

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_e

    move v4, v7

    .line 546
    :cond_e
    if-le v4, v3, :cond_c

    aget-object v10, v6, v5

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 555
    :cond_f
    const-string v10, "Title"

    invoke-virtual {v2, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "string":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "string":Ljava/lang/String;
    if-eqz v9, :cond_7

    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 556
    const-string v10, "track"

    invoke-virtual {v2, v10, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
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
    .line 597
    return-void
.end method
