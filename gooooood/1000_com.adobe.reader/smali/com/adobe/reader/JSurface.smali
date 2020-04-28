.class public Lcom/adobe/reader/JSurface;
.super Ljava/lang/Object;


# static fields
.field public static final FACTOR_TILE_SIZE_APPROX:D = 2.0

.field public static final KILO_VALUE:I = 0x400

.field public static final MAX_TILES:I = 0x1f4

.field private static SCREEN_DIMENS_THRESHOLD_FOR_SMALLER_TILES:I

.field public static USE_TILES:Z

.field static sTileHeight:I

.field static sTileWidth:I


# instance fields
.field mNextPageTiles:[Lcom/adobe/reader/Tile;

.field mNumTiles:I

.field mPageNumForNextPageTiles:I

.field mPageNumForPrevPageTiles:I

.field mPrevPageTiles:[Lcom/adobe/reader/Tile;

.field mTileArray:[Lcom/adobe/reader/Tile;

.field m_bitmap:Landroid/graphics/Bitmap;

.field m_canvas:Landroid/graphics/Canvas;

.field m_height:I

.field m_paint:Landroid/graphics/Paint;

.field m_rect:Landroid/graphics/Rect;

.field m_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sput v0, Lcom/adobe/reader/JSurface;->sTileHeight:I

    sput-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    const v0, 0x64140

    sput v0, Lcom/adobe/reader/JSurface;->SCREEN_DIMENS_THRESHOLD_FOR_SMALLER_TILES:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    iput-object v2, p0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    iput-object v2, p0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    iput v1, p0, Lcom/adobe/reader/JSurface;->mPageNumForPrevPageTiles:I

    iput v1, p0, Lcom/adobe/reader/JSurface;->mPageNumForNextPageTiles:I

    iput p1, p0, Lcom/adobe/reader/JSurface;->m_width:I

    iput p2, p0, Lcom/adobe/reader/JSurface;->m_height:I

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    new-array v0, v0, [Lcom/adobe/reader/Tile;

    iput-object v0, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    :goto_0
    mul-int v0, p1, p2

    invoke-static {v0}, Lcom/adobe/reader/ARBitmapPool;->initializePixelBuffer(I)V

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/JSurface;->m_bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static calculateAndSetTileDimensions(II)V
    .locals 2

    mul-int v0, p0, p1

    sget v1, Lcom/adobe/reader/JSurface;->SCREEN_DIMENS_THRESHOLD_FOR_SMALLER_TILES:I

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sput v0, Lcom/adobe/reader/JSurface;->sTileHeight:I

    :goto_0
    return-void

    :cond_0
    div-int/lit8 v0, p0, 0x2

    div-int/lit8 v1, p1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sput v0, Lcom/adobe/reader/JSurface;->sTileHeight:I

    goto :goto_0
.end method

.method private getFarthestTileIndex(IIIZ)I
    .locals 9

    const/4 v0, -0x1

    sget v1, Lcom/adobe/reader/JSurface;->sTileWidth:I

    div-int v1, p1, v1

    sget v2, Lcom/adobe/reader/JSurface;->sTileHeight:I

    div-int v2, p2, v2

    const/4 v3, 0x0

    move v4, p3

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_0
    const/16 v5, 0x1f4

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v6, v6, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    monitor-enter v6

    :try_start_1
    iget v5, v6, Lcom/adobe/reader/Tile;->mLeft:I

    if-ne v5, p1, :cond_0

    iget v5, v6, Lcom/adobe/reader/Tile;->mTop:I

    if-eq v5, p2, :cond_1

    :cond_0
    if-nez p4, :cond_3

    invoke-virtual {v6}, Lcom/adobe/reader/Tile;->isInMemory()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget v5, v6, Lcom/adobe/reader/Tile;->mLeft:I

    sget v7, Lcom/adobe/reader/JSurface;->sTileWidth:I

    div-int/2addr v5, v7

    iget v6, v6, Lcom/adobe/reader/Tile;->mTop:I

    sget v7, Lcom/adobe/reader/JSurface;->sTileHeight:I

    div-int/2addr v6, v7

    sub-int v7, v1, v5

    sub-int v5, v1, v5

    mul-int/2addr v5, v7

    sget v7, Lcom/adobe/reader/JSurface;->sTileWidth:I

    mul-int/2addr v5, v7

    sub-int v7, v2, v6

    sub-int v6, v2, v6

    mul-int/2addr v6, v7

    sget v7, Lcom/adobe/reader/JSurface;->sTileHeight:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    if-le v5, v4, :cond_2

    move v3, v0

    move v4, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_4
    return v3
.end method

.method private releasePrevNextPageTiles([Lcom/adobe/reader/Tile;)V
    .locals 2

    if-eqz p1, :cond_2

    monitor-enter p1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method clearTileArray()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    if-nez v1, :cond_1

    monitor-exit v0

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v3

    :goto_1
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/adobe/reader/JSurface;->deleteTileAtIndex(I)V

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    invoke-static {}, Ljava/lang/System;->gc()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    array-length v0, v0

    add-int/2addr v0, v3

    :goto_3
    iget-object v1, p0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_3
.end method

.method public deleteTile(III)V
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/reader/JSurface;->getIndex(III)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/adobe/reader/Tile;->deleteFromDisk()V

    invoke-virtual {p0, v0}, Lcom/adobe/reader/JSurface;->deleteTileAtIndex(I)V

    iget v0, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method deleteTileAtIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/adobe/reader/Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/adobe/reader/Tile;->releaseBitmap()V

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method fill(IIIII)V
    .locals 8

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/JSurface;->m_canvas:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/JSurface;->m_paint:Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_rect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/JSurface;->m_rect:Landroid/graphics/Rect;

    :cond_2
    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v0, :cond_4

    const/high16 v0, -0x1000000

    or-int/2addr v0, p5

    iget v1, p0, Lcom/adobe/reader/JSurface;->m_width:I

    sub-int v2, p4, p2

    sub-int v3, p3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    add-int v5, p2, v4

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v5, v3

    :goto_1
    if-ge v5, v6, :cond_3

    sget-object v7, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    aput v0, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/adobe/reader/JSurface;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/adobe/reader/JSurface;->m_rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/reader/JSurface;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method getIndex(III)I
    .locals 6

    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    div-int v0, p1, v0

    sget v1, Lcom/adobe/reader/JSurface;->sTileHeight:I

    div-int v1, p2, v1

    int-to-double v2, p3

    sget v4, Lcom/adobe/reader/JSurface;->sTileWidth:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    rem-int/lit16 v0, v0, 0x1f4

    :cond_0
    return v0
.end method

.method public getNumInMemoryTiles()I
    .locals 4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    if-nez v1, :cond_0

    monitor-exit v0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v1, v2

    :goto_1
    const/16 v3, 0x1f4

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/adobe/reader/Tile;->isInMemory()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method getTile(III)Lcom/adobe/reader/Tile;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/reader/JSurface;->getIndex(III)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/adobe/reader/Tile;->mLeft:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/adobe/reader/Tile;->mTop:I

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method getTileSize()D
    .locals 4

    sget v0, Lcom/adobe/reader/JSurface;->sTileWidth:I

    sget v1, Lcom/adobe/reader/JSurface;->sTileHeight:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method pullPixels()[I
    .locals 8

    const/4 v2, 0x0

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    iget v3, p0, Lcom/adobe/reader/JSurface;->m_width:I

    iget v6, p0, Lcom/adobe/reader/JSurface;->m_width:I

    iget v7, p0, Lcom/adobe/reader/JSurface;->m_height:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_0
    sget-object v0, Lcom/adobe/reader/ARBitmapPool;->sPixels:[I

    return-object v0
.end method

.method public purgeOffscreenTiles(IIIIZ)V
    .locals 11

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/adobe/reader/JSurface;->sTileWidth:I

    div-int v1, p1, v1

    sget v2, Lcom/adobe/reader/JSurface;->sTileWidth:I

    mul-int/2addr v1, v2

    sget v2, Lcom/adobe/reader/JSurface;->sTileHeight:I

    div-int v2, p2, v2

    sget v3, Lcom/adobe/reader/JSurface;->sTileHeight:I

    mul-int/2addr v2, v3

    add-int v3, p1, p3

    sget v4, Lcom/adobe/reader/JSurface;->sTileWidth:I

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    int-to-double v3, v3

    sget v5, Lcom/adobe/reader/JSurface;->sTileWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    add-int v4, p2, p4

    sget v5, Lcom/adobe/reader/JSurface;->sTileHeight:I

    add-int/2addr v5, v2

    sub-int/2addr v4, v5

    int-to-double v4, v4

    sget v6, Lcom/adobe/reader/JSurface;->sTileHeight:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/adobe/reader/JSurface;->sTileWidth:I

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v3, v5

    add-int/2addr v1, v3

    sget v3, Lcom/adobe/reader/JSurface;->sTileHeight:I

    div-int/lit8 v4, v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v5, v5, v3

    if-nez v5, :cond_2

    monitor-exit v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v5, v5, v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter v5

    :try_start_1
    new-instance v4, Landroid/graphics/Rect;

    iget v6, v5, Lcom/adobe/reader/Tile;->mLeft:I

    iget v7, v5, Lcom/adobe/reader/Tile;->mTop:I

    iget v8, v5, Lcom/adobe/reader/Tile;->mLeft:I

    iget v9, v5, Lcom/adobe/reader/Tile;->mWidth:I

    add-int/2addr v8, v9

    iget v9, v5, Lcom/adobe/reader/Tile;->mTop:I

    iget v10, v5, Lcom/adobe/reader/Tile;->mHeight:I

    add-int/2addr v9, v10

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p5, :cond_5

    invoke-virtual {v5}, Lcom/adobe/reader/Tile;->isInMemory()Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, Lcom/adobe/reader/JSurface;->sTileWidth:I

    div-int v4, v1, v4

    sget v6, Lcom/adobe/reader/JSurface;->sTileHeight:I

    div-int v6, v2, v6

    iget v7, v5, Lcom/adobe/reader/Tile;->mLeft:I

    sget v8, Lcom/adobe/reader/JSurface;->sTileWidth:I

    div-int/2addr v7, v8

    iget v8, v5, Lcom/adobe/reader/Tile;->mTop:I

    sget v9, Lcom/adobe/reader/JSurface;->sTileHeight:I

    div-int/2addr v8, v9

    sub-int v9, v4, v7

    sub-int/2addr v4, v7

    mul-int/2addr v4, v9

    sget v7, Lcom/adobe/reader/JSurface;->sTileWidth:I

    mul-int/2addr v4, v7

    sub-int v7, v6, v8

    sub-int/2addr v6, v8

    mul-int/2addr v6, v7

    sget v7, Lcom/adobe/reader/JSurface;->sTileHeight:I

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    invoke-static {}, Lcom/adobe/reader/AdobeReader;->isTileCacheThresholdSpaceUsed()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v2, v4, v6}, Lcom/adobe/reader/JSurface;->purgeTiles(IIIZ)Z

    :cond_3
    invoke-virtual {v5}, Lcom/adobe/reader/Tile;->saveToDisk()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/adobe/reader/JSurface;->deleteTileAtIndex(I)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget v4, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    :cond_4
    :goto_3
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :cond_5
    iget-object v4, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p0, v3}, Lcom/adobe/reader/JSurface;->deleteTileAtIndex(I)V

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget v4, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0
.end method

.method purgeTiles(IIIZ)Z
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/reader/JSurface;->getFarthestTileIndex(IIIZ)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/adobe/reader/Tile;->deleteFromDisk()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/adobe/reader/JSurface;->deleteTileAtIndex(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    invoke-static {}, Ljava/lang/System;->gc()V

    move v0, v3

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pushPixels([I)V
    .locals 8

    const/4 v2, 0x0

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->m_bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/adobe/reader/JSurface;->m_width:I

    iget v6, p0, Lcom/adobe/reader/JSurface;->m_width:I

    iget v7, p0, Lcom/adobe/reader/JSurface;->m_height:I

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_0
    return-void
.end method

.method public releaseNextPageTiles()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    invoke-direct {p0, v0}, Lcom/adobe/reader/JSurface;->releasePrevNextPageTiles([Lcom/adobe/reader/Tile;)V

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/adobe/reader/JSurface;->mNextPageTiles:[Lcom/adobe/reader/Tile;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/reader/JSurface;->mPageNumForNextPageTiles:I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releasePrevPageTiles()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    invoke-direct {p0, v0}, Lcom/adobe/reader/JSurface;->releasePrevNextPageTiles([Lcom/adobe/reader/Tile;)V

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/adobe/reader/JSurface;->mPrevPageTiles:[Lcom/adobe/reader/Tile;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/reader/JSurface;->mPageNumForPrevPageTiles:I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method saveTileToDisk(IIII)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p4, v3}, Lcom/adobe/reader/JSurface;->getFarthestTileIndex(IIIZ)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/adobe/reader/JSurface;->mTileArray:[Lcom/adobe/reader/Tile;

    aget-object v2, v2, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-enter v2

    :try_start_1
    invoke-virtual {v2}, Lcom/adobe/reader/Tile;->saveToDisk()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/adobe/reader/JSurface;->deleteTileAtIndex(I)V

    iget v0, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/adobe/reader/JSurface;->mNumTiles:I

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method
