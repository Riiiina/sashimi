.class public Lcom/clearchannel/iheartradio/model/IHRCache;
.super Landroid/content/BroadcastReceiver;
.source "IHRCache.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/IHRCache$IHRCacheOutputStream;
    }
.end annotation


# static fields
.field public static final kCachePath:Ljava/lang/String; = "iheartradio/"

.field public static final kFlattenDelimiter:Ljava/lang/String; = "\n"

.field public static final kFlattenKeys:[Ljava/lang/String;

.field public static final kMessageCache:Ljava/lang/String; = "com.clearchannel.iheartradio.cache"

.field public static final kMessageProgress:Ljava/lang/String; = "com.clearchannel.iheartradio.progress"

.field public static final kNotifyNameAvailable:Ljava/lang/String; = "IHRCacheAvailable"

.field public static final kNotifyNameData:Ljava/lang/String; = "IHRCacheData"

.field public static final kNotifyNameDownload:Ljava/lang/String; = "IHRCacheResults"

.field public static final kOptionAtomic:I = 0x20

.field public static final kOptionNotify:I = 0x40

.field public static final kOptionPaused:I = 0x4

.field public static final kOptionReload:I = 0x1

.field public static final kOptionRepeat:I = 0x8

.field public static final kOptionResume:I = 0x2

.field public static final kOptionSerial:I = 0x80

.field public static final kOptionSingle:I = 0x38

.field public static final kOptionUpdate:I = 0x10

.field public static final kOrderAppend:I = 0x3

.field public static final kOrderInsert:I = 0x4

.field public static final kOrderPaused:I = 0x0

.field public static final kOrderRemove:I = -0x1

.field public static final kOrderResume:I = 0x1

.field public static final kPreferenceKeyResumeData:Ljava/lang/String; = "CacheResumeData"

.field public static final kResumeCancel:I = 0x8

.field public static final kResumeEnable:I = 0x1

.field public static final kResumeMarked:I = 0x4

.field public static final kResumeRemove:I = 0x0

.field public static final kResumeUpdate:I = 0x3

.field public static final kStateAbsent:I = 0x0

.field public static final kStateFailed:I = 0x9

.field public static final kStateLoaded:I = 0x3

.field public static final kStateOnDisk:I = 0x2

.field public static final kStatePaused:I = 0x4

.field public static final kStateQueued:I = 0x1

.field public static final keyPaused:Ljava/lang/String; = "paused"

.field public static sRelativePaths:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;


# instance fields
.field private mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field private mCacheRoot:Ljava/lang/String;

.field private mOrder:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field private mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field private mTimer:Ljava/util/Timer;

.field private mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "resume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "paused"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "offset"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "length"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "options"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "identifier"

    aput-object v2, v0, v1

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRCache;->kFlattenKeys:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 95
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method public static dataForPath(Ljava/lang/String;)[B
    .locals 3
    .param p0, "inPath"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v1, 0x0

    check-cast v1, [B

    .line 262
    .local v1, "result":[B
    :try_start_0
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->data()[B

    move-result-object v1

    .line 266
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private enqueue(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Ljava/lang/String;)V
    .locals 7
    .param p1, "inDictionary"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .param p2, "inURL"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 671
    invoke-direct {p0, p2}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v0

    .line 673
    .local v0, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez p1, :cond_4

    move v1, v5

    .line 674
    .local v1, "np":Z
    :goto_0
    if-nez v0, :cond_5

    move v2, v5

    .line 676
    .local v2, "op":Z
    :goto_1
    if-nez p1, :cond_6

    .line 677
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v4, p2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 685
    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 687
    :cond_2
    if-nez p1, :cond_8

    move v3, v6

    :goto_3
    if-nez v0, :cond_9

    move v4, v6

    :goto_4
    if-eq v3, v4, :cond_3

    .line 688
    if-eqz p1, :cond_a

    move v3, v6

    :goto_5
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/model/IHRCache;->coalesceNetworkActiviy(Z)V

    .line 690
    :cond_3
    return-void

    .line 673
    .end local v1    # "np":Z
    .end local v2    # "op":Z
    :cond_4
    const-string v3, "paused"

    invoke-virtual {p1, v3, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v3

    move v1, v3

    goto :goto_0

    .line 674
    .restart local v1    # "np":Z
    :cond_5
    const-string v3, "paused"

    invoke-virtual {v0, v3, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v3

    move v2, v3

    goto :goto_1

    .line 677
    .restart local v2    # "op":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 679
    :cond_6
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v3, :cond_7

    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 681
    :cond_7
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v3

    :try_start_2
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v4, p2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_8
    move v3, v5

    .line 687
    goto :goto_3

    :cond_9
    move v4, v5

    goto :goto_4

    :cond_a
    move v3, v5

    .line 688
    goto :goto_5
.end method

.method private itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 4
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 659
    const/4 v1, 0x0

    .line 661
    .local v1, "result":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v2, :cond_0

    .line 662
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v3

    .line 663
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v1, v0

    .line 662
    monitor-exit v3

    .line 667
    :cond_0
    return-object v1

    .line 662
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static nameForURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inURL"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->relativePathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "path":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static relativePathForURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "inURL"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string v5, ""

    .line 300
    .local v5, "result":Ljava/lang/String;
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRCache;->sRelativePaths:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v0, :cond_7

    .line 301
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRCache;->sRelativePaths:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 306
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 307
    .local v2, "length":I
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, "scheme":I
    const/16 v1, 0x2f

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .end local v0    # "scheme":I
    move-result v0

    .line 309
    .local v0, "domain":I
    const/16 v1, 0x3f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 311
    .local v1, "extras":I
    if-gez v1, :cond_1

    const/16 v1, 0x23

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    .end local v1    # "extras":I
    move-result v1

    .line 312
    .restart local v1    # "extras":I
    :cond_1
    if-gez v1, :cond_2

    move v1, v2

    .line 314
    :cond_2
    const/16 v3, 0x2f

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    .line 316
    .local v4, "starts":I
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "name":Ljava/lang/String;
    if-le v4, v0, :cond_a

    .line 319
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "path":Ljava/lang/String;
    const-string v0, "\\W+"

    .end local v0    # "domain":I
    const-string v6, ""

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "make":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "make":Ljava/lang/String;
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0    # "make":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .end local v4    # "path":Ljava/lang/String;
    const/16 v6, 0x18

    if-le v4, v6, :cond_4

    const/4 v4, 0x0

    const/16 v6, 0x18

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "result":Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0    # "make":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "result":Ljava/lang/String;
    :goto_0
    if-le v2, v1, :cond_9

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "length":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    .end local v1    # "extras":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    move-object v1, v0

    .line 342
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_8

    .line 344
    const-string v0, "%\\p{XDigit}{2}"

    const-string v2, "-"

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "text":Ljava/lang/String;
    const-string v2, "[^()!.,\\w]+"

    const-string v4, "-"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "text":Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .restart local v0    # "text":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x30

    if-le v2, v3, :cond_6

    .end local v3    # "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x30

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_6
    move-object v0, v0

    .line 375
    .local v0, "name":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/clearchannel/iheartradio/model/IHRCache;->sRelativePaths:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v1, p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 379
    .end local v0    # "result":Ljava/lang/String;
    .local p0, "result":Ljava/lang/String;
    :goto_3
    return-object v0

    .line 302
    .restart local v5    # "result":Ljava/lang/String;
    .local p0, "inURL":Ljava/lang/String;
    :cond_7
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRCache;->sRelativePaths:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRCache;->sRelativePaths:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "inURL":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    move-object p0, v5

    .end local v5    # "result":Ljava/lang/String;
    .local p0, "result":Ljava/lang/String;
    goto :goto_3

    .restart local v1    # "result":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .local p0, "inURL":Ljava/lang/String;
    :cond_8
    move-object v0, v3

    .end local v3    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    goto :goto_2

    .local v0, "result":Ljava/lang/String;
    .local v1, "extras":I
    .restart local v2    # "length":I
    .restart local v3    # "name":Ljava/lang/String;
    :cond_9
    move-object v1, v0

    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .local v0, "domain":I
    .local v1, "extras":I
    .local v4, "starts":I
    .restart local v5    # "result":Ljava/lang/String;
    :cond_a
    move-object v0, v5

    .end local v5    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static shared()Lcom/clearchannel/iheartradio/model/IHRCache;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCache:Lcom/clearchannel/iheartradio/model/IHRCache;

    return-object v0
.end method


# virtual methods
.method public accessResumeData(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCacheConnection;I)V
    .locals 12
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inConnection"    # Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .param p3, "inFlags"    # I

    .prologue
    .line 815
    const/4 v5, 0x0

    .line 816
    .local v5, "resume":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const/4 v1, 0x0

    .line 817
    .local v1, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const/4 v6, 0x0

    .line 818
    .local v6, "save":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const/4 v0, 0x0

    .line 820
    .local v0, "data":Ljava/lang/String;
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRFile;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "resume.dds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    if-eq v8, p3, :cond_3

    const/4 v8, 0x1

    :goto_0
    invoke-direct {v3, v7, v8}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;Z)V

    .line 822
    .local v3, "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v5    # "resume":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 823
    .restart local v5    # "resume":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v7, "UTF-8"

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/model/IHRFile;->stringContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_0

    sget-object v7, Lcom/clearchannel/iheartradio/model/IHRCache;->kFlattenKeys:[Ljava/lang/String;

    const-string v8, "\n"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v0, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->restoreDDS([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 825
    :cond_0
    const/4 v0, 0x0

    .line 827
    const/4 v7, 0x4

    if-ne v7, p3, :cond_5

    .line 829
    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local p3    # "inFlags":I
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 910
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V

    .line 911
    return-void

    .line 820
    .end local v3    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    .restart local p3    # "inFlags":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 829
    .end local p3    # "inFlags":I
    .restart local v3    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 834
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "save":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    check-cast v6, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 835
    .restart local v6    # "save":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v8, "url"

    invoke-virtual {v6, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "inURL":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .line 836
    .restart local p1    # "inURL":Ljava/lang/String;
    const-string v8, "resume"

    invoke-virtual {v6, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "data":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 838
    .restart local v0    # "data":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v8, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 839
    const-string v8, "accessResumeData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "restore "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "identifier"

    const-string v11, "identifier"

    invoke-virtual {v6, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "url"

    const-string v11, "url"

    invoke-virtual {v6, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/clearchannel/iheartradio/model/IHRCache;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    move-object v1, v6

    .line 843
    new-instance p2, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    .end local p2    # "inConnection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    const-string v8, "site"

    invoke-virtual {v6, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p2, p1, p0, p3}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCache;Ljava/lang/String;)V

    .line 844
    .restart local p2    # "inConnection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    const-string v8, "connection"

    invoke-virtual {v1, v8, p2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    invoke-direct {p0, v1, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->enqueue(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8, v0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->setDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const/4 v8, 0x1

    const-string v9, "resume"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v8, v9, v10}, Lcom/clearchannel/iheartradio/model/IHRCache;->notify(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 851
    .end local v4    # "key":Ljava/lang/String;
    .restart local p3    # "inFlags":I
    :cond_5
    const/16 v7, 0x8

    if-ne v7, p3, :cond_6

    .line 852
    const-string v7, "accessResumeData"

    const-string v8, "delete"

    invoke-virtual {p0, v7, v8}, Lcom/clearchannel/iheartradio/model/IHRCache;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRFile;->delete()Z

    goto/16 :goto_2

    .line 856
    :cond_6
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_7

    .line 857
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 859
    const/4 v7, 0x3

    if-ne v7, p3, :cond_e

    .line 860
    if-nez p2, :cond_c

    const/4 v7, 0x0

    move-object v0, v7

    .line 862
    :goto_3
    if-eqz v1, :cond_7

    .line 863
    if-nez v0, :cond_d

    const-string v7, "resume"

    invoke-virtual {v1, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 874
    new-instance v6, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v6    # "save":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 876
    .restart local v6    # "save":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v7, "url"

    invoke-virtual {v6, v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 877
    const-string v7, "path"

    invoke-virtual {v6, v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 878
    const-string v7, "site"

    invoke-virtual {v6, v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 879
    const-string v7, "resume"

    invoke-virtual {v6, v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 880
    const-string v7, "paused"

    invoke-virtual {v6, v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 881
    const-string v7, "offset"

    invoke-virtual {v6, v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 882
    const-string v7, "length"

    invoke-virtual {v6, v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 883
    const-string v7, "options"

    invoke-virtual {v6, v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 884
    const-string v7, "identifier"

    invoke-virtual {v6, v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 887
    :cond_8
    if-nez v6, :cond_9

    if-eqz v5, :cond_b

    invoke-virtual {v5, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 888
    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->size()I

    move-result v7

    if-nez v7, :cond_10

    :cond_a
    invoke-virtual {v5, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :goto_5
    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 894
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRFile;->delete()Z

    .line 905
    :cond_b
    :goto_6
    if-nez p3, :cond_2

    if-eqz p1, :cond_2

    .line 906
    const/4 v7, -0x1

    invoke-virtual {p0, p1, v7}, Lcom/clearchannel/iheartradio/model/IHRCache;->orderFileWithURL(Ljava/lang/String;I)I

    goto/16 :goto_2

    .line 860
    :cond_c
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->resumeData()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_3

    .line 864
    :cond_d
    const-string v7, "resume"

    invoke-virtual {v1, v7, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 867
    :cond_e
    if-nez v1, :cond_f

    const/4 v7, 0x0

    move-object v0, v7

    :goto_7
    goto :goto_4

    :cond_f
    const-string v7, "resume"

    invoke-virtual {v1, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "data":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    goto :goto_7

    .line 889
    .restart local v0    # "data":Ljava/lang/String;
    :cond_10
    invoke-virtual {v5, p1, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 896
    :cond_11
    sget-object v7, Lcom/clearchannel/iheartradio/model/IHRCache;->kFlattenKeys:[Ljava/lang/String;

    const-string v8, "\n"

    invoke-virtual {v5, v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->flattenDDS([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/clearchannel/iheartradio/model/IHRFile;->write([BZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 899
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 900
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "accessResumeData"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/clearchannel/iheartradio/model/IHRCache;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public available()Z
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "root":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bitsForURL(Ljava/lang/String;)[B
    .locals 12
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 447
    const/4 v5, 0x0

    check-cast v5, [B

    .line 448
    .local v5, "result":[B
    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->relativePathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, "path":Ljava/lang/String;
    const/4 v8, 0x0

    .line 451
    .local v8, "value":Ljava/lang/Object;
    iget-object v9, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v9, :cond_0

    .line 452
    iget-object v9, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v9

    .line 453
    :try_start_0
    iget-object v10, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v10, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 452
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .end local v8    # "value":Ljava/lang/Object;
    :cond_0
    if-nez v8, :cond_2

    .line 458
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, "root":Ljava/lang/String;
    if-eqz v6, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/clearchannel/iheartradio/model/IHRCache;->dataForPath(Ljava/lang/String;)[B

    move-result-object v5

    .line 497
    .end local v6    # "root":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 452
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 461
    :cond_2
    instance-of v9, v8, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v9, :cond_6

    .line 462
    move-object v0, v8

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v1

    .line 463
    .local v1, "count":I
    const/4 v3, 0x0

    .line 466
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-lt v2, v1, :cond_3

    .line 471
    const/4 v9, 0x1

    if-ne v9, v1, :cond_4

    .line 472
    move-object v0, v8

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v9, v0

    invoke-virtual {v9, v11}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result":[B
    check-cast v5, [B

    .line 473
    .restart local v5    # "result":[B
    const/4 v1, 0x0

    .line 479
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v1, :cond_5

    .line 486
    check-cast v8, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v8}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->clear()V

    .line 488
    iget-object v9, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v9

    .line 489
    :try_start_2
    iget-object v10, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v10, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 467
    :cond_3
    move-object v0, v8

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v9, v0

    invoke-virtual {v9, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 468
    .local v7, "source":[B
    array-length v9, v7

    add-int/2addr v3, v9

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 475
    .end local v7    # "source":[B
    :cond_4
    new-array v5, v3, [B

    .line 476
    const/4 v3, 0x0

    goto :goto_2

    .line 480
    :cond_5
    move-object v0, v8

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v9, v0

    invoke-virtual {v9, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 482
    .restart local v7    # "source":[B
    array-length v9, v7

    invoke-static {v7, v11, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    array-length v9, v7

    add-int/2addr v3, v9

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 491
    .end local v1    # "count":I
    .end local v2    # "index":I
    .end local v3    # "length":I
    .end local v7    # "source":[B
    :cond_6
    instance-of v9, v8, [B

    if-eqz v9, :cond_1

    .line 492
    move-object v0, v8

    check-cast v0, [B

    move-object v5, v0

    goto :goto_0
.end method

.method public broadcast(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 1
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 628
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mBroadcaster:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->notifyOnMainThread(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 629
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->notifyClient(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 633
    return-void
.end method

.method public cacheAudioWithURL(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inOptions"    # I
    .param p3, "inIdentifier"    # Ljava/lang/String;
    .param p4, "inSite"    # Ljava/lang/String;

    .prologue
    .line 791
    or-int/lit8 v0, p2, 0x40

    or-int/lit8 v0, v0, 0x2

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/clearchannel/iheartradio/model/IHRCache;->cacheFileWithURL(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cacheFileWithURL(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inOptions"    # I
    .param p3, "inIdentifier"    # Ljava/lang/String;
    .param p4, "inSite"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 737
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->stateForFileWithURL(Ljava/lang/String;)I

    move-result v3

    .line 739
    .local v3, "result":I
    if-ne v5, v3, :cond_0

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_0

    .line 740
    const/4 v3, 0x0

    .line 743
    :cond_0
    if-ne v5, v3, :cond_1

    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_1

    .line 744
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->updateForURL(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_1

    .line 745
    const/4 v3, 0x0

    .line 749
    :cond_1
    if-nez v3, :cond_4

    .line 750
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 753
    .local v1, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v4, "identifier"

    if-nez p3, :cond_5

    const-string v5, ""

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    const-string v4, "options"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string v4, "path"

    invoke-virtual {v1, v4, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string v4, "site"

    invoke-virtual {v1, v4, p4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string v4, "url"

    invoke-virtual {v1, v4, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-direct {p0, v1, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->enqueue(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Ljava/lang/String;)V

    .line 761
    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_2

    .line 762
    const/4 v4, 0x3

    invoke-virtual {p0, p1, v4}, Lcom/clearchannel/iheartradio/model/IHRCache;->orderFileWithURL(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    or-int/lit8 p2, p2, 0x4

    .line 765
    :cond_2
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_3

    .line 766
    const-string v4, "offset"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string v4, "length"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string v4, "paused"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const/4 v3, 0x4

    .line 773
    :cond_3
    const-string v4, "cacheFileWithURL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v3, v9, :cond_6

    const-string v6, "pause"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/clearchannel/iheartradio/model/IHRCache;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    if-eq v3, v9, :cond_4

    .line 776
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    invoke-direct {v0, p1, p0, p4}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCache;Ljava/lang/String;)V

    .line 778
    .local v0, "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    const-string v4, "connection"

    invoke-virtual {v1, v4, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_7

    move v4, v7

    :goto_2
    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->setDeletesFileUponFailure(Z)V

    .line 781
    invoke-virtual {v0, v2, v7}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->setDestination(Ljava/lang/String;Z)V

    .line 783
    const/4 v3, 0x1

    .line 787
    .end local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .end local v1    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v2    # "path":Ljava/lang/String;
    :cond_4
    return v3

    .restart local v1    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v2    # "path":Ljava/lang/String;
    :cond_5
    move-object v5, p3

    .line 753
    goto/16 :goto_0

    .line 773
    :cond_6
    const-string v6, "queue"

    goto :goto_1

    .restart local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :cond_7
    move v4, v8

    .line 780
    goto :goto_2
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 1097
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->deleteCancel(Ljava/lang/String;Z)V

    return-void
.end method

.method public clearUpdateForURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_0
    return-void
.end method

.method public coalesceNetworkActiviy(Z)V
    .locals 0
    .param p1, "inActive"    # Z

    .prologue
    .line 624
    return-void
.end method

.method public dataForURL(Ljava/lang/String;)[B
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->bitsForURL(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dataForURL(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inMaximumInterval"    # J
    .param p4, "inIdentifier"    # Ljava/lang/String;
    .param p5, "inSite"    # Ljava/lang/String;

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->dataForURL(Ljava/lang/String;)[B

    move-result-object v0

    .line 531
    .local v0, "result":[B
    invoke-virtual/range {p0 .. p5}, Lcom/clearchannel/iheartradio/model/IHRCache;->updateForURL(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 533
    return-object v0
.end method

.method public debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "inMethod"    # Ljava/lang/String;
    .param p2, "inMessage"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "### "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 1098
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->deleteCancel(Ljava/lang/String;Z)V

    return-void
.end method

.method public deleteCancel(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inDelete"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1048
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 1052
    .local v1, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-eqz v1, :cond_1

    .line 1053
    const-string v6, "connection"

    invoke-virtual {v1, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    .line 1055
    .local v0, "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    if-eqz v0, :cond_0

    .line 1056
    const-string v6, "connection"

    invoke-virtual {v1, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->cancel()V

    .line 1059
    const/4 p2, 0x0

    .line 1061
    const-string v6, "cancel"

    invoke-virtual {p0, v1, v7, v6, v8}, Lcom/clearchannel/iheartradio/model/IHRCache;->notify(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1064
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v0, v6}, Lcom/clearchannel/iheartradio/model/IHRCache;->accessResumeData(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCacheConnection;I)V

    .line 1065
    invoke-direct {p0, v8, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->enqueue(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Ljava/lang/String;)V

    .line 1068
    .end local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :cond_1
    if-eqz p2, :cond_4

    .line 1069
    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->relativePathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1071
    .local v4, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v6, :cond_2

    .line 1072
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v6

    .line 1073
    :try_start_0
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v7, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v5

    .line 1079
    .local v5, "root":Ljava/lang/String;
    if-nez v5, :cond_5

    move-object v3, v8

    .line 1081
    .local v3, "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :goto_0
    if-eqz v3, :cond_4

    .line 1082
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRFile;->deleteWithEmptyParent()Z

    .line 1083
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V

    .line 1085
    if-nez v1, :cond_3

    .line 1086
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1087
    .end local v1    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .local v2, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :try_start_2
    const-string v6, "url"

    invoke-virtual {v2, v6, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string v6, "path"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 1091
    .end local v2    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v1    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_3
    const/4 v6, 0x1

    :try_start_3
    const-string v7, "delete"

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v6, v7, v8}, Lcom/clearchannel/iheartradio/model/IHRCache;->notify(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1095
    .end local v3    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "root":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 1072
    .restart local v4    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 1079
    .restart local v5    # "root":Ljava/lang/String;
    :cond_5
    :try_start_5
    new-instance v6, Lcom/clearchannel/iheartradio/model/IHRFile;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v3, v6

    goto :goto_0

    .line 1093
    .end local v5    # "root":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v1    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v2    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v3    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    .restart local v5    # "root":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v1    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    goto :goto_1
.end method

.method public deleteFileCache()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 279
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->stopDownloads(Z)V

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "root":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRFile;->deleteFolder(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v0    # "root":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v1

    .line 291
    :try_start_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->clear()V

    .line 292
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 290
    monitor-exit v1

    .line 295
    :cond_1
    return-void

    .line 290
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 287
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deleteForBufferingPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "inPath"    # Ljava/lang/String;

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v0

    .line 1264
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    monitor-exit v0

    .line 1267
    :cond_0
    return-void

    .line 1263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->prepareDownloadsBeforeQuit()V

    .line 106
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->clear()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->clear()V

    .line 113
    :cond_1
    return-void
.end method

.method public didFail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 11
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inError"    # Ljava/lang/Exception;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1174
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    .line 1175
    .local v2, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v2, :cond_1

    move-object v0, v10

    .line 1176
    .local v0, "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :goto_0
    if-nez v2, :cond_2

    move v3, v8

    .line 1177
    .local v3, "options":I
    :goto_1
    if-nez v0, :cond_3

    move v1, v8

    .line 1179
    .local v1, "deletes":Z
    :goto_2
    const-string v4, "didFail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "identifier"

    const-string v7, "identifier"

    invoke-virtual {v2, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/clearchannel/iheartradio/model/IHRCache;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->isErrorRecoverable()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_4

    .line 1182
    :cond_0
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->resumeAfter(I)V

    .line 1183
    const-string v4, "time_resume"

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    invoke-virtual {p0, p1, v0, v9}, Lcom/clearchannel/iheartradio/model/IHRCache;->accessResumeData(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCacheConnection;I)V

    .line 1185
    const-string v4, "resume"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v9, v4, v5}, Lcom/clearchannel/iheartradio/model/IHRCache;->notify(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1191
    :goto_3
    const-string v4, "path"

    invoke-virtual {v2, v4, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/model/IHRCache;->deleteForBufferingPath(Ljava/lang/String;)V

    .line 1192
    return-void

    .line 1175
    .end local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .end local v1    # "deletes":Z
    .end local v3    # "options":I
    :cond_1
    const-string v4, "connection"

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    move-object v0, v4

    goto :goto_0

    .line 1176
    .restart local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :cond_2
    const-string v4, "options"

    invoke-virtual {v2, v4, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    goto :goto_1

    .line 1177
    .restart local v3    # "options":I
    :cond_3
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->deletesFileUponFailure()Z

    move-result v4

    move v1, v4

    goto :goto_2

    .line 1187
    .restart local v1    # "deletes":Z
    :cond_4
    invoke-virtual {p0, p1, v0, v8}, Lcom/clearchannel/iheartradio/model/IHRCache;->accessResumeData(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCacheConnection;I)V

    .line 1188
    const-string v4, "error"

    invoke-virtual {p0, v2, v9, v4, p2}, Lcom/clearchannel/iheartradio/model/IHRCache;->notify(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public didFinish(Ljava/lang/String;)V
    .locals 9
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1114
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 1115
    .local v1, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v1, :cond_3

    move-object v0, v8

    .line 1116
    .local v0, "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :goto_0
    if-nez v1, :cond_4

    move v2, v7

    .line 1118
    .local v2, "options":I
    :goto_1
    const-string v3, "didFinish"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "identifier"

    const-string v6, "identifier"

    invoke-virtual {v1, v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRCache;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p0, p1, v0, v7}, Lcom/clearchannel/iheartradio/model/IHRCache;->accessResumeData(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCacheConnection;I)V

    .line 1121
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_1

    .line 1122
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v3, :cond_0

    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 1124
    :cond_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, p1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    :cond_1
    if-eqz v1, :cond_2

    .line 1128
    invoke-direct {p0, v8, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->enqueue(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Ljava/lang/String;)V

    .line 1129
    const/4 v3, 0x1

    const-string v4, "finish"

    invoke-virtual {p0, v1, v3, v4, v8}, Lcom/clearchannel/iheartradio/model/IHRCache;->notify(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1131
    :cond_2
    return-void

    .line 1115
    .end local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .end local v2    # "options":I
    :cond_3
    const-string v3, "connection"

    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    move-object v0, v3

    goto :goto_0

    .line 1116
    .restart local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :cond_4
    const-string v3, "options"

    invoke-virtual {v1, v3, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    goto :goto_1
.end method

.method public didReceive(Ljava/lang/String;[BII)V
    .locals 6
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inData"    # [B
    .param p3, "inOffset"    # I
    .param p4, "inLength"    # I

    .prologue
    .line 1195
    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->relativePathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1199
    .local v2, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v4, :cond_0

    .line 1200
    new-instance v4, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 1206
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    new-array v0, p4, [B

    .line 1208
    .local v0, "buffer":[B
    const/4 v4, 0x0

    invoke-static {p2, p3, v0, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1210
    move-object p2, v0

    .line 1213
    instance-of v4, v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v4, :cond_1

    .line 1214
    check-cast v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v2, p2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 1223
    :goto_1
    return-void

    .line 1201
    .end local v0    # "buffer":[B
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v4

    .line 1202
    :try_start_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v5, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1201
    monitor-exit v4

    goto :goto_0

    .end local v2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1216
    .restart local v0    # "buffer":[B
    :cond_1
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 1217
    .local v3, "vector":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-virtual {v3, p2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 1219
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v4

    .line 1220
    :try_start_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v5, v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5
.end method

.method public didWrite(Ljava/lang/String;I)V
    .locals 13
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inBytes"    # I

    .prologue
    .line 1134
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    .line 1135
    .local v2, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v2, :cond_5

    const/4 v9, 0x0

    move-object v0, v9

    .line 1136
    .local v0, "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :goto_0
    if-nez v2, :cond_6

    const/4 v9, 0x0

    move v6, v9

    .line 1137
    .local v6, "options":I
    :goto_1
    if-nez v0, :cond_7

    const/4 v9, 0x0

    move v3, v9

    .line 1139
    .local v3, "finished":Z
    :goto_2
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1142
    .local v4, "now":J
    and-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_1

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 1143
    const-string v9, "time_resume"

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v9, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->longValue(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1146
    .local v7, "previous":J
    if-eqz p2, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v9, v9, v7

    if-eqz v9, :cond_0

    sub-long v9, v4, v7

    const-wide/16 v11, 0x2710

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 1147
    :cond_0
    const/4 v9, 0x3

    invoke-virtual {p0, p1, v0, v9}, Lcom/clearchannel/iheartradio/model/IHRCache;->accessResumeData(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCacheConnection;I)V

    .line 1148
    const-string v9, "time_resume"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    .end local v7    # "previous":J
    :cond_1
    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_4

    .line 1153
    const-string v9, "time_notify"

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v9, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->longValue(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1156
    .restart local v7    # "previous":J
    if-eqz p2, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v9, v9, v7

    if-eqz v9, :cond_2

    if-nez v3, :cond_2

    sub-long v9, v4, v7

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    .line 1157
    :cond_2
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 1159
    .local v1, "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->resumePosition(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 1161
    :cond_3
    const-string v9, "time_notify"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    const-string v9, "url"

    invoke-virtual {v1, v9, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 1163
    const-string v9, "path"

    invoke-virtual {v1, v9, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 1164
    const-string v9, "paused"

    invoke-virtual {v1, v9, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 1165
    const-string v9, "identifier"

    invoke-virtual {v1, v9, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 1166
    const-string v9, "bytes"

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const-string v9, "IHRCacheData"

    invoke-virtual {p0, v9, v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->broadcast(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 1171
    .end local v1    # "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v7    # "previous":J
    :cond_4
    return-void

    .line 1135
    .end local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .end local v3    # "finished":Z
    .end local v4    # "now":J
    .end local v6    # "options":I
    :cond_5
    const-string v9, "connection"

    invoke-virtual {v2, v9}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    goto/16 :goto_0

    .line 1136
    .restart local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :cond_6
    const-string v9, "options"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v9

    move v6, v9

    goto/16 :goto_1

    .line 1137
    .restart local v6    # "options":I
    :cond_7
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->hasContent()Z

    move-result v9

    move v3, v9

    goto/16 :goto_2
.end method

.method public freeRatio()D
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "root":Ljava/lang/String;
    if-nez v0, :cond_0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->freeRatio(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public freeSpace()J
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "root":Ljava/lang/String;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->freeSpace(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public hasResumeDataForURL(Ljava/lang/String;)Z
    .locals 7
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 795
    const/4 v2, 0x0

    .line 797
    .local v2, "result":Z
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "resume.dds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;Z)V

    .line 799
    .local v1, "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    if-eqz v1, :cond_1

    .line 800
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 802
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRFile;->fileSize()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    const/4 v2, 0x1

    .line 811
    :cond_1
    :goto_0
    return v2

    .line 805
    :cond_2
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/model/IHRFile;->stringContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 803
    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public httpFetchComplete(Lcom/clearchannel/iheartradio/model/IHRHTTP;)V
    .locals 0
    .param p1, "inHTTP"    # Lcom/clearchannel/iheartradio/model/IHRHTTP;

    .prologue
    .line 1111
    return-void
.end method

.method public notify(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "inDictionary"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .param p2, "inIncludePath"    # Z
    .param p3, "inKey"    # Ljava/lang/String;
    .param p4, "inExtra"    # Ljava/lang/Object;

    .prologue
    .line 636
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 638
    .local v0, "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez p1, :cond_2

    .line 639
    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 652
    if-nez p4, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0, p3, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_1
    const-string v1, "IHRCacheResults"

    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->broadcast(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 656
    return-void

    .line 641
    :cond_2
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 642
    const-string v1, "identifier"

    invoke-virtual {v0, v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 644
    if-eqz p2, :cond_0

    .line 645
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    goto :goto_0

    :cond_3
    move-object v1, p4

    .line 652
    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1302
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->volumesChanged(ZLjava/lang/String;)V

    .line 1303
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->volumesChanged(ZLjava/lang/String;)V

    .line 1304
    :cond_1
    return-void
.end method

.method public openForFolder()Lcom/clearchannel/iheartradio/model/IHRFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "root":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-direct {v1, v0}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRFile;
    .locals 2
    .param p1, "inURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public orderFileWithURL(Ljava/lang/String;I)I
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inAction"    # I

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public pathForFolder()Ljava/lang/String;
    .locals 24

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    move-object v15, v0

    .line 147
    .local v15, "result":Ljava/lang/String;
    if-nez v15, :cond_c

    .line 148
    const-string v14, "iheartradio/"

    .line 149
    .local v14, "path":Ljava/lang/String;
    const/16 v16, 0x0

    .line 151
    .local v16, "root":Ljava/lang/String;
    const-wide/32 v3, 0x1312d00

    .line 154
    .local v3, "best":J
    new-instance v13, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v13}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 158
    .local v13, "list":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    const-string v20, "EXTERNAL_STORAGE"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, "item":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRFile;->listRoots()[Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 169
    const-string v20, "java.io.tmpdir"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 170
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v13, v12}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    invoke-virtual {v13}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v6

    .line 183
    .local v6, "count":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    if-lt v10, v6, :cond_6

    .line 218
    :goto_2
    if-nez v16, :cond_a

    .line 219
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    .line 232
    :goto_3
    const-string v20, "pathForFolder"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "mCacheRoot = \'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v3    # "best":J
    .end local v6    # "count":I
    .end local v10    # "index":I
    .end local v12    # "item":Ljava/lang/String;
    .end local v13    # "list":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .end local v14    # "path":Ljava/lang/String;
    .end local v16    # "root":Ljava/lang/String;
    :cond_2
    :goto_4
    return-object v15

    .line 161
    .restart local v3    # "best":J
    .restart local v12    # "item":Ljava/lang/String;
    .restart local v13    # "list":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v16    # "root":Ljava/lang/String;
    :cond_3
    aget-object v19, v20, v22

    .line 162
    .local v19, "test":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 163
    const/16 v23, 0x0

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 165
    .restart local v10    # "index":I
    if-ltz v10, :cond_4

    const/16 v23, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 166
    :cond_4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_5

    invoke-virtual {v13, v12}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    invoke-virtual {v13, v12}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 184
    .end local v19    # "test":Ljava/io/File;
    .restart local v6    # "count":I
    :cond_6
    invoke-virtual {v13, v10}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "item":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 187
    .restart local v12    # "item":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lcom/clearchannel/iheartradio/model/IHRFile;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V

    .line 188
    .local v9, "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRFile;->isDirectory()Z

    move-result v11

    .line 189
    .local v11, "isDirectory":Z
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRFile;->canWrite()Z

    move-result v5

    .line 190
    .local v5, "canWrite":Z
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRFile;->exists()Z

    move-result v8

    .line 191
    .local v8, "exists":Z
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V

    .line 193
    if-eqz v5, :cond_7

    if-eqz v11, :cond_7

    .line 194
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 195
    const-wide/16 v3, 0x0

    goto/16 :goto_2

    .line 197
    :cond_7
    if-eqz v8, :cond_9

    .line 183
    .end local v5    # "canWrite":Z
    .end local v8    # "exists":Z
    .end local v9    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    .end local v11    # "isDirectory":Z
    :cond_8
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 200
    :catch_0
    move-exception v20

    .line 203
    :cond_9
    :try_start_1
    invoke-static {v12}, Lcom/clearchannel/iheartradio/model/IHRFile;->freeSpace(Ljava/lang/String;)J

    move-result-wide v17

    .line 204
    .local v17, "size":J
    new-instance v9, Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-direct {v9, v12}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v9    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRFile;->isDirectory()Z

    move-result v11

    .line 206
    .restart local v11    # "isDirectory":Z
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRFile;->canWrite()Z

    move-result v5

    .line 207
    .restart local v5    # "canWrite":Z
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V

    .line 209
    if-eqz v5, :cond_8

    if-eqz v11, :cond_8

    cmp-long v20, v17, v3

    if-lez v20, :cond_8

    .line 210
    move-wide/from16 v3, v17

    .line 211
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    goto :goto_5

    .line 213
    .end local v5    # "canWrite":Z
    .end local v9    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    .end local v11    # "isDirectory":Z
    .end local v17    # "size":J
    :catch_1
    move-exception v20

    move-object/from16 v7, v20

    .line 214
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 220
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_a
    const-wide/16 v20, 0x0

    cmp-long v20, v20, v3

    if-nez v20, :cond_b

    .line 221
    move-object/from16 v15, v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    goto/16 :goto_3

    .line 224
    :cond_b
    :try_start_2
    new-instance v9, Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-direct {v9}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>()V

    .line 225
    .restart local v9    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRFile;->openCreatingParents(Ljava/lang/String;)Z

    .line 226
    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V

    .line 228
    move-object/from16 v15, v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 229
    .end local v9    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :catch_2
    move-exception v20

    goto/16 :goto_3

    .line 233
    .end local v3    # "best":J
    .end local v6    # "count":I
    .end local v10    # "index":I
    .end local v12    # "item":Ljava/lang/String;
    .end local v13    # "list":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .end local v14    # "path":Ljava/lang/String;
    .end local v16    # "root":Ljava/lang/String;
    :cond_c
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_2

    .line 234
    const/4 v15, 0x0

    goto/16 :goto_4
.end method

.method public pathForURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "root":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->relativePathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public pause(Ljava/lang/String;)V
    .locals 5
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 955
    const-string v2, "pause"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 957
    .local v1, "item":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    move-object v0, v2

    .line 959
    .local v0, "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :goto_0
    if-eqz v1, :cond_0

    .line 960
    const-string v2, "paused"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->resumePosition(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 966
    invoke-virtual {p0, p1, v4}, Lcom/clearchannel/iheartradio/model/IHRCache;->orderFileWithURL(Ljava/lang/String;I)I

    .line 967
    invoke-virtual {p0, p1, v4}, Lcom/clearchannel/iheartradio/model/IHRCache;->didWrite(Ljava/lang/String;I)V

    .line 968
    const-string v2, "connection"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->setDeletesFileUponFailure(Z)V

    .line 970
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->cancel()V

    .line 973
    :cond_0
    return-void

    .line 957
    .end local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :cond_1
    const-string v2, "connection"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    move-object v0, v2

    goto :goto_0
.end method

.method public pauseAll(Ljava/lang/String;)V
    .locals 8
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 976
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v3, :cond_1

    .line 977
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v3

    .line 979
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 977
    monitor-exit v3

    .line 995
    :cond_1
    return-void

    .line 979
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 984
    .local v2, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v5, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 985
    .local v0, "item":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v0, :cond_4

    move v1, v7

    .line 987
    .local v1, "paused":Z
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 988
    :cond_3
    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->pause(Ljava/lang/String;)V

    goto :goto_0

    .line 977
    .end local v0    # "item":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v1    # "paused":Z
    .end local v2    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 985
    .restart local v0    # "item":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v5, "paused"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v5

    move v1, v5

    goto :goto_1

    .line 990
    .restart local v1    # "paused":Z
    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->unpause(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public prepareDownloadsBeforeQuit()V
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->stopDownloads(Z)V

    .line 919
    return-void
.end method

.method public progressForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 8
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 537
    new-instance v4, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 538
    .local v4, "result":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 539
    .local v1, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v1, :cond_2

    const/4 v6, 0x0

    move-object v0, v6

    .line 540
    .local v0, "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    :goto_0
    const/4 v2, 0x0

    .line 541
    .local v2, "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    const/4 v3, 0x0

    .line 543
    .local v3, "path":Ljava/lang/String;
    const-string v6, "url"

    invoke-virtual {v4, v6, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    if-eqz v0, :cond_3

    .line 546
    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->resumePosition(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 556
    :goto_1
    if-eqz v1, :cond_0

    .line 557
    const-string v6, "queued"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_0
    if-eqz v2, :cond_1

    .line 562
    :try_start_0
    new-instance v5, Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRFile;->fileSize()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 564
    .local v5, "size":Ljava/lang/Long;
    const-string v6, "offset"

    invoke-virtual {v4, v6, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v6, "length"

    invoke-virtual {v4, v6, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v5    # "size":Ljava/lang/Long;
    :goto_2
    const-string v6, "path"

    invoke-virtual {v4, v6, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V

    .line 575
    :cond_1
    return-object v4

    .line 539
    .end local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .end local v2    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    const-string v6, "connection"

    invoke-virtual {v1, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    move-object v0, v6

    goto :goto_0

    .line 547
    .restart local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .restart local v2    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    const-string v6, "paused"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 548
    const-string v6, "paused"

    invoke-virtual {v4, v6, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 549
    const-string v6, "offset"

    invoke-virtual {v4, v6, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 550
    const-string v6, "length"

    invoke-virtual {v4, v6, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    goto :goto_1

    .line 552
    :cond_4
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 553
    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRFile;

    .end local v2    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    invoke-direct {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    goto :goto_1

    .line 566
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public restoreDownloadsAfterLaunch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 914
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v1, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->accessResumeData(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCacheConnection;I)V

    .line 915
    return-void
.end method

.method public setCacheRoot(Ljava/lang/String;)V
    .locals 4
    .param p1, "inPath"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 137
    .local v0, "separator":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    .line 139
    const-string v1, "setCacheRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCacheRoot = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 137
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public sizeForURL(Ljava/lang/String;)I
    .locals 11
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 399
    const/4 v5, -0x1

    .line 400
    .local v5, "result":I
    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->relativePathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "path":Ljava/lang/String;
    const/4 v8, 0x0

    .line 403
    .local v8, "value":Ljava/lang/Object;
    iget-object v9, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v9, :cond_0

    .line 404
    iget-object v9, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v9

    .line 405
    :try_start_0
    iget-object v10, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v10, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 404
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v8    # "value":Ljava/lang/Object;
    :cond_0
    if-nez v8, :cond_6

    .line 411
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->openForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRFile;

    move-result-object v2

    .line 414
    .local v2, "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRFile;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 415
    const/4 v5, -0x2

    .line 421
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    .end local v2    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :cond_2
    :goto_1
    const/4 v9, -0x1

    if-ne v9, v5, :cond_3

    .line 436
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 437
    const/4 v5, 0x0

    .line 443
    :cond_3
    return v5

    .line 404
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 416
    .restart local v2    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRFile;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 417
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRFile;->fileSize()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v6

    .line 418
    .local v6, "size":J
    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v6, v9

    if-lez v9, :cond_5

    const v9, 0x7fffffff

    move v5, v9

    :goto_2
    goto :goto_0

    :cond_5
    long-to-int v9, v6

    move v5, v9

    goto :goto_2

    .line 423
    .end local v2    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    .end local v6    # "size":J
    :cond_6
    instance-of v9, v8, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v9, :cond_7

    .line 424
    move-object v0, v8

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v1

    .line 426
    .local v1, "count":I
    const/4 v5, 0x0

    .line 428
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_3
    if-ge v3, v1, :cond_2

    .line 429
    move-object v0, v8

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v9, v0

    invoke-virtual {v9, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    array-length v9, v9

    add-int/2addr v5, v9

    .line 428
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 431
    .end local v1    # "count":I
    .end local v3    # "index":I
    :cond_7
    instance-of v9, v8, [B

    if-eqz v9, :cond_2

    .line 432
    check-cast v8, [B

    array-length v5, v8

    goto :goto_1

    .line 422
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public stateForFileWithURL(Ljava/lang/String;)I
    .locals 8
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 579
    const/4 v3, 0x0

    .line 580
    .local v3, "result":I
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 582
    .local v1, "item":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v1, :cond_6

    .line 583
    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->relativePathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v5, :cond_1

    .line 586
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v5

    .line 587
    :try_start_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v6, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 588
    const/4 v3, 0x2

    .line 586
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "root":Ljava/lang/String;
    if-nez v4, :cond_5

    const/4 v5, 0x0

    move-object v0, v5

    .line 597
    .local v0, "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    :goto_0
    if-eqz v0, :cond_4

    .line 598
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    .line 599
    const/4 v3, 0x2

    .line 601
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 602
    :cond_2
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->hasResumeDataForURL(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 603
    const/4 v3, 0x4

    .line 608
    :cond_3
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 619
    .end local v0    # "file":Lcom/clearchannel/iheartradio/model/IHRFile;
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "root":Ljava/lang/String;
    :cond_4
    :goto_1
    return v3

    .line 586
    .restart local v2    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 595
    .restart local v4    # "root":Ljava/lang/String;
    :cond_5
    :try_start_3
    new-instance v5, Lcom/clearchannel/iheartradio/model/IHRFile;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v5

    goto :goto_0

    .line 611
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "root":Ljava/lang/String;
    :cond_6
    const-string v5, "paused"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 612
    const/4 v3, 0x4

    goto :goto_1

    .line 614
    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    .line 610
    .restart local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public stopDownloads(Z)V
    .locals 7
    .param p1, "inDeletingFiles"    # Z

    .prologue
    const/4 v6, 0x0

    .line 922
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 924
    .local v3, "queue":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 925
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mOrder:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 927
    if-eqz v3, :cond_1

    .line 928
    monitor-enter v3

    .line 930
    :try_start_0
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 928
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    :cond_1
    if-eqz p1, :cond_2

    .line 948
    const/16 v4, 0x8

    invoke-virtual {p0, v6, v6, v4}, Lcom/clearchannel/iheartradio/model/IHRCache;->accessResumeData(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCacheConnection;I)V

    .line 951
    :cond_2
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mTimer:Ljava/util/Timer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 952
    :cond_3
    return-void

    .line 930
    :cond_4
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 935
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 936
    .local v1, "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v5, "connection"

    invoke-virtual {v1, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    .line 938
    .local v0, "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    if-eqz v0, :cond_0

    .line 939
    const-string v5, "connection"

    invoke-virtual {v1, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->setDeletesFileUponFailure(Z)V

    .line 941
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->cancel()V

    goto :goto_0

    .line 928
    .end local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .end local v1    # "dictionary":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public streamForBufferingPath(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .param p1, "inPath"    # Ljava/lang/String;

    .prologue
    .line 1239
    const/4 v2, 0x0

    .line 1240
    .local v2, "vector":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    const/4 v1, 0x0

    .line 1242
    .local v1, "value":Ljava/lang/Object;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v3, :cond_0

    .line 1243
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 1248
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    instance-of v3, v1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v3, :cond_1

    .line 1249
    move-object v0, v1

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v2, v0

    .line 1258
    :goto_1
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRCache$IHRCacheOutputStream;

    invoke-direct {v3, p0, v2}, Lcom/clearchannel/iheartradio/model/IHRCache$IHRCacheOutputStream;-><init>(Lcom/clearchannel/iheartradio/model/IHRCache;Lcom/clearchannel/iheartradio/android/model/IHRVector;)V

    return-object v3

    .line 1244
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v3

    .line 1245
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v4, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1244
    monitor-exit v3

    goto :goto_0

    .end local v1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1251
    :cond_1
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .end local v2    # "vector":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 1253
    .restart local v2    # "vector":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v3

    .line 1254
    :try_start_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mBuffer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v4, p1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method

.method public timer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mTimer:Ljava/util/Timer;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public unpause(Ljava/lang/String;)V
    .locals 7
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 998
    const-string v4, "unpause"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->itemForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    .line 1004
    .local v2, "item":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-eqz v2, :cond_1

    .line 1007
    const-string v4, "paused"

    invoke-virtual {v2, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "connection"

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1008
    :cond_0
    const-string v4, "resume"

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1009
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1011
    .local v3, "path":Ljava/lang/String;
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    const-string v4, "site"

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, p1, p0, v4}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;-><init>(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRCache;Ljava/lang/String;)V

    .line 1013
    .local v0, "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    const-string v4, "paused"

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    const-string v4, "offset"

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string v4, "length"

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const-string v4, "connection"

    invoke-virtual {v2, v4, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    if-nez v1, :cond_2

    .line 1019
    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->setDeletesFileUponFailure(Z)V

    .line 1020
    invoke-virtual {v0, v3, v6}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->setDestination(Ljava/lang/String;Z)V

    .line 1025
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/clearchannel/iheartradio/model/IHRCache;->orderFileWithURL(Ljava/lang/String;I)I

    .line 1026
    const-string v4, "resume"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v6, v4, v5}, Lcom/clearchannel/iheartradio/model/IHRCache;->notify(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1027
    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/model/IHRCache;->coalesceNetworkActiviy(Z)V

    .line 1030
    .end local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    return-void

    .line 1022
    .restart local v0    # "connection":Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3, v1}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->setDestination(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unpauseAll()V
    .locals 4

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v1, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    monitor-enter v1

    .line 1036
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mQueue:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1034
    monitor-exit v1

    .line 1045
    :cond_0
    return-void

    .line 1036
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1041
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->unpause(Ljava/lang/String;)V

    goto :goto_0

    .line 1034
    .end local v0    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateForURL(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRCache;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRCache;
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mUpdate:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRCache;
    check-cast p0, Ljava/util/Date;

    move-object v0, p0

    goto :goto_0
.end method

.method public updateForURL(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inMaximumInterval"    # J
    .param p4, "inIdentifier"    # Ljava/lang/String;
    .param p5, "inSite"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRCache;->updateForURL(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 517
    .local v1, "result":Ljava/util/Date;
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 518
    :cond_0
    const/16 v0, 0x10

    .line 520
    .local v0, "options":I
    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 522
    :cond_1
    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/clearchannel/iheartradio/model/IHRCache;->cacheFileWithURL(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "options":I
    :cond_2
    return-object v1
.end method

.method public volumesChanged(ZLjava/lang/String;)V
    .locals 5
    .param p1, "inRemoving"    # Z
    .param p2, "inRoot"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1270
    const/4 v0, 0x0

    .line 1272
    .local v0, "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v1, "volumesChanged"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRCache;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    if-eqz p1, :cond_2

    .line 1275
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    iput-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    .line 1278
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1279
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v0    # "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 1280
    .restart local v0    # "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v1, "available"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1295
    const-string v1, "IHRCacheAvailable"

    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/model/IHRCache;->broadcast(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 1297
    :cond_1
    return-void

    .line 1284
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1285
    :cond_3
    iput-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRCache;->mCacheRoot:Ljava/lang/String;

    .line 1287
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCache;->pathForFolder()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1288
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v0    # "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 1289
    .restart local v0    # "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v1, "available"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
