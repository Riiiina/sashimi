.class public final Lcom/clearchannel/iheartradio/model/facebook/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;
    }
.end annotation


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 372
    .local v1, "cookieSyncMngr":Landroid/webkit/CookieSyncManager;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 373
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 374
    return-void
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 223
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v2, "params":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 225
    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "array":[Ljava/lang/String;
    array-length v4, v0

    move v5, v8

    :goto_0
    if-lt v5, v4, :cond_1

    .line 231
    .end local v0    # "array":[Ljava/lang/String;
    :cond_0
    return-object v2

    .line 226
    .restart local v0    # "array":[Ljava/lang/String;
    :cond_1
    aget-object v1, v0, v5

    .line 227
    .local v1, "parameter":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "v":[Ljava/lang/String;
    aget-object v6, v3, v8

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    const-string v2, ""

    .line 202
    :goto_0
    return-object v2

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 191
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content-Disposition: form-data; name=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    const-string v4, "\"\r\n\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\r\n--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    const-string v3, ""

    .line 219
    :goto_0
    return-object v3

    .line 210
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 212
    .local v0, "first":Z
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 212
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    .local v1, "key":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 214
    const/4 v0, 0x0

    .line 217
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    :cond_2
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static isPOST(Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "POST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static login(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mFacebook"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook;
    .param p2, "listener"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget-object v1, p1, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->permisssions:[Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v2, p2}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->authorize(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V

    .line 84
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    .line 276
    .local v3, "strBoundary":Ljava/lang/String;
    const-string v1, "\r\n"

    .line 280
    .local v1, "endLine":Ljava/lang/String;
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "url":Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/clearchannel/iheartradio/model/facebook/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "Facebook-Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 284
    .end local p0    # "url":Ljava/lang/String;
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 286
    .local p0, "conn":Ljava/net/HttpURLConnection;
    const-string v0, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v4

    .line 287
    const-string v5, "http.agent"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    const-string v4, " FacebookAndroidSDK"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {p0, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget v0, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 291
    sget v0, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 294
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 295
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    .local v0, "dataparams":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 307
    const-string v2, "method"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 308
    const-string v2, "method"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_2
    const-string p1, "access_token"

    .end local p1    # "method":Ljava/lang/String;
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 313
    const-string p1, "access_token"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    .local p1, "decoded_token":Ljava/lang/String;
    const-string v2, "access_token"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local p1    # "decoded_token":Ljava/lang/String;
    :cond_3
    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 318
    const-string p1, "Content-Type"

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "multipart/form-data;boundary="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {p0, p1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 321
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 322
    const-string p1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {p0, p1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 324
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 326
    .local v2, "os":Ljava/io/OutputStream;
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 327
    invoke-static {p2, v3}, Lcom/clearchannel/iheartradio/model/facebook/Util;->encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "params":Landroid/os/Bundle;
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "--"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 330
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 332
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    .line 340
    :cond_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 343
    .end local v0    # "dataparams":Landroid/os/Bundle;
    .end local v2    # "os":Ljava/io/OutputStream;
    :cond_5
    const-string p1, ""

    .line 345
    .local p1, "response":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .end local p1    # "response":Ljava/lang/String;
    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/facebook/Util;->read(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 350
    .local p0, "response":Ljava/lang/String;
    :goto_2
    return-object p0

    .line 296
    .restart local v0    # "dataparams":Landroid/os/Bundle;
    .local p0, "conn":Ljava/net/HttpURLConnection;
    .local p1, "method":Ljava/lang/String;
    .restart local p2    # "params":Landroid/os/Bundle;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 297
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 332
    .end local p1    # "method":Ljava/lang/String;
    .end local p2    # "params":Landroid/os/Bundle;
    .local v2, "os":Ljava/io/OutputStream;
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 333
    .local p1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Disposition: form-data; filename=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Type: content/unknown"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .end local p1    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "--"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    .line 346
    .end local v0    # "dataparams":Landroid/os/Bundle;
    .end local v2    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception p1

    .line 348
    .local p1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .end local p0    # "conn":Ljava/net/HttpURLConnection;
    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/facebook/Util;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .local p0, "response":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public static parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/clearchannel/iheartradio/model/facebook/FacebookError;
        }
    .end annotation

    .prologue
    .line 399
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    new-instance v2, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    const-string v3, "request failed"

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_0
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    const-string p0, "{value : true}"

    .line 405
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 411
    .local v0, "error":Lorg/json/JSONObject;
    new-instance v2, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 411
    invoke-direct {v2, v3, v4, v5}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 414
    .end local v0    # "error":Lorg/json/JSONObject;
    :cond_2
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    new-instance v2, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    const-string v3, "error_msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 416
    const-string v5, "error_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 415
    invoke-direct {v2, v3, v4, v5}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 418
    :cond_3
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 419
    new-instance v2, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    const-string v3, "request failed"

    const-string v4, ""

    .line 420
    const-string v5, "error_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 419
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 422
    :cond_4
    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 423
    new-instance v2, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    const-string v3, "error_msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_5
    const-string v2, "error_reason"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 426
    new-instance v2, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;

    const-string v3, "error_reason"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_6
    return-object v1
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v3, "fbconnect"

    const-string v4, "http"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 245
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, "u":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/clearchannel/iheartradio/model/facebook/Util;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 247
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/clearchannel/iheartradio/model/facebook/Util;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 250
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "u":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 249
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 250
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static publish(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mFacebook"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook;
    .param p2, "caption"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "identifier"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;-><init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->show()V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    iget-object v7, p1, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->appId:Ljava/lang/String;

    iget-object v8, p1, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->permisssions:[Ljava/lang/String;

    new-instance v0, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/model/facebook/Util$LoginDialogListener;-><init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v7, v8, v0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->authorize(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/clearchannel/iheartradio/model/facebook/Facebook$DialogListener;)V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v6

    .line 71
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x3e8

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 356
    .local v1, "r":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 359
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 357
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 446
    return-void
.end method

.method public static simpleRequest(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/util/Hashtable;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 91
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 92
    .local v3, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 93
    .local v6, "os":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 96
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, [B

    .line 97
    .local v1, "bytes":[B
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v7, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_e

    .line 99
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 100
    .local v5, "keysEnum":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_5

    .line 106
    invoke-static {p2}, Lcom/clearchannel/iheartradio/model/facebook/Util;->isPOST(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "data":Ljava/util/Hashtable;
    if-eqz p1, :cond_b

    .line 107
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    .end local v1    # "bytes":[B
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 113
    .end local v5    # "keysEnum":Ljava/util/Enumeration;
    .local p1, "bytes":[B
    :goto_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_1
    const-string v2, "User-Agent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v5

    const-string v7, "http.agent"

    .end local v7    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " FacebookAndroidSDK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 116
    const-string v2, "Content-type"

    const-string v4, "application/octet-stream"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget v2, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 118
    sget v2, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 120
    invoke-static {p2}, Lcom/clearchannel/iheartradio/model/facebook/Util;->isPOST(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 121
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 122
    const-string v2, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 124
    invoke-static {p2}, Lcom/clearchannel/iheartradio/model/facebook/Util;->isPOST(Ljava/lang/String;)Z

    move-result p2

    .end local p2    # "method":Ljava/lang/String;
    if-eqz p2, :cond_d

    .line 125
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object p2

    .line 126
    .end local v6    # "os":Ljava/io/OutputStream;
    .local p2, "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 128
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v4, p2

    .line 131
    .end local p2    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v2

    .line 132
    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_4
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .end local p1    # "bytes":[B
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 133
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local p1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 p2, 0x3e8

    :try_start_5
    new-array p2, p2, [B

    .line 135
    .local p2, "buffer":[B
    :goto_3
    invoke-virtual {v2, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    .line 138
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 139
    .local p2, "response":[B
    new-instance v0, Ljava/lang/String;

    .end local v0    # "bytesRead":I
    const-string v3, "UTF-8"

    invoke-direct {v0, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 144
    if-eqz v2, :cond_1

    .line 146
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 151
    .end local p0    # "url":Ljava/lang/String;
    :cond_1
    :goto_4
    if-eqz v4, :cond_2

    .line 154
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 159
    :cond_2
    :goto_5
    if-eqz p1, :cond_3

    .line 161
    :try_start_8
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 166
    :cond_3
    :goto_6
    if-eqz v1, :cond_4

    .line 168
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 139
    :cond_4
    :goto_7
    return-object v0

    .line 101
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bytes":[B
    .local v2, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "keysEnum":Ljava/util/Enumeration;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local p0    # "url":Ljava/lang/String;
    .local p1, "data":Ljava/util/Hashtable;
    .local p2, "method":Ljava/lang/String;
    :cond_5
    :try_start_a
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 103
    .local v8, "val":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_6

    const-string v9, "&"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "key":Ljava/lang/String;
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .end local v8    # "val":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 141
    .end local v1    # "bytes":[B
    .end local v5    # "keysEnum":Ljava/util/Enumeration;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local p1    # "data":Ljava/util/Hashtable;
    :catch_0
    move-exception p1

    move-object v1, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p2, v2

    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .local p2, "conn":Ljava/net/HttpURLConnection;
    move-object v2, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    move-object v10, p1

    move-object p1, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local p1, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v10

    .line 142
    .local v0, "e":Ljava/io/IOException;
    :goto_8
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 143
    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    move-object v2, v10

    .line 144
    :goto_9
    if-eqz v0, :cond_7

    .line 146
    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 151
    .end local p0    # "url":Ljava/lang/String;
    :cond_7
    :goto_a
    if-eqz v1, :cond_8

    .line 154
    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 159
    :cond_8
    :goto_b
    if-eqz p1, :cond_9

    .line 161
    :try_start_e
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 166
    :cond_9
    :goto_c
    if-eqz p2, :cond_a

    .line 168
    :try_start_f
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 173
    :cond_a
    :goto_d
    throw v2

    .line 109
    .end local p1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bytes":[B
    .local v2, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "keysEnum":Ljava/util/Enumeration;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local p0    # "url":Ljava/lang/String;
    .local p2, "method":Ljava/lang/String;
    :cond_b
    :try_start_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object p0

    move-object p1, v1

    .end local v1    # "bytes":[B
    .local p1, "bytes":[B
    goto/16 :goto_1

    .line 136
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "keysEnum":Ljava/util/Enumeration;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .local v0, "bytesRead":I
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .local v2, "is":Ljava/io/InputStream;
    .local v4, "os":Ljava/io/OutputStream;
    .local p1, "bos":Ljava/io/ByteArrayOutputStream;
    .local p2, "buffer":[B
    :cond_c
    const/4 v3, 0x0

    :try_start_11
    invoke-virtual {p1, p2, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto/16 :goto_3

    .line 141
    .end local v0    # "bytesRead":I
    .end local p2    # "buffer":[B
    :catch_1
    move-exception p2

    move-object v0, p2

    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .local p2, "conn":Ljava/net/HttpURLConnection;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object v2, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    goto :goto_8

    .line 147
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .local v2, "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .local p2, "response":[B
    :catch_2
    move-exception p0

    goto/16 :goto_4

    .line 155
    .end local p0    # "url":Ljava/lang/String;
    :catch_3
    move-exception p0

    goto/16 :goto_5

    .line 162
    :catch_4
    move-exception p0

    goto/16 :goto_6

    .line 169
    :catch_5
    move-exception p0

    goto/16 :goto_7

    .line 147
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v0, "is":Ljava/io/InputStream;
    .local v1, "os":Ljava/io/OutputStream;
    .restart local p0    # "url":Ljava/lang/String;
    .local p2, "conn":Ljava/net/HttpURLConnection;
    :catch_6
    move-exception p0

    goto :goto_a

    .line 155
    .end local p0    # "url":Ljava/lang/String;
    :catch_7
    move-exception p0

    goto :goto_b

    .line 162
    :catch_8
    move-exception p0

    goto :goto_c

    .line 169
    :catch_9
    move-exception p0

    goto :goto_d

    .line 143
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local p1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    .local v2, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local p0    # "url":Ljava/lang/String;
    .local p2, "method":Ljava/lang/String;
    :catchall_1
    move-exception p1

    move-object v1, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    move-object p2, v2

    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .local p2, "conn":Ljava/net/HttpURLConnection;
    move-object v2, p1

    move-object p1, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_9

    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .local p1, "bytes":[B
    :catchall_2
    move-exception p1

    move-object v2, p1

    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    move-object v1, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    move-object p1, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local p1, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_9

    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .local p1, "bytes":[B
    .local p2, "os":Ljava/io/OutputStream;
    :catchall_3
    move-exception p1

    move-object v2, p1

    move-object p1, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local p1, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object v10, p2

    .end local p2    # "os":Ljava/io/OutputStream;
    .local v10, "os":Ljava/io/OutputStream;
    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .local p2, "conn":Ljava/net/HttpURLConnection;
    move-object v1, v10

    .end local v10    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    goto :goto_9

    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .local p1, "bytes":[B
    :catchall_4
    move-exception p1

    move-object v2, p1

    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    move-object v1, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    move-object p1, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local p1, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_9

    .end local p1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .local v2, "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_5
    move-exception p1

    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    move-object v1, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    move-object v10, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v10, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object v2, p1

    move-object p1, v10

    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_9

    .end local v0    # "is":Ljava/io/InputStream;
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_6
    move-exception p2

    move-object v0, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    move-object v2, p2

    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    move-object v1, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    goto :goto_9

    .line 141
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .local p1, "bytes":[B
    :catch_a
    move-exception p1

    move-object v2, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    move-object v1, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object v10, p1

    move-object p1, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local p1, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v10

    goto/16 :goto_8

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .local p1, "bytes":[B
    .local p2, "os":Ljava/io/OutputStream;
    :catch_b
    move-exception p1

    move-object v2, p2

    .end local p2    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .local p2, "conn":Ljava/net/HttpURLConnection;
    move-object v1, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object v10, p1

    move-object p1, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local p1, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v10

    goto/16 :goto_8

    .end local v2    # "os":Ljava/io/OutputStream;
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .local p1, "bytes":[B
    :catch_c
    move-exception p1

    move-object v2, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    move-object v1, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object v10, p1

    move-object p1, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local p1, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v10

    goto/16 :goto_8

    .end local p1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .local v2, "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_d
    move-exception p1

    move-object p2, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object v2, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    move-object v10, v0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, p1

    move-object p1, v10

    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8

    .end local v2    # "os":Ljava/io/OutputStream;
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .local p1, "bytes":[B
    :cond_d
    move-object v4, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto/16 :goto_2

    .end local v4    # "os":Ljava/io/OutputStream;
    .local v1, "bytes":[B
    .local v2, "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .local p1, "data":Ljava/util/Hashtable;
    .local p2, "method":Ljava/lang/String;
    :cond_e
    move-object p1, v1

    .end local v1    # "bytes":[B
    .local p1, "bytes":[B
    goto/16 :goto_1
.end method
