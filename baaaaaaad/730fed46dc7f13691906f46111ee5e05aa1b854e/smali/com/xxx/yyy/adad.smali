.class public Lcom/xxx/yyy/adad;
.super Ljava/lang/Object;
.source "adad.java"


# instance fields
.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private iswap:I

.field private key:Ljava/lang/String;

.field private ua:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "im"    # Ljava/lang/String;
    .param p2, "ie"    # Ljava/lang/String;
    .param p3, "iw"    # I
    .param p4, "kk"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/xxx/yyy/adad;->imsi:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/xxx/yyy/adad;->imei:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/xxx/yyy/adad;->iswap:I

    .line 40
    iput-object p4, p0, Lcom/xxx/yyy/adad;->key:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private GetOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v11, ""

    .line 121
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 124
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget v8, p0, Lcom/xxx/yyy/adad;->iswap:I

    if-nez v8, :cond_0

    .line 126
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v8, "10.0.0.172"

    const/16 v9, 0x50

    const-string v10, "http"

    invoke-direct {v4, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    .local v4, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.route.default-proxy"

    invoke-interface {v8, v9, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 130
    .end local v4    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, "method":Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "Accept"

    const-string v9, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v8, "Accept-Language"

    const-string v9, "zh-CN, en-US"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v8, "Accept-Charset"

    const-string v9, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 145
    .local v5, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 147
    .local v7, "status":I
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_1

    .line 148
    const-string v8, ""

    move-object v8, v11

    .line 163
    .end local v5    # "resp":Lorg/apache/http/HttpResponse;
    .end local v7    # "status":I
    :goto_0
    return-object v8

    .line 150
    .restart local v5    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v7    # "status":I
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 152
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xxx/yyy/adad;->generateString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v6

    .line 155
    goto :goto_0

    .line 156
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "resp":Lorg/apache/http/HttpResponse;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "status":I
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 158
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 159
    const-string v8, ""

    move-object v8, v11

    goto :goto_0

    .line 160
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    const-string v8, ""

    move-object v8, v11

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xxx/yyy/adad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xxx/yyy/adad;->imei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xxx/yyy/adad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xxx/yyy/adad;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xxx/yyy/adad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xxx/yyy/adad;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/xxx/yyy/adad;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/xxx/yyy/adad;->GetOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/xxx/yyy/adad;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/xxx/yyy/adad;->iswap:I

    return v0
.end method


# virtual methods
.method public StartGo()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/xxx/yyy/adad$1;

    invoke-direct {v0, p0}, Lcom/xxx/yyy/adad$1;-><init>(Lcom/xxx/yyy/adad;)V

    .line 95
    invoke-virtual {v0}, Lcom/xxx/yyy/adad$1;->start()V

    .line 96
    return-void
.end method

.method public generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 99
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    .local v0, "buffer":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "cur":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 113
    .end local v1    # "cur":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 105
    .restart local v1    # "cur":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 108
    .end local v1    # "cur":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 110
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 116
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
