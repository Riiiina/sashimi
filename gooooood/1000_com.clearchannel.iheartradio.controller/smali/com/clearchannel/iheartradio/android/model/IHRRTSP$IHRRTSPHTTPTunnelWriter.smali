.class public Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRRTSP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRRTSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IHRRTSPHTTPTunnelWriter"
.end annotation


# instance fields
.field protected mPost:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    .line 1022
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    .line 1023
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    invoke-direct {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->mPost:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    .line 1025
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1027
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public postRTPOrRTCP(I[BII)V
    .locals 6
    .param p1, "channel"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1035
    add-int/lit8 v0, p4, 0x4

    new-array v2, v0, [B

    .line 1037
    .local v2, "data":[B
    const/16 v0, 0x24

    aput-byte v0, v2, v3

    .line 1038
    const/4 v0, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 1039
    const/4 v0, 0x2

    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 1040
    const/4 v0, 0x3

    and-int/lit16 v1, p4, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 1042
    const/4 v0, 0x4

    invoke-static {p2, p3, v2, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1044
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->mPost:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->mPost:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    array-length v1, v2

    invoke-virtual {v0, v2, v3, v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->post([BIIZ)V

    .line 1049
    :goto_0
    return-void

    .line 1047
    :cond_0
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    array-length v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;[BIIZ)V

    goto :goto_0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 1059
    const/16 v16, 0x2000

    .line 1062
    .local v16, "kBufferGrowsBy":I
    const/16 v5, 0x2000

    :try_start_0
    new-array v7, v5, [B

    .line 1063
    .local v7, "buffer":[B
    const/4 v11, 0x0

    .line 1064
    .local v11, "contentLength":I
    const/4 v13, 0x0

    .line 1065
    .local v13, "found":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 1072
    .local v15, "input":Ljava/io/InputStream;
    const/4 v14, 0x3

    .local v14, "i":I
    const/16 v19, 0x0

    .local v19, "offset":I
    move/from16 v8, v19

    .local v8, "start":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->access$1(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 1157
    .end local v7    # "buffer":[B
    .end local v8    # "start":I
    .end local v11    # "contentLength":I
    .end local v13    # "found":Z
    .end local v14    # "i":I
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v19    # "offset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->mPost:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->mPost:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->close()V

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->mPost:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    .line 1158
    :cond_1
    return-void

    .line 1073
    .restart local v7    # "buffer":[B
    .restart local v8    # "start":I
    .restart local v11    # "contentLength":I
    .restart local v13    # "found":Z
    .restart local v14    # "i":I
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v19    # "offset":I
    :cond_2
    :try_start_1
    array-length v5, v7

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 1074
    array-length v5, v7

    add-int/lit16 v5, v5, 0x2000

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 1075
    .local v21, "tmp":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v9, v7

    move-object v0, v7

    move v1, v5

    move-object/from16 v2, v21

    move v3, v6

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1076
    move-object/from16 v7, v21

    .line 1079
    .end local v21    # "tmp":[B
    :cond_3
    array-length v5, v7

    sub-int v5, v5, v19

    move-object v0, v15

    move-object v1, v7

    move/from16 v2, v19

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->readInputStream(Ljava/io/InputStream;[BII)I

    move-result v18

    .local v18, "n":I
    const/4 v5, -0x1

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_4

    .line 1081
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "unexpected end of stream"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1150
    .end local v7    # "buffer":[B
    .end local v8    # "start":I
    .end local v11    # "contentLength":I
    .end local v13    # "found":Z
    .end local v14    # "i":I
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v18    # "n":I
    .end local v19    # "offset":I
    :catch_0
    move-exception v5

    move-object v12, v5

    .line 1152
    .local v12, "e":Ljava/lang/Exception;
    const-string v5, "IHRRTSP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception in run:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v12}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->notifyDelegate(ILjava/lang/Object;)V

    goto :goto_1

    .line 1086
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v7    # "buffer":[B
    .restart local v8    # "start":I
    .restart local v11    # "contentLength":I
    .restart local v13    # "found":Z
    .restart local v14    # "i":I
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v18    # "n":I
    .restart local v19    # "offset":I
    :cond_4
    add-int v19, v19, v18

    .line 1089
    :cond_5
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->access$1(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v13, :cond_7

    move v0, v14

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 1141
    :cond_6
    if-lez v8, :cond_0

    .line 1142
    sub-int v18, v19, v8

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x2000

    move v5, v0

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 1143
    .restart local v21    # "tmp":[B
    const/4 v5, 0x0

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v21

    move v3, v5

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    move-object/from16 v7, v21

    .line 1145
    sub-int/2addr v14, v8

    .line 1146
    sub-int v19, v19, v8

    .line 1147
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1090
    .end local v21    # "tmp":[B
    :cond_7
    if-lez v11, :cond_8

    .line 1091
    sub-int v18, v19, v14

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 1092
    const/4 v11, 0x0

    .line 1093
    add-int/2addr v14, v11

    .line 1094
    const/4 v13, 0x1

    .line 1102
    :cond_8
    if-eqz v13, :cond_b

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->mPost:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    move-object v5, v0

    if-eqz v5, :cond_a

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->mPost:Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    move-object v5, v0

    sub-int v6, v14, v8

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v6, v9}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;->post([BIIZ)V

    .line 1111
    :goto_3
    const/4 v13, 0x0

    .line 1112
    move v8, v14

    .line 1113
    add-int/lit8 v14, v14, 0x3

    .line 1115
    goto :goto_2

    .line 1096
    :cond_9
    sub-int v11, v11, v18

    .line 1097
    add-int v14, v14, v18

    .line 1098
    goto/16 :goto_0

    .line 1108
    :cond_a
    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelWriter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRRTSP;

    move-object v6, v0

    sub-int v9, v14, v8

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/clearchannel/iheartradio/android/model/IHRRTSP$IHRRTSPHTTPTunnelPost;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRRTSP;[BIIZ)V

    goto :goto_3

    .line 1118
    :cond_b
    aget-byte v5, v7, v14

    const/16 v6, 0xa

    if-eq v5, v6, :cond_c

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1119
    :cond_c
    const/4 v5, 0x1

    sub-int v5, v14, v5

    aget-byte v5, v7, v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_d

    add-int/lit8 v14, v14, 0x3

    goto :goto_2

    .line 1120
    :cond_d
    const/4 v5, 0x2

    sub-int v5, v14, v5

    aget-byte v5, v7, v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_e

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1121
    :cond_e
    const/4 v5, 0x3

    sub-int v5, v14, v5

    aget-byte v5, v7, v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_f

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1127
    :cond_f
    new-instance v20, Ljava/lang/String;

    add-int/lit8 v14, v14, 0x1

    sub-int v5, v14, v8

    const-string v6, "ISO-8859-1"

    move-object/from16 v0, v20

    move-object v1, v7

    move v2, v8

    move v3, v5

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1132
    .local v20, "rtspHeaders":Ljava/lang/String;
    sget-object v5, Lcom/clearchannel/iheartradio/android/model/IHRRTSP;->sPatternContentLength:Ljava/util/regex/Pattern;

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1134
    .local v17, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1135
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v11

    if-gtz v11, :cond_5

    .line 1138
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_2
.end method
