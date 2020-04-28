.class public Lcmn/ExCatch;
.super Ljava/lang/Object;
.source "ExCatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcmn/ExCatch$LoggingExceptionHandler;
    }
.end annotation


# static fields
.field private static final DESTINATION_URL:Ljava/lang/String; = "http://swisscodemonkeys.appspot.com/trace.xml"

.field private static final TRACE_SUFFIX:Ljava/lang/String; = ".trace"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcmn/AppProperties;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0, p1, p2}, Lcmn/ExCatch;->getExceptionLog(Lcmn/AppProperties;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExceptionLog(Lcmn/AppProperties;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "props"    # Lcmn/AppProperties;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 79
    .local v1, "t":J
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 80
    .local v3, "tempWriter":Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 81
    .local v4, "toString":Ljava/io/PrintWriter;
    invoke-virtual {v4, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcmn/AppProperties;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    if-eqz p2, :cond_0

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "info: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcmn/AppProperties;->getArgumentMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p0    # "props":Lcmn/AppProperties;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 89
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 90
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 86
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getTraceFiles(Landroid/content/Context;)[Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcmn/ExCatch$1;

    invoke-direct {v1}, Lcmn/ExCatch$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcmn/AppProperties;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Lcmn/AppProperties;

    .prologue
    .line 95
    const-class v2, Lcmn/ExCatch;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 97
    .local v0, "oldHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    instance-of v3, v0, Lcmn/ExCatch$LoggingExceptionHandler;

    if-nez v3, :cond_1

    .line 98
    invoke-static {p0}, Lcmn/ExCatch;->getTraceFiles(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v1

    .line 100
    .local v1, "sendFiles":[Ljava/io/File;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 101
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcmn/ExCatch$2;

    invoke-direct {v4, v1}, Lcmn/ExCatch$2;-><init>([Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 130
    :cond_0
    new-instance v3, Lcmn/ExCatch$LoggingExceptionHandler;

    invoke-direct {v3, v0, p1, p0}, Lcmn/ExCatch$LoggingExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcmn/AppProperties;Landroid/content/Context;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v1    # "sendFiles":[Ljava/io/File;
    :cond_1
    monitor-exit v2

    return-void

    .line 95
    .end local v0    # "oldHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static logException(Lcmn/AppProperties;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "props"    # Lcmn/AppProperties;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcmn/ExCatch$3;

    invoke-direct {v1, p0, p1, p2}, Lcmn/ExCatch$3;-><init>(Lcmn/AppProperties;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    return-void
.end method
