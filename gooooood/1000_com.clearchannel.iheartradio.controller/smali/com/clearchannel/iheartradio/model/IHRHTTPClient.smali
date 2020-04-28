.class public Lcom/clearchannel/iheartradio/model/IHRHTTPClient;
.super Ljava/lang/Object;
.source "IHRHTTPClient.java"


# static fields
.field public static TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x1388

    sput v0, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Ljava/lang/String;)[B
    .locals 14
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v9, 0x0

    .line 88
    .local v9, "url":Ljava/net/URL;
    const/4 v5, 0x0

    .line 89
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 90
    .local v7, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 93
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v9    # "url":Ljava/net/URL;
    .local v10, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 96
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 97
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 100
    sget v11, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 101
    sget v11, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 103
    const-string v11, "Content-type"

    const-string v12, "application/octet-stream"

    invoke-virtual {v5, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0x12e

    if-eq v11, v12, :cond_0

    .line 106
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0x12d

    if-ne v11, v12, :cond_4

    .line 107
    :cond_0
    const-string v11, "Location"

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->request(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 130
    if-eqz v7, :cond_1

    .line 132
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 137
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 140
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 142
    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 122
    :cond_3
    :goto_2
    return-object v11

    .line 109
    :cond_4
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_8

    .line 110
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Not Expected Http Response Code:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    :catch_0
    move-exception v11

    move-object v6, v11

    move-object v9, v10

    .line 126
    .end local v10    # "url":Ljava/net/URL;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v9    # "url":Ljava/net/URL;
    :goto_3
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 130
    :goto_4
    if-eqz v7, :cond_5

    .line 132
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 135
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 137
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 140
    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    .line 142
    :try_start_9
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 145
    :cond_7
    :goto_7
    throw v11

    .line 113
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_8
    :try_start_a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 114
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 115
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x3e8

    :try_start_b
    new-array v3, v11, [B

    .line 117
    .local v3, "buffer":[B
    :goto_8
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "bytesRead":I
    const/4 v11, -0x1

    if-ne v4, v11, :cond_c

    .line 120
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v8

    .line 130
    .local v8, "response":[B
    if-eqz v7, :cond_9

    .line 132
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 135
    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    .line 137
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 140
    :cond_a
    :goto_a
    if-eqz v5, :cond_b

    .line 142
    :try_start_e
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    :cond_b
    :goto_b
    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v11, v8

    .line 122
    goto :goto_2

    .line 118
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "response":[B
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_c
    const/4 v11, 0x0

    :try_start_f
    invoke-virtual {v2, v3, v11, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    .line 124
    .end local v3    # "buffer":[B
    .end local v4    # "bytesRead":I
    :catch_1
    move-exception v11

    move-object v6, v11

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_3

    .line 133
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_2
    move-exception v12

    goto :goto_0

    .line 138
    :catch_3
    move-exception v12

    goto :goto_1

    .line 143
    :catch_4
    move-exception v12

    goto :goto_2

    .line 133
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "bytesRead":I
    .restart local v8    # "response":[B
    :catch_5
    move-exception v11

    goto :goto_9

    .line 138
    :catch_6
    move-exception v11

    goto :goto_a

    .line 143
    :catch_7
    move-exception v11

    goto :goto_b

    .line 133
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v4    # "bytesRead":I
    .end local v8    # "response":[B
    .end local v10    # "url":Ljava/net/URL;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_8
    move-exception v12

    goto :goto_5

    .line 138
    :catch_9
    move-exception v12

    goto :goto_6

    .line 143
    :catch_a
    move-exception v12

    goto :goto_7

    .line 129
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_4

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v11

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_4

    .line 124
    :catch_b
    move-exception v11

    move-object v6, v11

    goto :goto_3
.end method

.method public static request(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 16
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "xmlRequest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v11, 0x0

    .line 20
    .local v11, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 22
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 23
    .local v8, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 24
    .local v9, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 26
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v11    # "url":Ljava/net/URL;
    .local v12, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 29
    sget v13, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 30
    sget v13, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 32
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 33
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 34
    const-string v13, "Content-type"

    const-string v14, "application/octet-stream"

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 36
    const-string v13, "UTF-8"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    .line 38
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 40
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const/16 v14, 0x12e

    if-eq v13, v14, :cond_0

    .line 41
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const/16 v14, 0x12d

    if-ne v13, v14, :cond_5

    .line 42
    :cond_0
    const-string v13, "Location"

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static/range {p0 .. p1}, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->request(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 61
    if-eqz v8, :cond_1

    .line 63
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    .line 68
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 71
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 73
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 76
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 78
    :try_start_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 57
    :cond_4
    :goto_3
    return-object v13

    .line 44
    :cond_5
    :try_start_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const/16 v14, 0xc8

    if-eq v13, v14, :cond_a

    .line 45
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Not Expected Http Response Code:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 58
    :catch_0
    move-exception v13

    move-object v7, v13

    move-object v11, v12

    .line 59
    .end local v12    # "url":Ljava/net/URL;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v11    # "url":Ljava/net/URL;
    :goto_4
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 60
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 61
    :goto_5
    if-eqz v8, :cond_6

    .line 63
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    .line 66
    :cond_6
    :goto_6
    if-eqz v9, :cond_7

    .line 68
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 71
    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    .line 73
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 76
    :cond_8
    :goto_8
    if-eqz v6, :cond_9

    .line 78
    :try_start_b
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    .line 81
    :cond_9
    :goto_9
    throw v13

    .line 48
    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_a
    :try_start_c
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 49
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 50
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x3e8

    :try_start_d
    new-array v4, v13, [B

    .line 52
    .local v4, "buffer":[B
    :goto_a
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "bytesRead":I
    const/4 v13, -0x1

    if-ne v5, v13, :cond_f

    .line 55
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v10

    .line 61
    .local v10, "response":[B
    if-eqz v8, :cond_b

    .line 63
    :try_start_e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 66
    :cond_b
    :goto_b
    if-eqz v9, :cond_c

    .line 68
    :try_start_f
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 71
    :cond_c
    :goto_c
    if-eqz v3, :cond_d

    .line 73
    :try_start_10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 76
    :cond_d
    :goto_d
    if-eqz v6, :cond_e

    .line 78
    :try_start_11
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    :cond_e
    :goto_e
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v13, v10

    .line 57
    goto :goto_3

    .line 53
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "response":[B
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_f
    const/4 v13, 0x0

    :try_start_12
    invoke-virtual {v3, v4, v13, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_a

    .line 58
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    :catch_1
    move-exception v13

    move-object v7, v13

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_4

    .line 64
    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_2
    move-exception v14

    goto/16 :goto_0

    .line 69
    :catch_3
    move-exception v14

    goto/16 :goto_1

    .line 74
    :catch_4
    move-exception v14

    goto/16 :goto_2

    .line 79
    :catch_5
    move-exception v14

    goto :goto_3

    .line 64
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v10    # "response":[B
    :catch_6
    move-exception v13

    goto :goto_b

    .line 69
    :catch_7
    move-exception v13

    goto :goto_c

    .line 74
    :catch_8
    move-exception v13

    goto :goto_d

    .line 79
    :catch_9
    move-exception v13

    goto :goto_e

    .line 64
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v10    # "response":[B
    .end local v12    # "url":Ljava/net/URL;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_a
    move-exception v14

    goto :goto_6

    .line 69
    :catch_b
    move-exception v14

    goto :goto_7

    .line 74
    :catch_c
    move-exception v14

    goto :goto_8

    .line 79
    :catch_d
    move-exception v14

    goto :goto_9

    .line 60
    .end local v11    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_5

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v13

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v11, v12

    .end local v12    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    goto :goto_5

    .line 58
    :catch_e
    move-exception v13

    move-object v7, v13

    goto :goto_4
.end method
