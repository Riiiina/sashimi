.class Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;
.super Ljava/lang/Object;
.source "ExplosionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/ExplosionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExplosionProp"
.end annotation


# instance fields
.field public frames:I

.field public images:[Landroid/graphics/Bitmap;

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magicwach/rdefense/ExplosionData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/magicwach/rdefense/ExplosionData$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;-><init>()V

    return-void
.end method


# virtual methods
.method public setImage(Landroid/app/Activity;I)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 33
    .local v2, "img":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 34
    .local v1, "fs_width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->width:I

    .line 35
    iget v4, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->width:I

    div-int v3, v1, v4

    .line 36
    .local v3, "num_cells":I
    iput v3, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->frames:I

    .line 37
    if-le v3, v5, :cond_0

    .line 38
    new-array v4, v3, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->images:[Landroid/graphics/Bitmap;

    .line 39
    const/4 v0, 0x0

    .local v0, "cell_idx":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 40
    iget-object v4, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->images:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->width:I

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->width:I

    iget v7, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->width:I

    invoke-static {v2, v5, v8, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "cell_idx":I
    :cond_0
    new-array v4, v5, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->images:[Landroid/graphics/Bitmap;

    .line 44
    iget-object v4, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->images:[Landroid/graphics/Bitmap;

    aput-object v2, v4, v8

    .line 45
    iput v5, p0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->frames:I

    .line 47
    :cond_1
    return-void
.end method
