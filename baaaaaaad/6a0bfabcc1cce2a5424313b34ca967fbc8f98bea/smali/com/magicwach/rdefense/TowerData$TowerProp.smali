.class Lcom/magicwach/rdefense/TowerData$TowerProp;
.super Ljava/lang/Object;
.source "TowerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/TowerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TowerProp"
.end annotation


# instance fields
.field public animated:Z

.field public attack_radius:I

.field public attack_radius_sq:I

.field public blocking:Z

.field public cost:I

.field public directions:I

.field public downgrade_type:I

.field public gun_radius:I

.field public images:[Landroid/graphics/Bitmap;

.field public label:Ljava/lang/String;

.field public power:I

.field public shot_delay:I

.field public shot_type:I

.field public tower_height:I

.field public upgrade_strings:[Ljava/lang/String;

.field public upgrade_type:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    .line 483
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    aput v2, v1, v0

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 488
    iput v2, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 489
    const/16 v1, 0xf

    iput v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->tower_height:I

    .line 490
    const/16 v1, 0x19

    iput v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 491
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->animated:Z

    .line 492
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->blocking:Z

    .line 493
    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 494
    return-void
.end method


# virtual methods
.method public getDirectionImage(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "angle"    # I

    .prologue
    .line 526
    iget v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->directions:I

    if-nez v1, :cond_0

    .line 527
    const/4 v1, 0x0

    .line 530
    :goto_0
    return-object v1

    .line 529
    :cond_0
    iget v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->directions:I

    mul-int/2addr v1, p1

    div-int/lit16 v0, v1, 0x168

    .line 530
    .local v0, "direction":I
    iget-object v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->images:[Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public setAttackRadius(I)V
    .locals 2
    .param p1, "decigrids"    # I

    .prologue
    .line 496
    mul-int/lit8 v0, p1, 0x28

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->attack_radius:I

    .line 497
    iget v0, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->attack_radius:I

    iget v1, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->attack_radius:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->attack_radius_sq:I

    .line 498
    return-void
.end method

.method public setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V
    .locals 1
    .param p1, "ti"    # Lcom/magicwach/rdefense/TowerData$TowerImage;

    .prologue
    .line 500
    iget v0, p1, Lcom/magicwach/rdefense/TowerData$TowerImage;->directions:I

    iput v0, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->directions:I

    .line 501
    iget-object v0, p1, Lcom/magicwach/rdefense/TowerData$TowerImage;->images:[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->images:[Landroid/graphics/Bitmap;

    .line 502
    return-void
.end method

.method public setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 504
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 505
    .local v2, "img":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 506
    .local v1, "fs_width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 507
    .local v4, "width":I
    div-int v3, v1, v4

    .line 508
    .local v3, "num_cells":I
    sub-int v5, v3, v6

    iput v5, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->directions:I

    .line 509
    if-le v3, v6, :cond_0

    .line 510
    new-array v5, v3, [Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->images:[Landroid/graphics/Bitmap;

    .line 511
    const/4 v0, 0x0

    .local v0, "cell_idx":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 512
    iget-object v5, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->images:[Landroid/graphics/Bitmap;

    mul-int v6, v0, v4

    invoke-static {v2, v6, v7, v4, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v0

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "cell_idx":I
    :cond_0
    new-array v5, v6, [Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->images:[Landroid/graphics/Bitmap;

    .line 520
    iget-object v5, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->images:[Landroid/graphics/Bitmap;

    aput-object v2, v5, v7

    .line 521
    iput v7, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->directions:I

    .line 523
    :cond_1
    new-instance v5, Lcom/magicwach/rdefense/TowerData$TowerImage;

    iget-object v6, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->images:[Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/magicwach/rdefense/TowerData$TowerProp;->directions:I

    invoke-direct {v5, v6, v7}, Lcom/magicwach/rdefense/TowerData$TowerImage;-><init>([Landroid/graphics/Bitmap;I)V

    return-object v5
.end method
