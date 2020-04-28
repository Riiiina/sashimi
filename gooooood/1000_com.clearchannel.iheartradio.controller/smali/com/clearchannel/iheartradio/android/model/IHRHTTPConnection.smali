.class public abstract Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
.super Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;
.source "IHRHTTPConnection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;-><init>(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method protected closeConnection()V
    .locals 1

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    .line 24
    return-void

    .line 21
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected createConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 35
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    iget-object p0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    iget-object p0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    iget-object p0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    iget-object p0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "IHRHTTPConnection.getResponseCode"

    const-string v1, "The connection object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method protected openConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    iget-object p0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 112
    return-void
.end method

.method protected openInputStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "compressed":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 120
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mCompressionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 121
    new-instance v0, Ljava/io/DataInputStream;

    .end local v0    # "compressed":Ljava/io/InputStream;
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    .restart local v0    # "compressed":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 127
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mInputStream:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mInputStreamCompressed:Ljava/io/InputStream;

    .line 128
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 131
    :cond_1
    return-void

    .line 122
    :cond_2
    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mCompressionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 123
    new-instance v0, Ljava/io/DataInputStream;

    .end local v0    # "compressed":Ljava/io/InputStream;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v0    # "compressed":Ljava/io/InputStream;
    goto :goto_0
.end method

.method protected setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object p0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    iget-object p0, p0, Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;->mConnection:Ljava/lang/Object;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRHTTPConnection;
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method
