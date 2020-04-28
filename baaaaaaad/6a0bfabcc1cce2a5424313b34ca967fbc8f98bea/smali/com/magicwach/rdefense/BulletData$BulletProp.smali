.class Lcom/magicwach/rdefense/BulletData$BulletProp;
.super Ljava/lang/Object;
.source "BulletData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/BulletData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BulletProp"
.end annotation


# instance fields
.field color:I

.field directions:I

.field images:[Landroid/graphics/Bitmap;

.field size:I

.field speed:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magicwach/rdefense/BulletData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/magicwach/rdefense/BulletData$1;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirectionImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 109
    iget v1, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->directions:I

    mul-int/2addr v1, p1

    div-int/lit16 v0, v1, 0x168

    .line 110
    .local v0, "direction":I
    iget-object v1, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->images:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public setImage(Landroid/app/Activity;I)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, "img":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 90
    .local v1, "fs_width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    .line 91
    iget v4, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    div-int v3, v1, v4

    .line 92
    .local v3, "num_cells":I
    iput v3, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->directions:I

    .line 93
    if-le v3, v5, :cond_0

    .line 94
    new-array v4, v3, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->images:[Landroid/graphics/Bitmap;

    .line 95
    const/4 v0, 0x0

    .local v0, "cell_idx":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 96
    iget-object v4, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->images:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    iget v7, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    invoke-static {v2, v5, v8, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "cell_idx":I
    :cond_0
    new-array v4, v5, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->images:[Landroid/graphics/Bitmap;

    .line 104
    iget-object v4, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->images:[Landroid/graphics/Bitmap;

    aput-object v2, v4, v8

    .line 105
    iput v5, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->directions:I

    .line 107
    :cond_1
    return-void
.end method

.method public setSpeed(I)V
    .locals 1
    .param p1, "grid_percent"    # I

    .prologue
    .line 85
    mul-int/lit8 v0, p1, 0x28

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/magicwach/rdefense/BulletData$BulletProp;->speed:I

    .line 86
    return-void
.end method
