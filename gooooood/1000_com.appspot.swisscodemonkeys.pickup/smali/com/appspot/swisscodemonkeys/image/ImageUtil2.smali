.class public Lcom/appspot/swisscodemonkeys/image/ImageUtil2;
.super Lcom/appspot/swisscodemonkeys/image/ImageUtil;
.source "ImageUtil2.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public static exifOrientationToDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 40
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 41
    const/16 v0, 0x5a

    .line 47
    :goto_0
    return v0

    .line 42
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 43
    const/16 v0, 0xb4

    goto :goto_0

    .line 44
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 45
    const/16 v0, 0x10e

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected fixRotationFile(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 26
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 28
    .local v2, "exif":Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x1

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/image/ImageUtil2;->exifOrientationToDegrees(I)I

    move-result v0

    .line 29
    .local v0, "degrees":I
    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1, v0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil2;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 36
    .end local v0    # "degrees":I
    .end local v2    # "exif":Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    return-object p1

    .line 32
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 33
    .local v1, "e":Ljava/io/IOException;
    const-string v3, ""

    const-string v4, "Error reading Exif information, probably not a jpeg."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
