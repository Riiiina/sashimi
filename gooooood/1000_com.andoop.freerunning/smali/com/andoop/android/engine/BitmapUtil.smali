.class public Lcom/andoop/android/engine/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static assetPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    sput-object v0, Lcom/andoop/android/engine/BitmapUtil;->assetPath:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromAsset(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/andoop/android/engine/BitmapUtil;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/andoop/android/engine/BitmapUtil;->assetPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 44
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createFromResource(Landroid/app/Activity;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "resId"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static generateStringBitmap(Ljava/lang/String;IILandroid/graphics/Paint;Landroid/graphics/Typeface;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 58
    if-nez p4, :cond_0

    .line 59
    sget-object p4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 61
    :cond_0
    if-nez p3, :cond_1

    .line 62
    new-instance p3, Landroid/graphics/Paint;

    .end local p3    # "paint":Landroid/graphics/Paint;
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .restart local p3    # "paint":Landroid/graphics/Paint;
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .local v3, "r":Landroid/graphics/Rect;
    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p3, p0, v5, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 68
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v5, p1, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    move v4, v5

    .line 69
    .local v4, "width":I
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v5, p2, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    move v2, v5

    .line 71
    .local v2, "height":I
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    int-to-float v6, v2

    invoke-virtual {v1, p0, v5, v6, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    return-object v0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_2
    move v4, p1

    .line 68
    goto :goto_0

    .restart local v4    # "width":I
    :cond_3
    move v2, p2

    .line 69
    goto :goto_1
.end method

.method public static setAssetPath(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 37
    :cond_0
    sput-object p0, Lcom/andoop/android/engine/BitmapUtil;->assetPath:Ljava/lang/String;

    .line 38
    return-void
.end method
