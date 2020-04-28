.class Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
.super Ljava/lang/Object;
.source "EnemyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/EnemyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GameEnemyProp"
.end annotation


# instance fields
.field public armor:I

.field public draw_shift_x:I

.field public draw_shift_y:I

.field public energy_bar_offset:I

.field public first_level:I

.field private frames:[Landroid/graphics/Bitmap;

.field private frames_per_dir:I

.field public health:I

.field public is_flyer:Z

.field public label:Ljava/lang/String;

.field private slow_frames:[Landroid/graphics/Bitmap;

.field public speed:I

.field public value:I

.field public x_tile_count:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magicwach/rdefense/EnemyData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/magicwach/rdefense/EnemyData$1;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>()V

    return-void
.end method

.method private static applySlowColor(I)I
    .locals 4
    .param p0, "a"    # I

    .prologue
    .line 292
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v2, 0x78

    .line 293
    .local v1, "g":I
    and-int/lit16 v2, p0, 0xff

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v2, 0x40

    .line 294
    .local v0, "b":I
    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    or-int/2addr v2, v0

    return v2
.end method

.method private static createSlowImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 281
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 282
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 283
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 284
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    mul-int v0, v3, v7

    if-ge v8, v0, :cond_1

    .line 285
    aget v0, v1, v8

    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    const/high16 v4, -0x80000000

    if-lt v0, v4, :cond_0

    .line 286
    aget v0, v1, v8

    invoke-static {v0}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->applySlowColor(I)I

    move-result v0

    aput v0, v1, v8

    .line 284
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 289
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v4, v3

    move v5, v7

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getImage(IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "frame"    # I
    .param p3, "slow"    # Z

    .prologue
    .line 273
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->slow_frames:[Landroid/graphics/Bitmap;

    move-object v0, v1

    .line 274
    .local v0, "ret_frames":[Landroid/graphics/Bitmap;
    :goto_0
    iget v1, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames_per_dir:I

    if-nez v1, :cond_1

    .line 275
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 277
    :goto_1
    return-object v1

    .line 273
    .end local v0    # "ret_frames":[Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames:[Landroid/graphics/Bitmap;

    move-object v0, v1

    goto :goto_0

    .line 277
    .restart local v0    # "ret_frames":[Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x1

    sub-int v1, p1, v1

    iget v2, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames_per_dir:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames_per_dir:I

    rem-int v2, p2, v2

    add-int/2addr v1, v2

    aget-object v1, v0, v1

    goto :goto_1
.end method

.method public setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V
    .locals 1
    .param p1, "ei"    # Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    .prologue
    .line 237
    iget v0, p1, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->frames_per_dir:I

    iput v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames_per_dir:I

    .line 238
    iget-object v0, p1, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->frames:[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames:[Landroid/graphics/Bitmap;

    .line 239
    iget-object v0, p1, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->slow_frames:[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->slow_frames:[Landroid/graphics/Bitmap;

    .line 240
    iget v0, p1, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->draw_shift_x:I

    iput v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->draw_shift_x:I

    .line 241
    iget v0, p1, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->draw_shift_y:I

    iput v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->draw_shift_y:I

    .line 242
    return-void
.end method

.method public setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "res_id"    # I

    .prologue
    const/16 v3, 0x28

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 245
    .local v9, "img":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 246
    .local v7, "fs_width":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 247
    .local v8, "height":I
    iget v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->x_tile_count:I

    if-nez v0, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    move v11, v0

    .line 248
    .local v11, "width":I
    :goto_0
    sub-int v0, v3, v11

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->draw_shift_x:I

    .line 249
    sub-int v0, v3, v8

    iput v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->draw_shift_y:I

    .line 250
    div-int v10, v7, v11

    .line 251
    .local v10, "num_cells":I
    div-int/lit8 v0, v10, 0x4

    iput v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames_per_dir:I

    .line 252
    if-le v10, v1, :cond_1

    .line 253
    new-array v0, v10, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames:[Landroid/graphics/Bitmap;

    .line 254
    new-array v0, v10, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->slow_frames:[Landroid/graphics/Bitmap;

    .line 255
    const/4 v6, 0x0

    .local v6, "cell_idx":I
    :goto_1
    if-ge v6, v10, :cond_2

    .line 256
    iget-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames:[Landroid/graphics/Bitmap;

    mul-int v1, v6, v11

    invoke-static {v9, v1, v2, v11, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    .line 261
    iget-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->slow_frames:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v6

    invoke-static {v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->createSlowImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    .line 255
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 247
    .end local v11    # "width":I
    .end local v10    # "num_cells":I
    .end local v6    # "cell_idx":I
    :cond_0
    iget v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->x_tile_count:I

    div-int v0, v7, v0

    move v11, v0

    goto :goto_0

    .line 264
    .restart local v10    # "num_cells":I
    .restart local v11    # "width":I
    :cond_1
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames:[Landroid/graphics/Bitmap;

    .line 265
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->slow_frames:[Landroid/graphics/Bitmap;

    .line 266
    iget-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames:[Landroid/graphics/Bitmap;

    aput-object v9, v0, v2

    .line 267
    iget-object v0, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->slow_frames:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->createSlowImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v2

    .line 269
    :cond_2
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    iget v1, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames_per_dir:I

    iget-object v2, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->frames:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->slow_frames:[Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->draw_shift_x:I

    iget v5, p0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->draw_shift_y:I

    invoke-direct/range {v0 .. v5}, Lcom/magicwach/rdefense/EnemyData$EnemyImage;-><init>(I[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;II)V

    return-object v0
.end method
