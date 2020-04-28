.class public Lstats/StatsTracker;
.super Ljava/lang/Object;
.source "StatsTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lstats/StatsTracker$Event;
    }
.end annotation


# static fields
.field private static final FILENAME:Ljava/lang/String; = "scm_log_temp"

.field private static final MAX_EVENTS:I = 0x3e8

.field private static final VERSION_HEADER:Ljava/lang/String; = "V1"

.field private static instance:Lstats/StatsTracker;


# instance fields
.field changedSinceLastStore:Z

.field private context:Landroid/content/Context;

.field private currentBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lstats/StatsTracker$Event;",
            ">;"
        }
    .end annotation
.end field

.field doubleCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private volatile lastEventTime:J

.field private volatile lastSendTime:J

.field private volatile lastStoreTime:J

.field private sendBufferSize:I

.field private sendInterval:I

.field private sendUrl:Ljava/lang/String;

.field private storeInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lstats/StatsTracker;->instance:Lstats/StatsTracker;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v1, p0, Lstats/StatsTracker;->lastSendTime:J

    .line 41
    iput-wide v1, p0, Lstats/StatsTracker;->lastStoreTime:J

    .line 42
    iput-wide v1, p0, Lstats/StatsTracker;->lastEventTime:J

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lstats/StatsTracker;->changedSinceLastStore:Z

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    .line 99
    new-instance v1, Lstats/StatsTracker$1;

    const/16 v2, 0x190

    const v3, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, p0, v2, v3}, Lstats/StatsTracker$1;-><init>(Lstats/StatsTracker;IF)V

    iput-object v1, p0, Lstats/StatsTracker;->doubleCache:Ljava/util/LinkedHashMap;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lstats/StatsTracker;->context:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sts"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "hThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lstats/StatsTracker;->handler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lstats/StatsTracker;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lstats/StatsTracker;J)V
    .locals 0

    .prologue
    .line 42
    iput-wide p1, p0, Lstats/StatsTracker;->lastEventTime:J

    return-void
.end method

.method static synthetic access$2(Lstats/StatsTracker;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lstats/StatsTracker;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lstats/StatsTracker;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lstats/StatsTracker;->storeInterval:I

    return v0
.end method

.method private checkSend()V
    .locals 8

    .prologue
    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 178
    .local v0, "st":J
    iget-object v2, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    iget-object v2, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lstats/StatsTracker;->sendBufferSize:I

    if-gt v2, v3, :cond_0

    iget-wide v2, p0, Lstats/StatsTracker;->lastSendTime:J

    iget v4, p0, Lstats/StatsTracker;->sendInterval:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-wide v2, p0, Lstats/StatsTracker;->lastEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 180
    :cond_0
    invoke-direct {p0}, Lstats/StatsTracker;->send()V

    .line 182
    :cond_1
    return-void
.end method

.method private clearEvents()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lstats/StatsTracker;->context:Landroid/content/Context;

    const-string v1, "scm_log_temp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 260
    iget-object v0, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lstats/StatsTracker;->changedSinceLastStore:Z

    .line 262
    return-void
.end method

.method private configureFrom(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 63
    const-string v0, "t_sendurl"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lstats/StatsTracker;->sendUrl:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lstats/StatsTracker;->sendUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lstats/StatsTracker;->sendUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 65
    const-string v0, "t_sendinterval"

    const-string v1, "120"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lstats/StatsTracker;->sendInterval:I

    .line 66
    const-string v0, "t_storeinterval"

    const-string v1, "10"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lstats/StatsTracker;->storeInterval:I

    .line 67
    const-string v0, "t_sendbuffersize"

    const-string v1, "200"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lstats/StatsTracker;->sendBufferSize:I

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lstats/StatsTracker;->lastStoreTime:J

    iput-wide v0, p0, Lstats/StatsTracker;->lastEventTime:J

    .line 70
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lstats/StatsTracker;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-class v3, Lstats/StatsTracker;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lstats/StatsTracker;->instance:Lstats/StatsTracker;

    if-eqz v4, :cond_0

    .line 74
    sget-object v4, Lstats/StatsTracker;->instance:Lstats/StatsTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit v3

    return-object v4

    .line 76
    :cond_0
    :try_start_1
    new-instance v4, Lstats/StatsTracker;

    invoke-direct {v4, p0}, Lstats/StatsTracker;-><init>(Landroid/content/Context;)V

    sput-object v4, Lstats/StatsTracker;->instance:Lstats/StatsTracker;

    .line 77
    sget-object v4, Lstats/StatsTracker;->instance:Lstats/StatsTracker;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-direct {v4, v5}, Lstats/StatsTracker;->configureFrom(Landroid/content/SharedPreferences;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    const-string v4, "scm_log_temp"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v2, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 82
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lstats/StatsTracker$Event;>;"
    sget-object v4, Lstats/StatsTracker;->instance:Lstats/StatsTracker;

    iget-object v4, v4, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v1    # "events":Ljava/util/List;, "Ljava/util/List<Lstats/StatsTracker$Event;>;"
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_3
    sget-object v4, Lstats/StatsTracker;->instance:Lstats/StatsTracker;

    iget-object v4, v4, Lstats/StatsTracker;->handler:Landroid/os/Handler;

    sget-object v5, Lstats/StatsTracker;->instance:Lstats/StatsTracker;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    sget-object v4, Lstats/StatsTracker;->instance:Lstats/StatsTracker;

    goto :goto_0

    .line 87
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 85
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private send()V
    .locals 14

    .prologue
    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p0, Lstats/StatsTracker;->lastSendTime:J

    .line 186
    const/4 v10, 0x0

    .line 188
    .local v10, "successful":Z
    iget-object v11, p0, Lstats/StatsTracker;->sendUrl:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 190
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v11, 0x3

    if-lt v2, v11, :cond_2

    .line 253
    .end local v2    # "i":I
    :cond_0
    :goto_1
    if-eqz v10, :cond_1

    .line 254
    invoke-direct {p0}, Lstats/StatsTracker;->clearEvents()V

    .line 256
    :cond_1
    return-void

    .line 192
    .restart local v2    # "i":I
    :cond_2
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v9

    .line 194
    .local v9, "statsMsg":Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    :try_start_0
    const-string v11, "V1"

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 203
    iget-object v11, p0, Lstats/StatsTracker;->context:Landroid/content/Context;

    invoke-static {v11}, Lcmn/AppProperties;->get(Landroid/content/Context;)Lcmn/AppProperties;

    move-result-object v4

    .line 204
    .local v4, "props":Lcmn/AppProperties;
    invoke-virtual {v4}, Lcmn/AppProperties;->getAndroidId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAndroidId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 205
    invoke-virtual {v4}, Lcmn/AppProperties;->getAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAppName(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 206
    invoke-virtual {v4}, Lcmn/AppProperties;->getAppVersionCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAppVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 207
    invoke-virtual {v4}, Lcmn/AppProperties;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setLanguage(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 208
    invoke-virtual {v4}, Lcmn/AppProperties;->getSystemVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSysVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 209
    invoke-virtual {v4}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setNscm(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 210
    invoke-virtual {v4}, Lcmn/AppProperties;->oldIdAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setScm(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 211
    invoke-virtual {v4}, Lcmn/AppProperties;->getInstalledSince()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setInstallTime(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 212
    invoke-virtual {v4}, Lcmn/AppProperties;->getAppCount2()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAllAppCount(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 213
    invoke-virtual {v4}, Lcmn/AppProperties;->getAppCount()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setPaidAppCount(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 214
    sget-object v11, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSdkVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 215
    invoke-virtual {v4}, Lcmn/AppProperties;->getC1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setNetworkCountry(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 216
    invoke-virtual {v4}, Lcmn/AppProperties;->getC2()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSimCountry(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 217
    invoke-virtual {v4}, Lcmn/AppProperties;->getModel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setModel(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 219
    iget-object v11, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 229
    invoke-virtual {v9}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->build()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->toByteArray()[B

    move-result-object v7

    .line 231
    .local v7, "send":[B
    new-instance v6, Lcmn/JsonRpc;

    iget-object v11, p0, Lstats/StatsTracker;->sendUrl:Ljava/lang/String;

    const-string v12, ""

    const-string v13, "stats"

    invoke-direct {v6, v11, v12, v13}, Lcmn/JsonRpc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v6, "rpc":Lcmn/JsonRpc;
    const-string v11, ""

    invoke-virtual {v6, v11, v7}, Lcmn/JsonRpc;->requestBytes(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 233
    .local v5, "result":[B
    if-eqz v5, :cond_5

    array-length v11, v5

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v11, 0x0

    aget-byte v11, v5, v11

    const/16 v12, 0x4f

    if-ne v11, v12, :cond_5

    .line 234
    const/4 v11, 0x1

    aget-byte v11, v5, v11

    const/16 v12, 0x6b

    if-ne v11, v12, :cond_5

    .line 235
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 219
    .end local v5    # "result":[B
    .end local v6    # "rpc":Lcmn/JsonRpc;
    .end local v7    # "send":[B
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lstats/StatsTracker$Event;

    .line 220
    .local v1, "ev":Lstats/StatsTracker$Event;
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v8

    .line 221
    .local v8, "statEvent":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    invoke-static {v1}, Lstats/StatsTracker$Event;->access$4(Lstats/StatsTracker$Event;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->setTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .line 222
    invoke-static {v1}, Lstats/StatsTracker$Event;->access$5(Lstats/StatsTracker$Event;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->setEvent(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .line 223
    invoke-static {v1}, Lstats/StatsTracker$Event;->access$6(Lstats/StatsTracker$Event;)I

    move-result v12

    if-eqz v12, :cond_4

    .line 224
    invoke-static {v1}, Lstats/StatsTracker$Event;->access$6(Lstats/StatsTracker$Event;)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->setValue(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .line 226
    :cond_4
    invoke-virtual {v9, v8}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->addEvent(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 238
    .end local v1    # "ev":Lstats/StatsTracker$Event;
    .end local v4    # "props":Lcmn/AppProperties;
    .end local v8    # "statEvent":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 239
    .local v3, "ioEx":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "bad response"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 190
    .end local v3    # "ioEx":Ljava/io/IOException;
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 245
    :catch_1
    move-exception v11

    move-object v0, v11

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private store()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 156
    iget-object v4, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lstats/StatsTracker;->changedSinceLastStore:Z

    if-nez v4, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iput-boolean v5, p0, Lstats/StatsTracker;->changedSinceLastStore:Z

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lstats/StatsTracker;->lastStoreTime:J

    .line 162
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 165
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 168
    iget-object v4, p0, Lstats/StatsTracker;->context:Landroid/content/Context;

    const-string v5, "scm_log_temp"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 169
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 170
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 142
    iget-object v0, p0, Lstats/StatsTracker;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lstats/StatsTracker;->handler:Landroid/os/Handler;

    iget v1, p0, Lstats/StatsTracker;->storeInterval:I

    int-to-long v1, v1

    mul-long/2addr v1, v6

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    :cond_0
    iget-object v0, p0, Lstats/StatsTracker;->currentBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lstats/StatsTracker;->sendBufferSize:I

    if-gt v0, v1, :cond_1

    .line 149
    iget-wide v0, p0, Lstats/StatsTracker;->lastStoreTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lstats/StatsTracker;->storeInterval:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 150
    :cond_1
    invoke-direct {p0}, Lstats/StatsTracker;->store()V

    .line 151
    invoke-direct {p0}, Lstats/StatsTracker;->checkSend()V

    .line 153
    :cond_2
    return-void
.end method

.method public track(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lstats/StatsTracker;->track(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public track(Ljava/lang/String;I)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lstats/StatsTracker;->sendUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 121
    .local v2, "t":J
    iget-object v6, p0, Lstats/StatsTracker;->handler:Landroid/os/Handler;

    new-instance v0, Lstats/StatsTracker$2;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lstats/StatsTracker$2;-><init>(Lstats/StatsTracker;JLjava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public trackNoDouble(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lstats/StatsTracker;->doubleCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lstats/StatsTracker;->doubleCache:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lstats/StatsTracker;->track(Ljava/lang/String;I)V

    goto :goto_0
.end method
