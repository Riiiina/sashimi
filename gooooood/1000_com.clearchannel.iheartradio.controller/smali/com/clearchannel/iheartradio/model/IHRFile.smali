.class public Lcom/clearchannel/iheartradio/model/IHRFile;
.super Ljava/lang/Object;
.source "IHRFile.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public _file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "inFile"    # Ljava/io/File;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "inPath"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRFile;->open(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "inPath"    # Ljava/lang/String;
    .param p2, "inWritable"    # Z

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRFile;->open(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static deleteFolder(Ljava/io/File;I)Z
    .locals 6
    .param p0, "inFile"    # Ljava/io/File;
    .param p1, "inStartingDepth"    # I

    .prologue
    const/4 v5, 0x1

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 47
    .local v2, "list":[Ljava/io/File;
    if-nez v2, :cond_1

    const/4 v3, 0x0

    move v0, v3

    .line 49
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 54
    .end local v0    # "count":I
    .end local v1    # "index":I
    .end local v2    # "list":[Ljava/io/File;
    :cond_0
    if-lez p1, :cond_3

    move v3, v5

    :goto_2
    return v3

    .line 47
    .restart local v2    # "list":[Ljava/io/File;
    :cond_1
    array-length v3, v2

    move v0, v3

    goto :goto_0

    .line 50
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_2
    aget-object v3, v2, v1

    sub-int v4, p1, v5

    invoke-static {v3, v4}, Lcom/clearchannel/iheartradio/model/IHRFile;->deleteFolder(Ljava/io/File;I)Z

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    .end local v0    # "count":I
    .end local v1    # "index":I
    .end local v2    # "list":[Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_2
.end method

.method public static deleteFolder(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "inPath"    # Ljava/lang/String;
    .param p1, "inStartingDepth"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 92
    .local v0, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/clearchannel/iheartradio/model/IHRFile;->deleteFolder(Ljava/io/File;I)Z

    move-result v0

    .line 102
    return v0
.end method

.method public static freeRatio(Ljava/lang/String;)D
    .locals 7
    .param p0, "inPath"    # Ljava/lang/String;

    .prologue
    .line 128
    const-wide/16 v0, 0x0

    .line 131
    .local v0, "result":D
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "stat":Landroid/os/StatFs;
    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-double v5, v5

    div-double v0, v3, v5

    .line 146
    :cond_0
    return-wide v0
.end method

.method public static freeSpace(Ljava/lang/String;)J
    .locals 7
    .param p0, "inPath"    # Ljava/lang/String;

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    .line 109
    .local v0, "result":J
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, "stat":Landroid/os/StatFs;
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v0, v3, v5

    .line 124
    :cond_0
    return-wide v0
.end method

.method public static listRoots()[Ljava/io/File;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static openForPath(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRFile;
    .locals 1
    .param p0, "inPath"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRFile;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/model/IHRFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static separator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public canRead()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    .line 277
    return-void
.end method

.method public data()[B
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 454
    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 456
    .local v4, "result":[B
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFile;->fileSize()J

    move-result-wide v2

    .line 458
    .local v2, "length":J
    const/4 v5, 0x0

    .line 460
    .local v5, "stream":Ljava/io/InputStream;
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_0

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v2, v7

    if-gez v7, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFile;->openInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 464
    :cond_0
    if-eqz v5, :cond_1

    .line 465
    long-to-int v7, v2

    new-array v4, v7, [B

    .line 467
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    .line 468
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v2    # "length":J
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v4

    .line 470
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    goto :goto_0
.end method

.method public delete()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public deleteFolder(I)Z
    .locals 1
    .param p1, "inStartingDepth"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/clearchannel/iheartradio/model/IHRFile;->deleteFolder(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public deleteWithEmptyParent()Z
    .locals 4

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFile;->delete()Z

    move-result v2

    .line 355
    .local v2, "result":Z
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 356
    .local v1, "parent":Ljava/io/File;
    if-nez v1, :cond_1

    const/4 v3, 0x0

    move-object v0, v3

    .line 358
    .local v0, "list":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_0

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 371
    :cond_0
    return v2

    .line 356
    .end local v0    # "list":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public fileSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isDirectoryEmpty()Z
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 295
    .local v0, "list":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 293
    .end local v0    # "list":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 295
    .restart local v0    # "list":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public mkdir()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 1
    .param p1, "inPath"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/model/IHRFile;->open(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "inPath"    # Ljava/lang/String;
    .param p2, "inWritable"    # Z

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V

    .line 196
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    .line 201
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openChild(Ljava/lang/String;)Z
    .locals 3
    .param p1, "inName"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "result":Z
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    .line 261
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public openCreatingParents(Ljava/lang/String;)Z
    .locals 3
    .param p1, "inPath"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFile;->close()V

    .line 208
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 211
    .local v1, "parent":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 215
    :cond_0
    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    .line 224
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, "result":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0    # "result":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 393
    .restart local v0    # "result":Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method

.method public openOutputStream(I)Ljava/io/OutputStream;
    .locals 5
    .param p1, "inOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-lez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 420
    .local v0, "result":Ljava/io/FileOutputStream;
    int-to-long v1, p1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 424
    :cond_0
    return-object v0

    .line 418
    .end local v0    # "result":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openOutputStream(Z)Ljava/io/OutputStream;
    .locals 3
    .param p1, "inAppend"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "result":Ljava/io/OutputStream;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v1

    .line 413
    :cond_0
    :goto_0
    return-object v0

    .line 401
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public openParent()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renameToPathInSameDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "inPath"    # Ljava/lang/String;

    .prologue
    .line 504
    const/4 v1, 0x1

    .line 507
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 527
    return v1
.end method

.method public setFileConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "inPath"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    .line 451
    :goto_0
    return-void

    .line 438
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    goto :goto_0

    .line 441
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    goto :goto_0
.end method

.method public stringContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inEncoding"    # Ljava/lang/String;

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFile;->data()[B

    move-result-object v0

    .line 496
    .local v0, "data":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 500
    :goto_0
    return-object v1

    .line 497
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/String;

    .end local v1    # "result":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 498
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public write([BZ)Z
    .locals 3
    .param p1, "inContents"    # [B
    .param p2, "inAppend"    # Z

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, "result":Z
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRFile;->_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/model/IHRFile;->openOutputStream(Z)Ljava/io/OutputStream;

    move-result-object v1

    .line 481
    .local v1, "stream":Ljava/io/OutputStream;
    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 483
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    const/4 v0, 0x1

    .line 489
    .end local v1    # "stream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return v0

    .line 487
    :catch_0
    move-exception v2

    goto :goto_0
.end method
