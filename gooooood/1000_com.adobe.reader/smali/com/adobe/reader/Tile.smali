.class Lcom/adobe/reader/Tile;
.super Ljava/lang/Object;


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mFileStream:Ljava/io/FileOutputStream;

.field mHeight:I

.field mIsDirty:Z

.field mLeft:I

.field mPage:I

.field mTop:I

.field mWidth:I


# direct methods
.method constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adobe/reader/Tile;->mWidth:I

    iput p2, p0, Lcom/adobe/reader/Tile;->mHeight:I

    iput p3, p0, Lcom/adobe/reader/Tile;->mLeft:I

    iput p4, p0, Lcom/adobe/reader/Tile;->mTop:I

    iget v0, p0, Lcom/adobe/reader/Tile;->mWidth:I

    iget v1, p0, Lcom/adobe/reader/Tile;->mHeight:I

    invoke-static {v0, v1}, Lcom/adobe/reader/ARBitmapPool;->obtainBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/Tile;->mIsDirty:Z

    return-void
.end method


# virtual methods
.method deleteFromDisk()V
    .locals 6

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->getFileName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, -0x1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/adobe/reader/AdobeReader;->updateTileCacheSpaceUsed(J)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method getFileName()Ljava/lang/String;
    .locals 3

    const-string v2, "_"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->getTileCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->getTileFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/reader/Tile;->mLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/reader/Tile;->mTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isInMemory()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOnDisk()Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->getFileName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method loadFromDisk()V
    .locals 9

    iget-object v0, p0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/adobe/reader/Tile;->mWidth:I

    iget v3, p0, Lcom/adobe/reader/Tile;->mHeight:I

    invoke-static {v2, v3}, Lcom/adobe/reader/ARBitmapPool;->obtainBitmap(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/adobe/reader/ARBitmapPool;->releaseBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/adobe/reader/ARBitmapPool;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/adobe/reader/Tile;->mWidth:I

    iget v7, p0, Lcom/adobe/reader/Tile;->mHeight:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/adobe/reader/Tile;->mWidth:I

    iget v8, p0, Lcom/adobe/reader/Tile;->mHeight:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method releaseBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/adobe/reader/ARBitmapPool;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method saveToDisk()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/adobe/reader/AdobeReader;->isTileCacheFull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    move v0, v5

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/adobe/reader/Tile;->mIsDirty:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    move v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->isOnDisk()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    move v0, v6

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adobe/reader/Tile;->mFileStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    iget-object v4, p0, Lcom/adobe/reader/Tile;->mFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v1, p0, Lcom/adobe/reader/Tile;->mFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget-object v1, p0, Lcom/adobe/reader/Tile;->mFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/reader/Tile;->mFileStream:Ljava/io/FileOutputStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adobe/reader/AdobeReader;->updateTileCacheSpaceUsed(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->deleteFromDisk()V

    invoke-virtual {p0}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    move v0, v5

    goto :goto_0
.end method
