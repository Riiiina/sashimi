.class Lcom/adobe/reader/ARBitmapPool;
.super Ljava/lang/Object;


# static fields
.field private static sARContext:Lcom/adobe/reader/AdobeReader;

.field public static sBitmapPool:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCapacityIncrement:I

.field private static sInitialCapacity:I

.field public static sListAvailableBitmap:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sNumTilesPerged:I

.field public static sPixels:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v0, 0x0

    sput v0, Lcom/adobe/reader/ARBitmapPool;->sNumTilesPerged:I

    sput v1, Lcom/adobe/reader/ARBitmapPool;->sInitialCapacity:I

    sput v1, Lcom/adobe/reader/ARBitmapPool;->sCapacityIncrement:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBitmapToPool(II)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/adobe/reader/ARBitmapPool;->sNumTilesPerged:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static freeBitmapFromMemory(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public static getTileSize(II)D
    .locals 4

    mul-int v0, p0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    check-cast p0, Lcom/adobe/reader/AdobeReader;

    sput-object p0, Lcom/adobe/reader/ARBitmapPool;->sARContext:Lcom/adobe/reader/AdobeReader;

    return-void
.end method

.method public static initializePixelBuffer(I)V
    .locals 1

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    array-length v0, v0

    if-ge v0, p0, :cond_1

    :cond_0
    new-array v0, p0, [I

    sput-object v0, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    :cond_1
    return-void
.end method

.method public static obtainBitmap(II)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sARContext:Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getCurrentMemoryUsage()I

    move-result v0

    sget-object v1, Lcom/adobe/reader/ARBitmapPool;->sARContext:Lcom/adobe/reader/AdobeReader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adobe/reader/AdobeReader;->getHeapSizeLimit(Z)D

    move-result-wide v1

    int-to-double v3, v0

    invoke-static {p0, p1}, Lcom/adobe/reader/ARBitmapPool;->getTileSize(II)D

    move-result-wide v5

    add-double/2addr v3, v5

    cmpg-double v0, v3, v1

    if-gez v0, :cond_0

    invoke-static {p0, p1}, Lcom/adobe/reader/ARBitmapPool;->addBitmapToPool(II)V

    :cond_0
    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sARContext:Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->getCurrentMemoryUsage()I

    move-result v0

    sget-object v1, Lcom/adobe/reader/ARBitmapPool;->sARContext:Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v1, v8}, Lcom/adobe/reader/AdobeReader;->getHeapSizeLimit(Z)D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/adobe/reader/ARBitmapPool;->getTileSize(II)D

    move-result-wide v3

    double-to-int v3, v3

    sget v4, Lcom/adobe/reader/ARBitmapPool;->sNumTilesPerged:I

    mul-int/2addr v4, v3

    sub-int v4, v0, v4

    int-to-double v4, v4

    int-to-double v6, v3

    sub-double v6, v1, v6

    sub-double v3, v4, v6

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    int-to-double v4, v0

    cmpl-double v0, v4, v1

    if-lez v0, :cond_2

    if-eqz v3, :cond_2

    sget v0, Lcom/adobe/reader/ARBitmapPool;->sNumTilesPerged:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/adobe/reader/ARBitmapPool;->sNumTilesPerged:I

    invoke-static {p0}, Lcom/adobe/reader/ARBitmapPool;->freeBitmapFromMemory(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v8

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_0

    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sListAvailableBitmap:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
