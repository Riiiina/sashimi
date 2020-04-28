.class public Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/image/BitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapCanvas"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final canvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    .line 47
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->canvas:Landroid/graphics/Canvas;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 69
    :goto_0
    return v2

    .line 59
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;

    move-object v1, v0

    .line 64
    .local v1, "other":Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 65
    iget-object v2, v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    move v2, v4

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 68
    goto :goto_0

    :cond_4
    move v2, v5

    .line 69
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool$BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
