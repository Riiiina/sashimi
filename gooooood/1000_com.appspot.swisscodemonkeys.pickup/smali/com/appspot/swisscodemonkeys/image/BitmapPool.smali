.class public Lcom/appspot/swisscodemonkeys/image/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0x28

.field private static instance:Lcom/appspot/swisscodemonkeys/image/BitmapPool;


# instance fields
.field private freeBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;",
            ">;>;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private statsBitmapsCreated:I

.field private statsBitmapsFreed:I

.field private statsBitmapsReused:I

.field private statsMaxBitmaps:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->paint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 34
    return-void
.end method

.method private createBitmapOOM(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const-wide/16 v5, 0x400

    .line 137
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 138
    .local v1, "size":I
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "out of memory. freeing everything "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->log(Ljava/lang/String;)V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---> mem kb "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->log(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 153
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 154
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    return-object v2

    .line 143
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " try "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->log(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 145
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 146
    :catch_0
    move-exception v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/appspot/swisscodemonkeys/image/BitmapPool;
    .locals 2

    .prologue
    .line 254
    const-class v0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->instance:Lcom/appspot/swisscodemonkeys/image/BitmapPool;

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool;

    invoke-direct {v1}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;-><init>()V

    sput-object v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->instance:Lcom/appspot/swisscodemonkeys/image/BitmapPool;

    .line 257
    :cond_0
    sget-object v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->instance:Lcom/appspot/swisscodemonkeys/image/BitmapPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static growHeap(I)V
    .locals 2
    .param p0, "mb"    # I

    .prologue
    .line 159
    new-instance v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool$1;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/image/BitmapPool$1;-><init>(I)V

    .line 177
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 179
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 185
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    return-void
.end method

.method public clearStats()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsMaxBitmaps:I

    .line 237
    iput v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsBitmapsCreated:I

    .line 238
    iput v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsBitmapsFreed:I

    .line 239
    iput v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsBitmapsReused:I

    .line 240
    return-void
.end method

.method public freeBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_1

    .line 207
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;

    invoke-direct {v1, p1}, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 210
    .local v0, "b":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;>;"
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    iget v1, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsBitmapsFreed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsBitmapsFreed:I

    .line 212
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_2
    const-string v1, "bitmap already added"

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public freeBitmaps(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    return-void

    .line 223
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 224
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 225
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getBitmap(II)Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 94
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, v0}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->getBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const-wide/16 v8, 0x400

    .line 98
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "---> create new ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->log(Ljava/lang/String;)V

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "---> mem kb "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->log(Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget v5, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsBitmapsCreated:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsBitmapsCreated:I

    .line 115
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v5, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;

    invoke-direct {v5, v0}, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;-><init>(Landroid/graphics/Bitmap;)V

    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_2
    return-object v5

    .line 99
    :cond_0
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 100
    .local v4, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;>;"
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;

    .line 101
    .local v1, "bc":Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
    if-nez v1, :cond_2

    .line 102
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    add-int/lit8 v3, v3, -0x1

    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 104
    :cond_2
    iget-object v5, v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, p1, :cond_1

    iget-object v5, v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 105
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->freeBitmaps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    iget v5, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsBitmapsReused:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->statsBitmapsReused:I

    move-object v5, v1

    .line 107
    goto :goto_2

    .line 129
    .end local v1    # "bc":Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
    .end local v4    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;>;"
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 130
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-direct {p0, p1, p2, p3}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->createBitmapOOM(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v1, v2}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->getBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapCopy(Landroid/graphics/Bitmap;)Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v1, v2, v3}, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->getBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;

    move-result-object v0

    .line 194
    .local v0, "bc":Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
    iget-object v1, v0, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 195
    return-object v0
.end method

.method public showStats()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method
