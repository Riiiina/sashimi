.class public Lcom/clearchannel/iheartradio/media/player/CPUStats;
.super Ljava/lang/Thread;
.source "CPUStats.java"


# static fields
.field private static thread:Lcom/clearchannel/iheartradio/media/player/CPUStats;


# instance fields
.field avgusage:F

.field count:F

.field delay:J

.field idle:J

.field private in:Ljava/io/BufferedReader;

.field private stopped:Z

.field total:J

.field usage:F


# direct methods
.method private constructor <init>(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    iput-wide v3, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->total:J

    .line 13
    iput-wide v3, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->idle:J

    .line 14
    iput v2, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->usage:F

    .line 15
    iput v2, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->avgusage:F

    .line 16
    iput v2, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->count:F

    .line 17
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->delay:J

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->stopped:Z

    .line 24
    iput-wide v3, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->idle:J

    .line 25
    iput v2, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->usage:F

    .line 26
    iput v2, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->avgusage:F

    .line 27
    iput v2, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->count:F

    .line 28
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->delay:J

    .line 29
    const-string v0, "CPULoad"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/media/player/CPUStats;->setName(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private getUsage()V
    .locals 12

    .prologue
    .line 79
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    const-string v10, "/proc/stat"

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x3e8

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v7, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->in:Ljava/io/BufferedReader;

    .line 81
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->in:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "load":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "toks":[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long v2, v7, v9

    .line 86
    .local v2, "currTotal":J
    const/4 v7, 0x5

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 88
    .local v0, "currIdle":J
    iget-wide v7, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->total:J

    sub-long v7, v2, v7

    long-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    iget-wide v8, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->total:J

    sub-long v8, v2, v8

    add-long/2addr v8, v0

    iget-wide v10, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->idle:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->usage:F

    .line 89
    iput-wide v2, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->total:J

    .line 90
    iput-wide v0, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->idle:J

    .line 92
    iget v7, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->avgusage:F

    iget v8, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->usage:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->avgusage:F

    .line 93
    iget-object v7, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->in:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "currIdle":J
    .end local v2    # "currTotal":J
    .end local v5    # "load":Ljava/lang/String;
    .end local v6    # "toks":[Ljava/lang/String;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 96
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startLog(J)V
    .locals 1
    .param p0, "delay"    # J

    .prologue
    .line 41
    new-instance v0, Lcom/clearchannel/iheartradio/media/player/CPUStats;

    invoke-direct {v0, p0, p1}, Lcom/clearchannel/iheartradio/media/player/CPUStats;-><init>(J)V

    sput-object v0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->thread:Lcom/clearchannel/iheartradio/media/player/CPUStats;

    .line 42
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->thread:Lcom/clearchannel/iheartradio/media/player/CPUStats;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/media/player/CPUStats;->start()V

    .line 43
    return-void
.end method

.method public static stopLog()V
    .locals 4

    .prologue
    .line 33
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->thread:Lcom/clearchannel/iheartradio/media/player/CPUStats;

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "CPU"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avgusage="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/clearchannel/iheartradio/media/player/CPUStats;->thread:Lcom/clearchannel/iheartradio/media/player/CPUStats;

    iget v2, v2, Lcom/clearchannel/iheartradio/media/player/CPUStats;->avgusage:F

    sget-object v3, Lcom/clearchannel/iheartradio/media/player/CPUStats;->thread:Lcom/clearchannel/iheartradio/media/player/CPUStats;

    iget v3, v3, Lcom/clearchannel/iheartradio/media/player/CPUStats;->count:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->thread:Lcom/clearchannel/iheartradio/media/player/CPUStats;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->stopped:Z

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->stopped:Z

    .line 48
    :goto_0
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->stopped:Z

    if-eqz v1, :cond_0

    .line 69
    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/media/player/CPUStats;->getUsage()V

    .line 50
    iget v1, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->count:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->count:F

    .line 62
    :try_start_0
    iget-wide v1, p0, Lcom/clearchannel/iheartradio/media/player/CPUStats;->delay:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
