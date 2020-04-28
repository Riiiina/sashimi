.class public final Lcom/andoop/android/common/WebRequest;
.super Ljava/lang/Thread;
.source "WebRequest.java"


# static fields
.field private static final AND:Ljava/lang/String; = "&"

.field public static final CONN_TIMEOUT:I = 0x3a98

.field private static final EQUAL:Ljava/lang/String; = "="

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final READ_TIMEOUT:I = 0x3a98

.field public static final RESPONSE:Ljava/lang/String; = "response"

.field private static final SEPERATOR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WebRequest"

.field public static final USER_AGENT:Ljava/lang/String; = "Andoop_1.0"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mData:Ljava/lang/StringBuilder;

.field private final mHandler:Landroid/os/Handler;

.field private mMethod:Ljava/lang/String;

.field private final mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/andoop/android/common/WebRequest;->SEPERATOR:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    .line 42
    iput-object p1, p0, Lcom/andoop/android/common/WebRequest;->mURL:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/andoop/android/common/WebRequest;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebRequest for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/andoop/android/common/WebRequest;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andoop/android/common/WebRequest;->setName(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, "outputBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 131
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v0, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    .local v0, "isr":Ljava/io/Reader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 133
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "string":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 137
    .end local v0    # "isr":Ljava/io/Reader;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 134
    .restart local v0    # "isr":Ljava/io/Reader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/andoop/android/common/WebRequest;->SEPERATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    .line 56
    :goto_0
    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v0, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    :goto_1
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public get()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "GET"

    iput-object v0, p0, Lcom/andoop/android/common/WebRequest;->mMethod:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/andoop/android/common/WebRequest;->start()V

    .line 68
    return-void
.end method

.method public post()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "POST"

    iput-object v0, p0, Lcom/andoop/android/common/WebRequest;->mMethod:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/andoop/android/common/WebRequest;->start()V

    .line 73
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const-string v9, "response"

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "b":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 80
    .local v4, "url":Ljava/net/URL;
    :try_start_0
    iget-object v7, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    if-eqz v7, :cond_2

    const-string v7, "GET"

    iget-object v8, p0, Lcom/andoop/android/common/WebRequest;->mMethod:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    iget-object v7, p0, Lcom/andoop/android/common/WebRequest;->mURL:Ljava/lang/String;

    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 82
    new-instance v5, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/andoop/android/common/WebRequest;->mURL:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v4    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    move-object v4, v5

    .line 89
    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_0
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 90
    .local v1, "conn":Ljava/net/HttpURLConnection;
    iget-object v7, p0, Lcom/andoop/android/common/WebRequest;->mMethod:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    const-string v7, "User-Agent"

    const-string v8, "Andoop_1.0"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 93
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 94
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 95
    const/16 v7, 0x3a98

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 96
    const/16 v7, 0x3a98

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 98
    iget-object v7, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    if-eqz v7, :cond_3

    const-string v7, "POST"

    iget-object v8, p0, Lcom/andoop/android/common/WebRequest;->mMethod:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 100
    .local v6, "wr":Ljava/io/DataOutputStream;
    iget-object v7, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 102
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 107
    .end local v6    # "wr":Ljava/io/DataOutputStream;
    :goto_1
    const-string v7, "response"

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/andoop/android/common/WebRequest;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    :goto_2
    iget-object v7, p0, Lcom/andoop/android/common/WebRequest;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 121
    iget-object v7, p0, Lcom/andoop/android/common/WebRequest;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 122
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 123
    iget-object v7, p0, Lcom/andoop/android/common/WebRequest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 84
    :cond_1
    :try_start_1
    new-instance v5, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/andoop/android/common/WebRequest;->mURL:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/andoop/android/common/WebRequest;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v4    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    move-object v4, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 87
    :cond_2
    new-instance v5, Ljava/net/URL;

    iget-object v7, p0, Lcom/andoop/android/common/WebRequest;->mURL:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v4    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    move-object v4, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 104
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 109
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 110
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "WebRequest"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const-string v7, "response"

    const-string v7, ""

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
