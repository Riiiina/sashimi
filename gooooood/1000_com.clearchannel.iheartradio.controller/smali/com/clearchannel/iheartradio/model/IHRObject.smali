.class public Lcom/clearchannel/iheartradio/model/IHRObject;
.super Ljava/lang/Object;
.source "IHRObject.java"


# instance fields
.field protected mLogDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized logBytes(Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 13
    const-class v9, Lcom/clearchannel/iheartradio/model/IHRObject;

    monitor-enter v9

    if-nez p2, :cond_4

    const/4 v0, 0x0

    .line 14
    .local v0, "i":I
    :goto_0
    if-gez p4, :cond_0

    add-int/2addr p4, v0

    .line 15
    :cond_0
    if-gez p3, :cond_1

    add-int/2addr p3, v0

    .line 16
    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    .line 17
    :cond_2
    add-int v1, p3, p4

    if-le v1, v0, :cond_3

    sub-int p4, v0, p3

    .line 19
    :cond_3
    if-gtz p4, :cond_5

    move p2, v0

    .line 54
    .end local v0    # "i":I
    .local p2, "i":I
    :goto_1
    monitor-exit v9

    return-void

    .line 13
    .local p2, "bytes":[B
    :cond_4
    :try_start_0
    array-length v0, p2

    goto :goto_0

    .line 20
    .restart local v0    # "i":I
    :cond_5
    if-nez p1, :cond_6

    const-string p1, ""

    .line 21
    :cond_6
    if-nez p0, :cond_7

    const-string p0, "Bytes"

    .line 23
    :cond_7
    const/4 v2, 0x0

    .local v2, "o":I
    move v1, v2

    .line 24
    .local v1, "j":I
    const/16 v3, 0x30

    new-array v6, v3, [C

    .line 25
    .local v6, "raw":[C
    const/16 v3, 0x10

    new-array v8, v3, [C

    .local v8, "text":[C
    move v4, v2

    .line 27
    .end local v2    # "o":I
    .local v4, "o":I
    :goto_2
    if-gtz p4, :cond_8

    move p2, v0

    .line 54
    .end local v0    # "i":I
    .local p2, "i":I
    goto :goto_1

    .line 28
    .restart local v0    # "i":I
    .local p2, "bytes":[B
    :cond_8
    const/16 v0, 0x10

    if-lt p4, v0, :cond_9

    .end local v0    # "i":I
    const/16 v0, 0x10

    move v3, v0

    .line 30
    .local v3, "n":I
    :goto_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_4
    if-lt v1, v3, :cond_a

    move v0, v1

    .line 42
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_5
    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 47
    new-instance v5, Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v7, 0x30

    invoke-direct {v5, v6, v1, v7}, Ljava/lang/String;-><init>([CII)V

    .line 48
    .local v5, "r":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v10, 0x10

    invoke-direct {v7, v8, v1, v10}, Ljava/lang/String;-><init>([CII)V

    .line 50
    .local v7, "t":Ljava/lang/String;
    add-int v1, v4, v3

    .line 52
    .end local v4    # "o":I
    .local v1, "o":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " |"

    .end local v5    # "r":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|  ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sub-int/2addr p4, v3

    move v4, v1

    .end local v1    # "o":I
    .restart local v4    # "o":I
    move v1, v2

    .end local v2    # "j":I
    .local v1, "j":I
    goto :goto_2

    .end local v0    # "i":I
    .end local v3    # "n":I
    .end local v7    # "t":Ljava/lang/String;
    :cond_9
    move v3, p4

    .line 28
    goto :goto_3

    .line 31
    .local v1, "i":I
    .restart local v2    # "j":I
    .restart local v3    # "n":I
    :cond_a
    add-int v0, p3, v2

    aget-byte v0, p2, v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    .local v0, "c":C
    const/16 v5, 0x9

    if-gt v0, v5, :cond_b

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 32
    :goto_6
    mul-int/lit8 v5, v1, 0x3

    aput-char v0, v6, v5

    .line 34
    add-int v0, p3, v2

    aget-byte v0, p2, v0

    .end local v0    # "c":C
    and-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    .restart local v0    # "c":C
    const/16 v5, 0x9

    if-gt v0, v5, :cond_c

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 35
    :goto_7
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    aput-char v0, v6, v5

    .line 37
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x2

    const/16 v5, 0x20

    aput-char v5, v6, v0

    .line 39
    .end local v0    # "c":C
    add-int v0, p3, v2

    aget-byte v0, p2, v0

    const/16 v5, 0x20

    if-lt v0, v5, :cond_d

    add-int v0, p3, v2

    aget-byte v0, p2, v0

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_d

    add-int v0, p3, v2

    aget-byte v0, p2, v0

    int-to-char v0, v0

    aput-char v0, v8, v1

    .line 30
    :goto_8
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .local v0, "i":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    goto/16 :goto_4

    .line 31
    .local v0, "c":C
    :cond_b
    add-int/lit8 v0, v0, 0x37

    int-to-char v0, v0

    goto :goto_6

    .line 34
    :cond_c
    add-int/lit8 v0, v0, 0x37

    int-to-char v0, v0

    goto :goto_7

    .line 40
    .end local v0    # "c":C
    :cond_d
    const/16 v0, 0x2e

    aput-char v0, v8, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 13
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "n":I
    .end local v4    # "o":I
    .end local v6    # "raw":[C
    .end local v8    # "text":[C
    :catchall_0
    move-exception p0

    .end local p0    # "tag":Ljava/lang/String;
    monitor-exit v9

    throw p0

    .line 43
    .local v0, "i":I
    .restart local v2    # "j":I
    .restart local v3    # "n":I
    .restart local v4    # "o":I
    .restart local v6    # "raw":[C
    .restart local v8    # "text":[C
    .restart local p0    # "tag":Ljava/lang/String;
    :cond_e
    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x2

    const/16 v10, 0x20

    :try_start_1
    aput-char v10, v6, v7

    aput-char v10, v6, v5

    aput-char v10, v6, v1

    .line 44
    const/16 v1, 0x20

    aput-char v1, v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method


# virtual methods
.method protected dump(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 80
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRObject;->dump(Ljava/lang/String;[BII)V

    return-void
.end method

.method protected dump(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "length"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/clearchannel/iheartradio/model/IHRObject;->dump(Ljava/lang/String;[BII)V

    return-void
.end method

.method protected dump(Ljava/lang/String;[BII)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;->logEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRObject;->mLogDisabled:Z

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRObject;->logName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p2, p3, p4}, Lcom/clearchannel/iheartradio/model/IHRObject;->logBytes(Ljava/lang/String;Ljava/lang/String;[BII)V

    .line 86
    :cond_0
    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;->logEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRObject;->mLogDisabled:Z

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRObject;->logName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void
.end method

.method protected logEnabled()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public logName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    const-string v1, ""

    .line 60
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .local v0, "i":I
    if-lez v0, :cond_0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_0
    return-object v1
.end method

.method public logName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;->logName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    return-object v0
.end method
