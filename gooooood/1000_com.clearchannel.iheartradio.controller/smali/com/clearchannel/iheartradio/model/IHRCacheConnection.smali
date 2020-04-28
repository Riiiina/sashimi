.class public Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
.super Lcom/clearchannel/iheartradio/model/IHRHTTP;
.source "IHRCacheConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/IHRCacheConnection$IHRCacheTimerTask;
    }
.end annotation


# static fields
.field public static final kFileClose:I = 0x0

.field public static final kFileCloseThenDelete:I = 0x3

.field public static final kFileCloseThenWrite:I = 0x2

.field public static final kFileDeleteAfterClose:I = 0x4

.field public static final kFileOpen:I = 0x1

.field public static final kHeaderLength:Ljava/lang/String; = "Content-Length"

.field public static final kHeaderModify:Ljava/lang/String; = "Last-Modified"

.field public static final kHeaderRanges:Ljava/lang/String; = "Accept-Ranges"

.field public static final kResumeAtomic:Ljava/lang/String; = "atomic"

.field public static final kResumeAttempt:I = 0x1

.field public static final kResumeFailure:I = 0x0

.field public static final kResumeFlattenKeys:[Ljava/lang/String;

.field public static final kResumeOffset:Ljava/lang/String; = "offset"

.field public static final kResumeSuccess:I = 0x3


# instance fields
.field _atomicFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field _delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

.field _deleteFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field _path:Ljava/lang/String;

.field _resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field _resumeFlag:Ljava/util/concurrent/atomic/AtomicInteger;

.field _retainFlag:I

.field _site:Ljava/lang/String;

.field _stream:Ljava/io/OutputStream;

.field _timer:Ljava/util/TimerTask;

.field _url:Ljava/lang/String;

.field _write:Lcom/clearchannel/iheartradio/model/IHRFile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "atomic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "offset"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Content-Length"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Last-Modified"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->kResumeFlattenKeys:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCache;Ljava/lang/String;)V
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inDelegate"    # Lcom/clearchannel/iheartradio/model/IHRCache;
    .param p3, "inSite"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, v0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;-><init>(Ljava/lang/String;[B)V

    .line 61
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_atomicFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_deleteFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resumeFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mIgnoreReply:Z

    .line 73
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mCredentialsIdentifier:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private fileAction(I)V
    .locals 6
    .param p1, "inAction"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 204
    const/4 v2, 0x1

    if-ne v2, p1, :cond_3

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    if-nez v2, :cond_0

    .line 209
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>()V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    .line 210
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->pathWrite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRFile;->openCreatingParents(Ljava/lang/String;)Z

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_stream:Ljava/io/OutputStream;

    if-nez v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v2, :cond_2

    move v1, v4

    .line 218
    .local v1, "offset":I
    :goto_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-virtual {v2, v1}, Lcom/clearchannel/iheartradio/model/IHRFile;->openOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_stream:Ljava/io/OutputStream;

    .line 267
    .end local v1    # "offset":I
    :cond_1
    :goto_1
    return-void

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v3, "offset"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v1, v2

    goto :goto_0

    .line 220
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-enter p0

    .line 229
    const/4 v2, 0x4

    if-ne v2, p1, :cond_4

    .line 230
    :try_start_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_stream:Ljava/io/OutputStream;

    if-nez v2, :cond_9

    move p1, v4

    .line 233
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_stream:Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 236
    :try_start_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    :goto_3
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_stream:Ljava/io/OutputStream;

    .line 239
    if-ne p1, v5, :cond_5

    .line 240
    const-string v2, "fileAction"

    const-string v3, "buffer"

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCache;->deleteForBufferingPath(Ljava/lang/String;)V

    .line 246
    :cond_5
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    if-eqz v2, :cond_8

    .line 247
    const/4 v2, 0x2

    if-ne v2, p1, :cond_6

    .line 248
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_atomicFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 249
    const-string v2, "fileAction"

    const-string v3, "rename"

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRFile;->renameToPathInSameDirectory(Ljava/lang/String;)Z

    .line 255
    :cond_6
    if-ne v5, p1, :cond_7

    .line 256
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_deleteFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 257
    const-string v2, "fileAction"

    const-string v3, "delete"

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :try_start_4
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRFile;->deleteWithEmptyParent()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    :cond_7
    :goto_4
    :try_start_5
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 264
    :goto_5
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    .line 228
    :cond_8
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    :cond_9
    move p1, v5

    .line 230
    goto :goto_2

    .line 263
    :catch_1
    move-exception v2

    goto :goto_5

    .line 259
    :catch_2
    move-exception v2

    goto :goto_4

    .line 236
    :catch_3
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->resumeAbort()V

    .line 496
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->cancel()V

    .line 497
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->fileAction(I)V

    .line 498
    return-void
.end method

.method public debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "inMethod"    # Ljava/lang/String;
    .param p2, "inMessage"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "## "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_path:Ljava/lang/String;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_path:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public deletesFileUponFailure()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_deleteFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public go()V
    .locals 0

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->openThenClose()V

    return-void
.end method

.method public hasContent()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 577
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v3, :cond_1

    .line 578
    iget v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mBytesRead:I

    iget v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    if-lt v3, v4, :cond_0

    move v2, v11

    .line 585
    .local v2, "result":Z
    :goto_0
    return v2

    .end local v2    # "result":Z
    :cond_0
    move v2, v10

    .line 578
    goto :goto_0

    .line 579
    :cond_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v3

    .line 580
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "Content-Length"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->longValue(Ljava/lang/String;J)J

    move-result-wide v0

    .line 582
    .local v0, "length":J
    cmp-long v4, v8, v0

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "offset"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->longValue(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_2

    move v2, v11

    .line 579
    .restart local v2    # "result":Z
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "length":J
    .end local v2    # "result":Z
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "length":J
    :cond_2
    move v2, v10

    .line 582
    goto :goto_1
.end method

.method public isErrorRecoverable()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resumeFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openThenClose()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 444
    const/4 v1, 0x0

    .line 451
    .local v1, "opened":Z
    :try_start_0
    const-string v2, "openThenClose"

    const-string v3, "open"

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->open()V

    .line 453
    const/4 v1, 0x1

    .line 456
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->available()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRCache;->didWrite(Ljava/lang/String;I)V

    .line 458
    :cond_0
    const-string v2, "openThenClose"

    const-string v3, "read"

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->read()V

    .line 462
    const-string v2, "openThenClose"

    const-string v3, "done"

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->fileAction(I)V

    .line 465
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCache;->didFinish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->close()V

    .line 489
    return-void

    .line 466
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mData:[B

    .line 468
    if-eqz v1, :cond_3

    .line 469
    const-string v2, "IHRCacheConnection.openThenClose"

    const-string v3, "Failed to read from opened connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    const-string v2, "openThenClose"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resumeFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 478
    :cond_2
    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_retainFlag:I

    if-nez v2, :cond_4

    const/4 v2, 0x4

    :goto_2
    invoke-direct {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->fileAction(I)V

    .line 481
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->didFail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 472
    :cond_3
    const-string v2, "IHRCacheConnection.openThenClose"

    const-string v3, "Failed to open connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v2, v8

    .line 478
    goto :goto_2
.end method

.method public pathFinal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public pathWrite()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_atomicFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_path:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_path:Ljava/lang/String;

    goto :goto_0
.end method

.method protected prepareRequest()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v1, :cond_0

    move v0, v3

    .line 303
    .local v0, "offset":I
    :goto_0
    if-lez v0, :cond_1

    .line 304
    const-string v1, "prepareRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Range: bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_1
    return-void

    .line 301
    .end local v0    # "offset":I
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "offset"

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 308
    .restart local v0    # "offset":I
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    goto :goto_1
.end method

.method protected processData([B)V
    .locals 5
    .param p1, "inData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 340
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->processData([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->cancel()V

    .line 344
    const-string v1, "processData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resumeFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 347
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->didFail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected processData([BII)V
    .locals 5
    .param p1, "inData"    # [B
    .param p2, "inOffset"    # I
    .param p3, "inLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 313
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->available()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    const-string v1, "processData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buffer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/clearchannel/iheartradio/model/IHRCache;->didReceive(Ljava/lang/String;[BII)V

    .line 334
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_stream:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    .line 319
    invoke-direct {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->fileAction(I)V

    .line 322
    :cond_1
    iput v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_retainFlag:I

    .line 323
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 324
    iput v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_retainFlag:I

    .line 326
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "offset"

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v0

    .line 329
    .local v0, "wrote":I
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "offset"

    new-instance v3, Ljava/lang/Integer;

    add-int v4, v0, p3

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v0    # "wrote":I
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/clearchannel/iheartradio/model/IHRCache;->didWrite(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected processHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 356
    invoke-super {p0}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->processHeaders()V

    .line 362
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->getResponseCode()I

    move-result v0

    .line 364
    .local v0, "code":I
    const/16 v2, 0x12d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x130

    if-eq v0, v2, :cond_0

    const/16 v2, 0x133

    if-eq v0, v2, :cond_0

    .line 366
    const/16 v2, 0x190

    if-lt v0, v2, :cond_1

    const/16 v2, 0x191

    if-eq v0, v2, :cond_1

    const/16 v2, 0x197

    if-eq v0, v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resumeFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 368
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->cancel()V

    .line 369
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HTTP "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRCache;->didFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v2, :cond_4

    .line 371
    const-string v2, "Last-Modified"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "header":Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 374
    :cond_2
    const-string v2, "processHeaders"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "modify "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "Last-Modified"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resumeFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 377
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 378
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->cancel()V

    .line 379
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->resumeAfter(I)V

    goto :goto_0

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v3, "offset"

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mBytesRead:I

    .line 382
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    .line 384
    const-string v2, "processHeaders"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resume "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mBytesRead:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "modify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    .end local v1    # "header":Ljava/lang/String;
    :cond_4
    const-string v2, "Accept-Ranges"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    .restart local v1    # "header":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 391
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resumeFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 393
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v3, "url"

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v3, "Last-Modified"

    const-string v4, "Last-Modified"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v3, "Content-Length"

    const-string v4, "Content-Length"

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v2, "processHeaders"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ranges "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "Content-Length"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected processResponse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->getResponseCode()I

    move-result v0

    .line 275
    .local v0, "code":I
    const/16 v2, 0xc8

    if-eq v2, v0, :cond_0

    const/16 v2, 0xce

    if-ne v2, v0, :cond_1

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->processHeaders()V

    .line 277
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->openInputStream()V

    .line 279
    const/4 v1, 0x1

    .line 282
    :cond_1
    return v1
.end method

.method public progress()D
    .locals 9

    .prologue
    .line 565
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v2, :cond_0

    .line 566
    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mBytesRead:I

    int-to-double v2, v2

    iget v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 571
    .local v0, "result":D
    :goto_0
    return-wide v0

    .line 567
    .end local v0    # "result":D
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v2

    .line 568
    :try_start_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, "offset"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->doubleValue(Ljava/lang/String;D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v6, "Content-Length"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->doubleValue(Ljava/lang/String;D)D

    move-result-wide v5

    div-double v0, v3, v5

    .line 567
    .restart local v0    # "result":D
    monitor-exit v2

    goto :goto_0

    .end local v0    # "result":D
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected read()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    const/4 v4, 0x1

    .line 404
    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    :goto_0
    new-array v0, v2, [B

    .line 408
    .local v0, "buffer":[B
    :goto_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "cancelled"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "buffer":[B
    :cond_0
    move v2, v3

    .line 404
    goto :goto_0

    .line 410
    .restart local v0    # "buffer":[B
    :cond_1
    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mBytesRead:I

    iget v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    if-lt v2, v3, :cond_2

    .line 411
    iput-boolean v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mSuccess:Z

    .line 439
    :goto_2
    const/4 v0, 0x0

    check-cast v0, [B

    .line 440
    return-void

    .line 416
    :cond_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 420
    .local v1, "n":I
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "cancelled"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    :cond_3
    if-gez v1, :cond_5

    .line 423
    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mBytesRead:I

    iget v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    if-ge v2, v3, :cond_4

    .line 424
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "unexpected end of file"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_4
    iput-boolean v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mSuccess:Z

    goto :goto_2

    .line 431
    :cond_5
    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mBytesRead:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mBytesRead:I

    .line 433
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->processData([BII)V

    .line 436
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public recreateHonoringResume(Z)V
    .locals 7
    .param p1, "inHonor"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->close()V

    .line 166
    if-nez p1, :cond_0

    .line 167
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mURL:Ljava/lang/String;

    .line 173
    iput v5, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mBytesRead:I

    .line 174
    iput-boolean v5, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mSuccess:Z

    .line 175
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    iput v5, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mCompressionType:I

    .line 177
    iput v5, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mContentLength:I

    .line 178
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mConnection:Ljava/lang/Object;

    .line 179
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mData:[B

    .line 181
    const-string v1, "recreateHonoringResume"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "honor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v3, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mPostData:[B

    .line 186
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cache "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->relativePathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 188
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 198
    return-void

    .line 181
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, "offset"

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1
.end method

.method public resumeAbort()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_timer:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_timer:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_timer:Ljava/util/TimerTask;

    .line 550
    :cond_0
    return-void
.end method

.method public resumeAfter(I)V
    .locals 4
    .param p1, "inSeconds"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_timer:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_timer:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 555
    :cond_0
    const-string v0, "resumeAfter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection$IHRCacheTimerTask;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection$IHRCacheTimerTask;-><init>(Lcom/clearchannel/iheartradio/model/IHRCacheConnection;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_timer:Ljava/util/TimerTask;

    .line 559
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->timer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_timer:Ljava/util/TimerTask;

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 560
    return-void
.end method

.method public resumeData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 528
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v3, "atomic"

    new-instance v4, Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_atomicFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    sget-object v3, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->kResumeFlattenKeys:[Ljava/lang/String;

    const-string v4, "\t"

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->flatten([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 534
    :cond_0
    return-object v0

    .line 531
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resumePosition(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 6
    .param p1, "ioResume"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_atomicFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "write"

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->pathWrite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v0

    .line 520
    :try_start_0
    const-string v1, "offset"

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p1, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 521
    const-string v1, "length"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, "Content-Length"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    .line 523
    :cond_1
    return-void

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDeletesFileUponFailure(Z)V
    .locals 1
    .param p1, "inDelete"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_deleteFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 510
    return-void
.end method

.method public setDestination(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "inPath"    # Ljava/lang/String;
    .param p2, "inData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 110
    const-wide/16 v0, 0x0

    .line 112
    .local v0, "size":J
    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    .line 113
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_path:Ljava/lang/String;

    .line 115
    if-nez p2, :cond_0

    .line 116
    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 142
    :goto_0
    invoke-virtual {p0, v7}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->recreateHonoringResume(Z)V

    .line 143
    return-void

    .line 118
    :cond_0
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 119
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    sget-object v4, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->kResumeFlattenKeys:[Ljava/lang/String;

    const-string v5, "\t"

    invoke-virtual {v3, v4, v5, p2, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->restore([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 121
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "string":Ljava/lang/String;
    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, "atomic"

    invoke-virtual {v3, v4, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_atomicFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    :cond_2
    :try_start_0
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->pathWrite()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    .line 131
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRFile;->fileSize()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 134
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, "offset"

    new-instance v5, Ljava/lang/Integer;

    long-to-int v6, v0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    long-to-int v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/model/IHRCache;->didWrite(Ljava/lang/String;I)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resume:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, "offset"

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public setDestination(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "inPath"    # Ljava/lang/String;
    .param p2, "inAllowOverwrite"    # Z

    .prologue
    const/4 v3, 0x0

    .line 85
    if-nez p2, :cond_0

    .line 87
    :try_start_0
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-direct {v0, p1}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    move p2, v3

    .line 91
    :goto_0
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :cond_0
    :goto_1
    if-eqz p2, :cond_3

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_write:Lcom/clearchannel/iheartradio/model/IHRFile;

    .line 97
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_path:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->mConnection:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->recreateHonoringResume(Z)V

    .line 106
    :cond_1
    :goto_2
    return-void

    .line 89
    .restart local v0    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :cond_2
    const/4 v1, 0x1

    move p2, v1

    goto :goto_0

    .line 101
    .end local v0    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :cond_3
    const-string v1, "setDestination"

    const-string v2, "fail: File Exists"

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_resumeFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 104
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_delegate:Lcom/clearchannel/iheartradio/model/IHRCache;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "File Exists"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCache;->didFail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 92
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public trackingURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 146
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->_url:Ljava/lang/String;

    .line 149
    .local v2, "result":Ljava/lang/String;
    sget-object v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->standardPostData()Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    move-result-object v0

    .line 154
    .local v0, "data":Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    if-nez v0, :cond_1

    const/4 v3, 0x0

    move-object v1, v3

    .line 156
    .local v1, "parameters":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    const-string v4, "?"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_0
    return-object v2

    .line 154
    .end local v1    # "parameters":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 157
    .restart local v1    # "parameters":Ljava/lang/String;
    :cond_2
    const-string v4, "&"

    goto :goto_1
.end method
