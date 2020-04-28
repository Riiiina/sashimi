.class public Lcom/appspot/swisscodemonkeys/image/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;,
        Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;
    }
.end annotation


# static fields
.field public static final CROP:I = 0x66

.field public static final CROP_ERROR:Ljava/lang/String; = "Error cropping image, do you have an SD card with enough free space installed?"

.field public static final GET_IMAGE:I = 0x64

.field private static final IMAGE_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final IMAGE_FORMAT_SUFFIX:Ljava/lang/String; = ".jpg"

.field public static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final IMAGE_QUALITY:I = 0x5f

.field public static final INTENT_PARAM_APP_NAME:Ljava/lang/String; = "appName"

.field public static final TAKE_PHOTO:I = 0x65


# instance fields
.field protected final context:Landroid/content/Context;

.field private cropImage:Landroid/net/Uri;

.field format:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->IMAGE_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->cropImage:Landroid/net/Uri;

    .line 190
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd kk.mm.ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->format:Ljava/text/DateFormat;

    .line 84
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public static configureOptions(Landroid/graphics/BitmapFactory$Options;I)V
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "maxDimension"    # I

    .prologue
    const/4 v2, 0x1

    .line 281
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    div-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 282
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v2

    div-int/2addr v1, p1

    .line 281
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 284
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/appspot/swisscodemonkeys/image/ImageUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "sdk":I
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 76
    new-instance v1, Lcom/appspot/swisscodemonkeys/image/ImageUtil2;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil2;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "sdk":I
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v1

    .line 80
    :cond_0
    new-instance v1, Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getUriFromIntentParameters(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 265
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 266
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 267
    const-string v2, "data"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "uri":Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 271
    .restart local v1    # "uri":Landroid/net/Uri;
    const-string v2, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "uri":Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 275
    .restart local v1    # "uri":Landroid/net/Uri;
    const-string v2, "extra"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_2
    return-object v1
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 348
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 349
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 350
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 351
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v10

    .line 353
    .local v10, "mutable":Z
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 354
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 355
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 356
    .local v8, "b3":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    .local v9, "c":Landroid/graphics/Canvas;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 358
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 359
    move-object v7, v8

    .line 361
    .end local v8    # "b3":Landroid/graphics/Bitmap;
    .end local v9    # "c":Landroid/graphics/Canvas;
    :cond_0
    if-eq p0, v7, :cond_1

    .line 362
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    move-object p0, v7

    .line 369
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    .end local v10    # "mutable":Z
    :cond_1
    :goto_0
    return-object p0

    .line 365
    .restart local v5    # "m":Landroid/graphics/Matrix;
    .restart local v10    # "mutable":Z
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 441
    new-instance v0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .local v0, "client":Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;
    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 443
    .local v1, "conn":Landroid/media/MediaScannerConnection;
    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->setMediaScannerConnection(Landroid/media/MediaScannerConnection;)V

    .line 444
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 445
    return-void
.end method


# virtual methods
.method public createDefaultValues(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 448
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 449
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v1, "description"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v1, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 453
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    if-eqz p3, :cond_0

    .line 455
    const-string v1, "latitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 456
    const-string v1, "longitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 458
    :cond_0
    return-object v0
.end method

.method public createFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "imageDirectory"    # Ljava/lang/String;
    .param p2, "filePrefix"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "dir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->createFilenameWithoutPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "name":Ljava/lang/String;
    return-object v1
.end method

.method public createFilenameDefaultFolder(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "filePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 211
    const-string v0, "Camera Pro"

    invoke-virtual {p0, p1, v0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->createFilenameDefaultFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createFilenameDefaultFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "_display_name"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "description"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v3, "title"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "bucket_display_name"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v3, "_data"

    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 207
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    return-object v3
.end method

.method public createFilenameWithoutPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->format:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createLoadImageClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$1;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$1;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil;)V

    return-object v0
.end method

.method public createTakePhotoClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$2;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$2;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil;)V

    return-object v0
.end method

.method public cropBitmap(Landroid/net/Uri;)V
    .locals 4
    .param p1, "image"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    const-string v2, "com.appspot.swisscodemonkeys.pickup.crop.CropImage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    const-string v1, "noFaceDetection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string v1, "output"

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->getProfileImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    iget-object p0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/image/ImageUtil;
    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    return-void
.end method

.method protected fixRotation(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 320
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, "scheme":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "orientation"

    aput-object v0, v2, v10

    .line 323
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 324
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v6, p1

    .line 335
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 327
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 329
    .local v8, "degrees":I
    if-eqz v8, :cond_2

    .line 330
    invoke-static {p1, v8}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "degrees":I
    :cond_2
    :goto_1
    move-object v6, p1

    .line 335
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 332
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->fixRotationFile(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1
.end method

.method protected fixRotationFile(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 340
    return-object p1
.end method

.method public getBitmapFromIntentParameters(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->getImageFromIntentParameters(Landroid/content/Intent;)Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;

    move-result-object v0

    .line 236
    .local v0, "info":Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImageFromIntentParameters(Landroid/content/Intent;)Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 242
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 243
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 244
    .local v2, "filename":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 246
    if-eqz v1, :cond_1

    const-string v4, "bitmap"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "bitmap"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 256
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 257
    const/4 v4, 0x0

    .line 260
    :goto_1
    return-object v4

    .line 249
    :cond_1
    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->getUriFromIntentParameters(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    .line 250
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    const-string v4, "loading"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/16 v4, 0x400

    invoke-virtual {p0, v3, v4}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->loadBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 260
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v4, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;

    invoke-direct {v4, v0, v2, p1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public getProfileImageUri()Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->cropImage:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 153
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    const-string v2, "Profile Icon"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "bucket_id"

    const-string v2, "UserProfileIcon"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "bucket_display_name"

    .line 157
    const-string v2, "UserProfileIcons"

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "isprivate"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 161
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 160
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->cropImage:Landroid/net/Uri;

    .line 163
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->cropImage:Landroid/net/Uri;

    return-object v1
.end method

.method public loadBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxDimension"    # I

    .prologue
    const/4 v5, 0x0

    .line 287
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 288
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 289
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 290
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 291
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 297
    :try_start_0
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 298
    .local v2, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 299
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 300
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 301
    invoke-static {v3, p2}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->configureOptions(Landroid/graphics/BitmapFactory$Options;I)V

    .line 302
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 304
    invoke-virtual {p0, v0, p1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->fixRotation(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .end local v2    # "input":Ljava/io/InputStream;
    :cond_0
    :goto_0
    move-object v4, v0

    .line 316
    :goto_1
    return-object v4

    .line 305
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 306
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 309
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 310
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 311
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 312
    const/16 v4, 0x100

    if-le p2, v4, :cond_0

    .line 313
    div-int/lit8 v4, p2, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->loadBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1
.end method

.method public loadImageActivity()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object p0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/image/ImageUtil;
    check-cast p0, Landroid/app/Activity;

    const-string v1, "Get a Picture"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 91
    return-void
.end method

.method public saveBitmapAndCrop(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    new-instance v0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;

    invoke-direct {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil;Landroid/graphics/Bitmap;)V

    .line 148
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;->start()V

    .line 149
    return-void
.end method

.method public saveImage(Landroid/graphics/Bitmap;ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "quality"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 473
    :try_start_0
    const-string v7, "Image"

    const/4 v8, 0x0

    invoke-virtual {p0, p3, v7, v8}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->createDefaultValues(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v6

    .line 474
    .local v6, "values":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "Image"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 474
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "fileName":Ljava/lang/String;
    const-string v7, "_data"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 479
    .local v4, "resolve":Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 478
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 480
    .local v5, "uri":Landroid/net/Uri;
    move-object v2, v5

    .line 481
    .local v2, "imageUri":Landroid/net/Uri;
    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 482
    .local v3, "outstream":Ljava/io/OutputStream;
    sget-object v7, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->IMAGE_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v7, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 483
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 484
    const-string v7, "image/jpeg"

    invoke-virtual {p0, v2, v7}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->scanUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 485
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 491
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "imageUri":Landroid/net/Uri;
    .end local v3    # "outstream":Ljava/io/OutputStream;
    .end local v4    # "resolve":Landroid/content/ContentResolver;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v7

    .line 486
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 487
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    move-object v7, v11

    .line 491
    goto :goto_0

    .line 488
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public saveProfileBitmap(Landroid/graphics/Bitmap;Lcmn/Callable1;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcmn/Callable1",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "urlWhenFinished":Lcmn/Callable1;, "Lcmn/Callable1<Ljava/lang/String;>;"
    new-instance v0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil;Landroid/graphics/Bitmap;Lcmn/Callable1;)V

    .line 127
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;->start()V

    .line 128
    return-void
.end method

.method protected saveProfileImage(Landroid/graphics/Bitmap;Lcmn/Callable1;)V
    .locals 5
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcmn/Callable1",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p2, "urlWhenFinished":Lcmn/Callable1;, "Lcmn/Callable1<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->getProfileImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, "imageUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 221
    .local v2, "outstream":Ljava/io/OutputStream;
    sget-object v3, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->IMAGE_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 222
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 224
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcmn/Callable1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .end local v1    # "imageUri":Landroid/net/Uri;
    .end local v2    # "outstream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 227
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Lcmn/Callable1;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public scanUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 432
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 433
    .local v0, "resolve":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v8

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 435
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 436
    .local v7, "name":Ljava/lang/String;
    invoke-direct {p0, v7, p2}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-object v7
.end method

.method public takePhotoActivity()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    iget-object p0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/image/ImageUtil;
    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    return-void
.end method
