.class public Lcom/appspot/swisscodemonkeys/client/AppEngineComm;
.super Ljava/lang/Object;
.source "AppEngineComm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    .locals 5
    .param p0, "input"    # [B
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Posting message "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcmn/SCMLog;->e(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "url":Ljava/lang/StringBuilder;
    const-string p2, "/"

    .end local p2    # "baseUrl":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string p2, "app"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string p2, "action"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string p2, "?"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const/4 p2, 0x1

    .line 58
    .local p2, "first":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .end local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    .line 71
    invoke-static {}, Lcmn/JsonRpc;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object p1

    .line 74
    .local p1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    if-eqz p0, :cond_1

    array-length p2, p0

    .end local p2    # "first":Z
    if-nez p2, :cond_4

    .line 75
    :cond_1
    new-instance p0, Lorg/apache/http/client/methods/HttpGet;

    .end local p0    # "input":[B
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 80
    .end local v1    # "url":Ljava/lang/StringBuilder;
    .local p0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_1
    const-string p2, "use-gzip"

    const-string v1, "yes"

    invoke-interface {p0, p2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string p2, "id"

    invoke-interface {p0, p2, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 85
    .local p3, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .end local p0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local p0, "bos":Ljava/io/ByteArrayOutputStream;
    const-string p1, "use-gzip"

    .end local p1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-interface {p3, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    .line 87
    .local p1, "gzipHeader":Lorg/apache/http/Header;
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "gzipHeader":Lorg/apache/http/Header;
    const-string p2, "yes"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 88
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local p1, "in":Ljava/io/InputStream;
    const/16 p2, 0x800

    new-array v1, p2, [B

    .line 91
    .local v1, "tmp":[B
    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    .local p2, "l":I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_5

    .line 97
    .end local v1    # "tmp":[B
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "l":I
    :goto_3
    new-instance p1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0    # "bos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p1, p0}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    invoke-static {p3}, Lcmn/JsonRpc;->finishResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p0, p1

    .line 103
    .end local p3    # "response":Lorg/apache/http/HttpResponse;
    :goto_4
    return-object p0

    .line 58
    .local v1, "url":Ljava/lang/StringBuilder;
    .local p0, "input":[B
    .local p2, "first":Z
    .local p3, "id":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 59
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    if-nez p2, :cond_3

    .line 63
    const-string p2, "&"

    .end local p2    # "first":Z
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string p2, "="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const/4 p1, 0x0

    .local p1, "first":Z
    move p2, p1

    .end local p1    # "first":Z
    .restart local p2    # "first":Z
    goto/16 :goto_0

    .line 77
    .end local p2    # "first":Z
    .local p1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_4
    new-instance p2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "url":Ljava/lang/StringBuilder;
    invoke-direct {p2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 78
    .local p2, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object p0, p2

    .end local p2    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_1

    .line 92
    .local v1, "tmp":[B
    .local p0, "bos":Ljava/io/ByteArrayOutputStream;
    .local p1, "in":Ljava/io/InputStream;
    .local p2, "l":I
    .local p3, "response":Lorg/apache/http/HttpResponse;
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0, v1, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 98
    .end local v1    # "tmp":[B
    .end local p0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "l":I
    :catchall_0
    move-exception p0

    .line 99
    :try_start_4
    invoke-static {p3}, Lcmn/JsonRpc;->finishResponse(Lorg/apache/http/HttpResponse;)V

    .line 100
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 101
    .end local p3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception p0

    .line 102
    .local p0, "ioException":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    new-instance p1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "ioException":Ljava/lang/Exception;
    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;-><init>(Ljava/lang/String;[B)V

    move-object p0, p1

    goto :goto_4

    .line 95
    .local p0, "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p3    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    :try_start_5
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method
