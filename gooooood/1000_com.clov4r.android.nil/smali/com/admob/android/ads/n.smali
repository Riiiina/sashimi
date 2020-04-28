.class final Lcom/admob/android/ads/n;
.super Lcom/admob/android/ads/ab;


# instance fields
.field private m:Ljava/net/HttpURLConnection;

.field private n:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;ILjava/util/Map;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/ab;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;ILjava/util/Map;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admob/android/ads/n;->n:Ljava/net/URL;

    iget-object v0, p0, Lcom/admob/android/ads/n;->n:Ljava/net/URL;

    iput-object v0, p0, Lcom/admob/android/ads/n;->i:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v7, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/admob/android/ads/n;->e:I

    return-void

    :catch_0
    move-exception v0

    iput-object v7, p0, Lcom/admob/android/ads/n;->n:Ljava/net/URL;

    iput-object v0, p0, Lcom/admob/android/ads/n;->c:Ljava/lang/Exception;

    goto :goto_0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 13

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/admob/android/ads/n;->n:Ljava/net/URL;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/admob/android/ads/n;->h:Lcom/admob/android/ads/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/admob/android/ads/n;->h:Lcom/admob/android/ads/m;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "url was null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Lcom/admob/android/ads/m;->a(Lcom/admob/android/ads/ab;Ljava/lang/Exception;)V

    :cond_0
    move v1, v8

    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/admob/android/ads/n;->h:Lcom/admob/android/ads/m;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/admob/android/ads/n;->h:Lcom/admob/android/ads/m;

    iget-object v3, p0, Lcom/admob/android/ads/n;->c:Ljava/lang/Exception;

    invoke-interface {v2, p0, v3}, Lcom/admob/android/ads/m;->a(Lcom/admob/android/ads/ab;Ljava/lang/Exception;)V

    :cond_1
    return v1

    :cond_2
    invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    move v3, v8

    :goto_1
    iget v1, p0, Lcom/admob/android/ads/n;->e:I

    iget v2, p0, Lcom/admob/android/ads/n;->f:I

    if-ge v1, v2, :cond_10

    if-nez v3, :cond_10

    const-string v1, "AdMobSDK"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/admob/android/ads/n;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to connect to url "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/admob/android/ads/n;->n:Ljava/net/URL;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/admob/android/ads/n;->h()V

    iget-object v1, p0, Lcom/admob/android/ads/n;->n:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    const-string v2, "User-Agent"

    invoke-static {}, Lcom/admob/android/ads/n;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admob/android/ads/n;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    const-string v2, "X-ADMOB-ISU"

    iget-object v4, p0, Lcom/admob/android/ads/n;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    iget v2, p0, Lcom/admob/android/ads/n;->b:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    iget v2, p0, Lcom/admob/android/ads/n;->b:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/admob/android/ads/n;->d:Ljava/util/Map;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/admob/android/ads/n;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/admob/android/ads/n;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v11

    :goto_3
    :try_start_1
    const-string v3, "AdMobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not open connection to url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/admob/android/ads/n;->n:Ljava/net/URL;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/admob/android/ads/n;->c:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_6

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/admob/android/ads/n;->h()V

    move v1, v8

    :goto_5
    iget v2, p0, Lcom/admob/android/ads/n;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/admob/android/ads/n;->e:I

    move v3, v1

    goto/16 :goto_1

    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/admob/android/ads/n;->l:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    iget-object v4, p0, Lcom/admob/android/ads/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    iget-object v4, p0, Lcom/admob/android/ads/n;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x1000

    invoke-direct {v2, v4, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/admob/android/ads/n;->l:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v11

    :goto_6
    :try_start_5
    iget-object v2, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v4, "AdMobSDK"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    const-string v5, "X-AdMob-AdSrc"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdMobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ad response came from server "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v4, 0xc8

    if-lt v2, v4, :cond_e

    const/16 v4, 0x12c

    if-ge v2, v4, :cond_e

    iget-object v2, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    iput-object v2, p0, Lcom/admob/android/ads/n;->i:Ljava/net/URL;

    iget-boolean v2, p0, Lcom/admob/android/ads/n;->k:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_7
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catch_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_3

    :cond_9
    :try_start_6
    iget-object v1, p0, Lcom/admob/android/ads/n;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v11

    goto :goto_6

    :cond_a
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/admob/android/ads/n;->j:[B

    :cond_b
    iget-object v2, p0, Lcom/admob/android/ads/n;->h:Lcom/admob/android/ads/m;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/admob/android/ads/n;->h:Lcom/admob/android/ads/m;

    invoke-interface {v2, p0}, Lcom/admob/android/ads/m;->a(Lcom/admob/android/ads/ab;)V

    :cond_c
    move v2, v9

    :goto_8
    invoke-direct {p0}, Lcom/admob/android/ads/n;->h()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-direct {p0}, Lcom/admob/android/ads/n;->h()V

    move v1, v2

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    move-object v2, v11

    :goto_9
    if-eqz v2, :cond_d

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_d
    :goto_a
    invoke-direct {p0}, Lcom/admob/android/ads/n;->h()V

    throw v1

    :catch_2
    move-exception v1

    goto/16 :goto_4

    :catch_3
    move-exception v2

    goto :goto_a

    :catchall_1
    move-exception v1

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_9

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :cond_e
    move v2, v3

    goto :goto_8

    :cond_f
    move-object v1, v11

    move v2, v3

    goto :goto_8

    :cond_10
    move v1, v3

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/admob/android/ads/n;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/n;->h:Lcom/admob/android/ads/m;

    return-void
.end method

.method public final run()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/admob/android/ads/n;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdMobSDK"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught in AdMobURLConnector.run(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
