.class public Lcom/andoop/android/common/HTTPThread;
.super Ljava/lang/Thread;
.source "HTTPThread.java"


# static fields
.field public static final STATUS_FINISHED:I = 0x2

.field public static final STATUS_PENDING:I = 0x0

.field public static final STATUS_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mError:Z

.field private mException:Ljava/lang/Exception;

.field private mHandler:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLocal:Ljava/lang/String;

.field private mStatus:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/andoop/android/common/HTTPThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/andoop/android/common/HTTPThread;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/andoop/android/common/HTTPThread;->mError:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andoop/android/common/HTTPThread;->mException:Ljava/lang/Exception;

    .line 25
    iput v1, p0, Lcom/andoop/android/common/HTTPThread;->mStatus:I

    .line 29
    iput-object p1, p0, Lcom/andoop/android/common/HTTPThread;->mUrl:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/andoop/android/common/HTTPThread;->mLocal:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andoop/android/common/HTTPThread;->mHandler:Ljava/lang/ref/SoftReference;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTPThread for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/andoop/android/common/HTTPThread;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/andoop/android/common/HTTPThread;->setName(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/andoop/android/common/HTTPThread;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/andoop/android/common/HTTPThread;->mHandler:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/andoop/android/common/HTTPThread;->mHandler:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/andoop/android/common/HTTPThread;
    check-cast p0, Landroid/os/Handler;

    move-object v0, p0

    .line 113
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/andoop/android/common/HTTPThread;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/andoop/android/common/HTTPThread;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcom/andoop/android/common/HTTPThread;->mStatus:I

    monitor-exit p0

    return v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/andoop/android/common/HTTPThread;->mError:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 48
    const/4 v6, 0x0

    .line 49
    .local v6, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 51
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/andoop/android/common/HTTPThread;->mUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    .local v8, "request":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 53
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 54
    const-string v9, "User-Agent"

    const-string v10, "Andoop_1.0"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 56
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 57
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 58
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 59
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 60
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 61
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 62
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/andoop/android/common/HTTPThread;->mLocal:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x1000

    :try_start_1
    new-array v0, v9, [B

    .line 65
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v7

    .local v7, "l":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    .line 71
    if-eqz v6, :cond_0

    .line 72
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 74
    :cond_0
    if-eqz v4, :cond_7

    .line 75
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 76
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 82
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "l":I
    .end local v8    # "request":Ljava/net/URL;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    monitor-enter p0

    .line 83
    const/4 v9, 0x2

    :try_start_3
    iput v9, p0, Lcom/andoop/android/common/HTTPThread;->mStatus:I

    .line 82
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    invoke-virtual {p0}, Lcom/andoop/android/common/HTTPThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 86
    .local v5, "handler":Landroid/os/Handler;
    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {v5, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    :cond_2
    return-void

    .line 66
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "handler":Landroid/os/Handler;
    .restart local v0    # "buffer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "l":I
    .restart local v8    # "request":Ljava/net/URL;
    :cond_3
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v4, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 68
    .end local v0    # "buffer":[B
    .end local v7    # "l":I
    :catch_0
    move-exception v9

    move-object v2, v9

    move-object v3, v4

    .line 69
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "request":Ljava/net/URL;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    sget-object v9, Lcom/andoop/android/common/HTTPThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/andoop/android/common/HTTPThread;->mUrl:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 71
    if-eqz v6, :cond_4

    .line 72
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 74
    :cond_4
    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 76
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 79
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v9, Lcom/andoop/android/common/HTTPThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/andoop/android/common/HTTPThread;->mUrl:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " run "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 71
    :goto_4
    if-eqz v6, :cond_5

    .line 72
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 74
    :cond_5
    if-eqz v3, :cond_6

    .line 75
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 76
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 78
    :cond_6
    throw v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 82
    :catchall_1
    move-exception v9

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v9

    .line 79
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "l":I
    .restart local v8    # "request":Ljava/net/URL;
    :catch_2
    move-exception v9

    move-object v2, v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 70
    .end local v0    # "buffer":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "l":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 68
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "request":Ljava/net/URL;
    :catch_3
    move-exception v9

    move-object v2, v9

    goto :goto_2

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "l":I
    .restart local v8    # "request":Ljava/net/URL;
    :cond_7
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andoop/android/common/HTTPThread;->mHandler:Ljava/lang/ref/SoftReference;

    .line 107
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/andoop/android/common/HTTPThread;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    monitor-enter p0

    .line 40
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/andoop/android/common/HTTPThread;->mStatus:I

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 44
    :cond_0
    return-void

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
