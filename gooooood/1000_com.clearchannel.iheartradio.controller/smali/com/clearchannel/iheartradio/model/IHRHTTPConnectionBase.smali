.class public abstract Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRHTTPConnectionBase.java"


# static fields
.field private static final OpenAttemptCount:I = 0x5

.field protected static final kCompressionTypeDeflate:I = 0x1

.field protected static final kCompressionTypeGZip:I = 0x2

.field protected static final kCompressionTypeNone:I


# instance fields
.field protected mAuthorizationCount:I

.field protected mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mCompressionType:I

.field protected mConnection:Ljava/lang/Object;

.field protected mContentLength:I

.field protected mCredentialsIdentifier:Ljava/lang/String;

.field protected mInputStream:Ljava/io/InputStream;

.field protected mInputStreamCompressed:Ljava/io/InputStream;

.field protected mOutputStream:Ljava/io/DataOutputStream;

.field protected mPostData:[B

.field protected mSuccess:Z

.field protected mURL:Ljava/lang/String;

.field private subscriptionResponse:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mPostData:[B

    .line 39
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mURL:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static logMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "inTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "inMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    return-void

    .line 53
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 56
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    .local v2, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 203
    :goto_0
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mInputStream:Ljava/io/InputStream;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mInputStreamCompressed:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mInputStreamCompressed:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    :goto_1
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mInputStreamCompressed:Ljava/io/InputStream;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mOutputStream:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_2

    .line 213
    :try_start_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    :goto_2
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mOutputStream:Ljava/io/DataOutputStream;

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->closeConnection()V

    .line 219
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_2

    .line 207
    :catch_1
    move-exception v0

    goto :goto_1

    .line 201
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected abstract closeConnection()V
.end method

.method protected abstract createConnection(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getHeaderFieldInt(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getHeaderFieldKey(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getResponseCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getSubscriptionResponse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->subscriptionResponse:Ljava/lang/Object;

    return-object v0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->open(Ljava/lang/String;)V

    return-void
.end method

.method protected open(Ljava/lang/String;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x12e

    const/4 v9, 0x1

    .line 67
    :try_start_0
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object v5

    .line 68
    .local v5, "premium":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    const/4 v0, 0x0

    .line 70
    .local v0, "attempts":I
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->subscriptionResponse:Ljava/lang/Object;

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->createConnection(Ljava/lang/String;)V

    .line 73
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mConnection:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 74
    const-string v6, "IHRHTTPConnectionBase.open"

    const-string v7, "Connection object is null after create connection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mConnection:Ljava/lang/Object;

    check-cast v6, Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 78
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mConnection:Ljava/lang/Object;

    check-cast v6, Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 79
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mConnection:Ljava/lang/Object;

    check-cast v6, Ljava/net/HttpURLConnection;

    sget v7, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 80
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mConnection:Ljava/lang/Object;

    check-cast v6, Ljava/net/HttpURLConnection;

    sget v7, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 81
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->prepareRequest()V

    .line 82
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mConnection:Ljava/lang/Object;

    if-nez v6, :cond_2

    .line 83
    const-string v6, "IHRHTTPConnectionBase.open"

    const-string v7, "Connection object is null after prepare request"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    if-ne v9, v0, :cond_3

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCredentialsIdentifier:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_3

    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, "credentials":Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCredentialsIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->credentials(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 94
    :goto_0
    if-eqz v2, :cond_3

    .line 95
    :try_start_2
    const-string v6, "Authorization"

    invoke-virtual {p0, v6, v2}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v6, "IHRConnectionBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Credentials: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v2    # "credentials":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->openConnection()V

    .line 104
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mPostData:[B

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mPostData:[B

    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->post([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    :cond_4
    const/4 v1, -0x1

    .line 109
    .local v1, "code":I
    :try_start_3
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mConnection:Ljava/lang/Object;

    if-nez v6, :cond_5

    .line 110
    const-string v6, "IHRHTTPConnectionBase.open"

    const-string v7, "Connection object is null after open connection"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_5
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mConnection:Ljava/lang/Object;

    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    .line 126
    :try_start_4
    const-string v6, "IHRConnectionBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "attempt: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : Got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->processResponse(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 129
    if-lez v0, :cond_6

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCredentialsIdentifier:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 130
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCredentialsIdentifier:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->accept(Ljava/lang/String;Z)V

    .line 131
    const-string v6, "IHRConnectionBase"

    const-string v7, "Premium accepted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_6
    return-void

    .line 90
    .end local v1    # "code":I
    .restart local v2    # "credentials":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 91
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v6, "IHRConnectionBase"

    const-string v7, "Null pointer trying to set credentials"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 168
    .end local v0    # "attempts":I
    .end local v2    # "credentials":Ljava/lang/String;
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    .end local v5    # "premium":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 170
    .local v3, "e":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->subscriptionResponse:Ljava/lang/Object;

    .line 172
    const-string v6, "open"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "caught "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v6, "IHRConnectionBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->close()V

    .line 178
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Last - Failed to open "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    .restart local v0    # "attempts":I
    .restart local v1    # "code":I
    .restart local v5    # "premium":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 114
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "IHRHTTPConnectionBase.open"

    const-string v7, "PROBLEM RECEIVING RESPONSE CODE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v6, "IHRHTTPConnectionBase.open"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x5

    if-lt v0, v6, :cond_0

    .line 166
    :cond_8
    :goto_3
    const-string v6, "authentication error"

    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->subscriptionResponse:Ljava/lang/Object;

    goto :goto_1

    .line 119
    :catch_3
    move-exception v6

    move-object v3, v6

    .line 120
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v6, "IHRHTTPConnectionBase.open"

    const-string v7, "RECEIVED NULL POINTER"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v6, "IHRHTTPConnectionBase.open"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_9
    const/16 v6, 0x12d

    if-eq v6, v1, :cond_a

    if-eq v10, v1, :cond_a

    const/16 v6, 0x133

    if-ne v6, v1, :cond_b

    .line 136
    :cond_a
    const-string v6, "Location"

    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    const/4 v0, 0x0

    .line 139
    if-nez p1, :cond_7

    .line 140
    const-string v6, "IHRConnectionBase"

    const-string v7, " Received redirect code, but unable to get redirect address"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 143
    :cond_b
    const/16 v6, 0x194

    if-ne v1, v6, :cond_c

    .line 144
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "failed to open "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    :cond_c
    const/16 v6, 0x191

    if-ne v6, v1, :cond_e

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCredentialsIdentifier:Ljava/lang/String;

    if-eqz v6, :cond_e

    .line 149
    if-lez v0, :cond_d

    .line 150
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCredentialsIdentifier:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->accept(Ljava/lang/String;Z)V

    .line 151
    const-string v6, "IHRConnectionBase"

    const-string v7, "401 Premium accepted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 154
    :cond_d
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->close()V

    goto :goto_2

    .line 156
    :cond_e
    if-eq v10, v1, :cond_8

    .line 160
    const-string v6, "IHRConnectionBase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Else case. Code = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Attempts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2
.end method

.method protected abstract openConnection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract openInputStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected post([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mOutputStream:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mOutputStream:Ljava/io/DataOutputStream;

    .line 227
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 230
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method protected prepareRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mPostData:[B

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->setRequestMethod(Ljava/lang/String;)V

    .line 237
    const-string v0, "Content-Length"

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mPostData:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip, deflate"

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method protected processData([B)V
    .locals 0
    .param p1, "inData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    return-void
.end method

.method protected processData([BLjava/lang/String;)V
    .locals 0
    .param p1, "inData"    # [B
    .param p2, "inMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->processData([B)V

    return-void
.end method

.method protected processHeaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 258
    const-string v1, "Content-Encoding"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "header":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deflate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCompressionType:I

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCompressionType:I

    .line 265
    :cond_1
    iget v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mCompressionType:I

    if-nez v1, :cond_2

    .line 266
    const-string v1, "content-length"

    invoke-virtual {p0, v1, v4}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mContentLength:I

    if-gez v1, :cond_2

    iput v4, p0, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->mContentLength:I

    .line 272
    :cond_2
    return-void
.end method

.method protected processResponse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->getResponseCode()I

    move-result v0

    .line 277
    .local v0, "code":I
    const/16 v1, 0xc8

    if-ne v1, v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->processHeaders()V

    .line 279
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->openInputStream()V

    .line 281
    const/4 v1, 0x1

    .line 286
    :goto_0
    return v1

    .line 284
    :cond_0
    const-string v1, "open"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "got response code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected processResponse(I)Z
    .locals 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 290
    const/16 v0, 0xc8

    if-ne v0, p1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->processHeaders()V

    .line 292
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->openInputStream()V

    .line 294
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    .line 296
    :cond_0
    const-string v0, "open"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got response code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRHTTPConnectionBase;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract setRequestMethod(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
