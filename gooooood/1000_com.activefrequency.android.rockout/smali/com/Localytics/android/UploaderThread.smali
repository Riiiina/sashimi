.class public Lcom/Localytics/android/UploaderThread;
.super Ljava/lang/Thread;
.source "UploaderThread.java"


# static fields
.field private static final ANALYTICS_URL:Ljava/lang/String; = "http://analytics.localytics.com/api/datapoints/bulk"

.field private static final BUFFER_SIZE:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "Localytics_uploader"


# instance fields
.field private _closeFilePrefix:Ljava/lang/String;

.field private _completeCallback:Ljava/lang/Runnable;

.field private _localyticsDir:Ljava/io/File;

.field private _sessionFilePrefix:Ljava/lang/String;

.field private _uploaderFilePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "localyticsDir"    # Ljava/io/File;
    .param p2, "sessionFilePrefix"    # Ljava/lang/String;
    .param p3, "uploaderFilePrefix"    # Ljava/lang/String;
    .param p4, "closeFilePrefix"    # Ljava/lang/String;
    .param p5, "completeCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    .line 77
    iput-object p2, p0, Lcom/Localytics/android/UploaderThread;->_sessionFilePrefix:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/Localytics/android/UploaderThread;->_uploaderFilePrefix:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/Localytics/android/UploaderThread;->_closeFilePrefix:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/Localytics/android/UploaderThread;->_completeCallback:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/Localytics/android/UploaderThread;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/Localytics/android/UploaderThread;->_uploaderFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/Localytics/android/UploaderThread;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/Localytics/android/UploaderThread;->_sessionFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/Localytics/android/UploaderThread;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/Localytics/android/UploaderThread;->_closeFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method private createPostBodyFromFiles(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "uploaderFiles"    # [Ljava/lang/String;

    .prologue
    const-string v9, "Localytics_uploader"

    .line 266
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v5, "postBody":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "currentFile":I
    :goto_0
    array-length v7, p2

    if-lt v1, v7, :cond_0

    .line 299
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 274
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v3, "inputFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    .line 279
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 280
    const/16 v8, 0x400

    .line 278
    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 281
    .local v6, "reader":Ljava/io/BufferedReader;
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 283
    .local v0, "buf":[C
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .local v4, "numRead":I
    if-gtz v4, :cond_1

    .line 287
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 272
    .end local v0    # "buf":[C
    .end local v4    # "numRead":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .restart local v0    # "buf":[C
    .restart local v4    # "numRead":I
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 289
    .end local v0    # "buf":[C
    .end local v4    # "numRead":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 291
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v7, "Localytics_uploader"

    const-string v7, "File Not Found"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 293
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 295
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "Localytics_uploader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IOException: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getSessionFilenameFromCloseFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "closeFilename"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/Localytics/android/UploaderThread;->_sessionFilePrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/Localytics/android/UploaderThread;->_closeFilePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private renameOrAppendCloseFiles(Ljava/lang/String;)V
    .locals 8
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    const-string v7, "/"

    .line 181
    new-instance v1, Lcom/Localytics/android/UploaderThread$3;

    invoke-direct {v1, p0}, Lcom/Localytics/android/UploaderThread$3;-><init>(Lcom/Localytics/android/UploaderThread;)V

    .line 190
    .local v1, "filter":Ljava/io/FilenameFilter;
    iget-object v5, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v5, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "originalFiles":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "currentFile":I
    :goto_0
    array-length v5, v3

    if-lt v0, v5, :cond_0

    .line 202
    return-void

    .line 193
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "originalFileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 198
    iget-object v6, p0, Lcom/Localytics/android/UploaderThread;->_uploaderFilePrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 199
    aget-object v6, v3, v0

    invoke-direct {p0, v6}, Lcom/Localytics/android/UploaderThread;->getSessionFilenameFromCloseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 197
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "targetFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/Localytics/android/UploaderThread;->renameOrAppendFile(Ljava/io/File;Ljava/io/File;)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static renameOrAppendFile(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "source"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;

    .prologue
    const-string v7, "Localytics_uploader"

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 228
    .local v2, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 230
    .local v4, "out":Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 232
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-gtz v3, :cond_0

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 237
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 238
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 253
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 234
    .restart local v0    # "buf":[B
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 240
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 242
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "Localytics_uploader"

    const-string v5, "File not found."

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 246
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Localytics_uploader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IO Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1
.end method

.method private renameOrAppendSessionFiles(Ljava/lang/String;)V
    .locals 8
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    const-string v7, "/"

    .line 151
    new-instance v1, Lcom/Localytics/android/UploaderThread$2;

    invoke-direct {v1, p0}, Lcom/Localytics/android/UploaderThread$2;-><init>(Lcom/Localytics/android/UploaderThread;)V

    .line 160
    .local v1, "filter":Ljava/io/FilenameFilter;
    iget-object v5, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v5, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "originalFiles":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "currentFile":I
    :goto_0
    array-length v5, v3

    if-lt v0, v5, :cond_0

    .line 167
    return-void

    .line 163
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "originalFileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/Localytics/android/UploaderThread;->_uploaderFilePrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "targetFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/Localytics/android/UploaderThread;->renameOrAppendFile(Ljava/io/File;Ljava/io/File;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private uploadSessions(Ljava/lang/String;)Z
    .locals 11
    .param p1, "ymlBlob"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const-string v9, "Localytics_uploader"

    .line 309
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 310
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v6, "http://analytics.localytics.com/api/datapoints/bulk"

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 314
    .local v2, "method":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 315
    .local v3, "postBody":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 316
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 318
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 319
    .local v5, "status":Lorg/apache/http/StatusLine;
    const-string v6, "Localytics_uploader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Upload complete. Status: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 324
    const/4 v6, 0x1

    .line 341
    .end local v3    # "postBody":Lorg/apache/http/entity/StringEntity;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "status":Lorg/apache/http/StatusLine;
    :goto_0
    return v6

    .line 328
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 330
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "Localytics_uploader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UnsuppEncodingException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 331
    goto :goto_0

    .line 333
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 335
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v6, "Localytics_uploader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ClientProtocolException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 336
    goto :goto_0

    .line 338
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 340
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Localytics_uploader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 341
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-string v11, "Localytics_uploader"

    .line 89
    const/4 v4, 0x0

    .line 93
    .local v4, "numFilesToUpload":I
    :try_start_0
    iget-object v8, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 95
    iget-object v8, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "basePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/Localytics/android/UploaderThread;->renameOrAppendSessionFiles(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v0}, Lcom/Localytics/android/UploaderThread;->renameOrAppendCloseFiles(Ljava/lang/String;)V

    .line 103
    new-instance v3, Lcom/Localytics/android/UploaderThread$1;

    invoke-direct {v3, p0}, Lcom/Localytics/android/UploaderThread$1;-><init>(Lcom/Localytics/android/UploaderThread;)V

    .line 111
    .local v3, "filter":Ljava/io/FilenameFilter;
    iget-object v8, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v8, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "uploaderFiles":[Ljava/lang/String;
    array-length v4, v7

    .line 113
    invoke-direct {p0, v0, v7}, Lcom/Localytics/android/UploaderThread;->createPostBodyFromFiles(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "postBody":Ljava/lang/String;
    const-string v8, "Localytics_uploader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Attempting to upload "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " files."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/Localytics/android/UploaderThread;->uploadSessions(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 121
    const/4 v1, 0x0

    .local v1, "currentFile":I
    :goto_0
    array-length v8, v7

    if-lt v1, v8, :cond_2

    .line 130
    .end local v0    # "basePath":Ljava/lang/String;
    .end local v1    # "currentFile":I
    .end local v3    # "filter":Ljava/io/FilenameFilter;
    .end local v5    # "postBody":Ljava/lang/String;
    .end local v7    # "uploaderFiles":[Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/Localytics/android/UploaderThread;->_completeCallback:Ljava/lang/Runnable;

    if-eqz v8, :cond_1

    .line 132
    iget-object v8, p0, Lcom/Localytics/android/UploaderThread;->_completeCallback:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 139
    :cond_1
    :goto_1
    return-void

    .line 123
    .restart local v0    # "basePath":Ljava/lang/String;
    .restart local v1    # "currentFile":I
    .restart local v3    # "filter":Ljava/io/FilenameFilter;
    .restart local v5    # "postBody":Ljava/lang/String;
    .restart local v7    # "uploaderFiles":[Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v6, "uploadedFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "basePath":Ljava/lang/String;
    .end local v1    # "currentFile":I
    .end local v3    # "filter":Ljava/io/FilenameFilter;
    .end local v5    # "postBody":Ljava/lang/String;
    .end local v6    # "uploadedFile":Ljava/io/File;
    .end local v7    # "uploaderFiles":[Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "Localytics_uploader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Swallowing exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
