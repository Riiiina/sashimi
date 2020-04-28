.class public Lcom/appspot/swisscodemonkeys/pickup/crop/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "db.Util"

.field public static final UNCONSTRAINED:I = -0x1

.field private static sNullOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 408
    if-nez p0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 411
    :cond_0
    return-void
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "c"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 294
    if-nez p0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 296
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 285
    if-nez p0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 287
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 85
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 86
    .local v4, "w":D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .line 88
    .local v0, "h":D
    if-ne p2, v10, :cond_0

    move v2, v11

    .line 90
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v10, :cond_1

    const/16 v6, 0x80

    move v3, v6

    .line 94
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_2

    move v6, v2

    .line 105
    :goto_2
    return v6

    .line 89
    .end local v2    # "lowerBound":I
    .end local v3    # "upperBound":I
    :cond_0
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v2, v6

    goto :goto_0

    .line 91
    .restart local v2    # "lowerBound":I
    :cond_1
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 92
    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 91
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    move v3, v6

    goto :goto_1

    .line 99
    .restart local v3    # "upperBound":I
    :cond_2
    if-ne p2, v10, :cond_3

    .line 100
    if-ne p1, v10, :cond_3

    move v6, v11

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    if-ne p1, v10, :cond_4

    move v6, v2

    .line 103
    goto :goto_2

    :cond_4
    move v6, v3

    .line 105
    goto :goto_2
.end method

.method public static createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 489
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 491
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    return-object v0
.end method

.method public static debugWhere(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " --- stack trace begins: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 387
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x3

    .local v1, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " --- stack trace ends."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 388
    :cond_0
    aget-object v4, v0, v1

    .line 389
    .local v4, "st":Ljava/lang/StackTraceElement;
    const-string v5, "    at %s.%s(%s:%s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 390
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 391
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 389
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 415
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static extractMiniThumb(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->extractMiniThumb(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractMiniThumb(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "recycle"    # Z

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v3, 0x0

    .line 220
    :goto_0
    return-object v3

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 209
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 213
    .local v2, "scale":F
    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 214
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 215
    const/4 v3, 0x0

    invoke-static {v0, p0, p1, p2, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 217
    .local v1, "miniThumbnail":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    if-eq v1, p0, :cond_1

    .line 218
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object v3, v1

    .line 220
    goto :goto_0

    .line 211
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v1    # "miniThumbnail":Landroid/graphics/Bitmap;
    .end local v2    # "scale":F
    :cond_2
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .restart local v2    # "scale":F
    goto :goto_1
.end method

.method public static declared-synchronized getNullOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 398
    const-class v0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->sNullOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    .line 399
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$1;

    invoke-direct {v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$1;-><init>()V

    sput-object v1, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->sNullOnClickListener:Landroid/view/View$OnClickListener;

    .line 404
    :cond_0
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->sNullOnClickListener:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "s":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 281
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 277
    :cond_0
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 278
    goto :goto_1

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 377
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 379
    :goto_0
    return-object v1

    .line 378
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 379
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 52
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 53
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 54
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 58
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 57
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 59
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    move-object p0, v7

    .line 67
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 63
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static startBackgroundJob(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 3
    .param p0, "activity"    # Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "job"    # Ljava/lang/Runnable;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 474
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    invoke-static {p0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 475
    .local v0, "dialog":Landroid/app/ProgressDialog;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 476
    return-void
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "scaleUp"    # Z

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    .line 115
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    .line 116
    .local v1, "deltaY":I
    if-nez p4, :cond_1

    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 124
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 123
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 125
    .local p0, "b2":Landroid/graphics/Bitmap;
    new-instance p4, Landroid/graphics/Canvas;

    .end local p4    # "scaleUp":Z
    invoke-direct {p4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local p4, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    div-int/lit8 v0, v0, 0x2

    .end local v0    # "deltaX":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 128
    .local v0, "deltaXHalf":I
    const/4 v2, 0x0

    div-int/lit8 v1, v1, 0x2

    .end local v1    # "deltaY":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 129
    .local v1, "deltaYHalf":I
    new-instance v3, Landroid/graphics/Rect;

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v0

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 129
    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    .local v3, "src":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .end local v0    # "deltaXHalf":I
    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    .line 135
    .local v1, "dstX":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    .line 136
    .local v2, "dstY":I
    new-instance v0, Landroid/graphics/Rect;

    .line 139
    sub-int/2addr p2, v1

    .line 140
    sub-int/2addr p3, v2

    .line 136
    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    .end local p2    # "targetWidth":I
    .end local p3    # "targetHeight":I
    .local v0, "dst":Landroid/graphics/Rect;
    const/4 p2, 0x0

    invoke-virtual {p4, p1, v3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 189
    .end local v0    # "dst":Landroid/graphics/Rect;
    .end local v1    # "dstX":I
    .end local v2    # "dstY":I
    .end local v3    # "src":Landroid/graphics/Rect;
    .end local p4    # "c":Landroid/graphics/Canvas;
    :goto_0
    return-object p0

    .line 144
    .local v0, "deltaX":I
    .local v1, "deltaY":I
    .local p0, "scaler":Landroid/graphics/Matrix;
    .restart local p2    # "targetWidth":I
    .restart local p3    # "targetHeight":I
    .local p4, "scaleUp":Z
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    .end local p4    # "scaleUp":Z
    int-to-float v1, p4

    .line 145
    .local v1, "bitmapWidthF":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float v0, p4

    .line 147
    .local v0, "bitmapHeightF":F
    div-float p4, v1, v0

    .line 148
    .local p4, "bitmapAspect":F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 150
    .local v2, "viewAspect":F
    cmpl-float p4, p4, v2

    if-lez p4, :cond_5

    .line 151
    .end local p4    # "bitmapAspect":F
    int-to-float p4, p3

    div-float/2addr p4, v0

    .line 152
    .local p4, "scale":F
    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_2

    .end local v0    # "bitmapHeightF":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_4

    .line 153
    :cond_2
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 167
    :goto_1
    if-eqz p0, :cond_8

    .line 169
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v1    # "bitmapWidthF":F
    .end local v2    # "viewAspect":F
    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p0

    .line 169
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 175
    .local p0, "b1":Landroid/graphics/Bitmap;
    :goto_2
    const/4 p4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local p4    # "scale":F
    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 176
    .local p4, "dx1":I
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 180
    .local v0, "dy1":I
    div-int/lit8 p4, p4, 0x2

    .line 181
    .end local p4    # "dx1":I
    div-int/lit8 v0, v0, 0x2

    .line 178
    .end local v0    # "dy1":I
    invoke-static {p0, p4, v0, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 185
    .local p2, "b2":Landroid/graphics/Bitmap;
    if-eq p0, p1, :cond_3

    .line 186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object p0, p2

    .line 189
    .end local p2    # "b2":Landroid/graphics/Bitmap;
    .local p0, "b2":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 155
    .restart local v1    # "bitmapWidthF":F
    .restart local v2    # "viewAspect":F
    .local p0, "scaler":Landroid/graphics/Matrix;
    .local p2, "targetWidth":I
    .local p4, "scale":F
    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    .line 158
    .end local p4    # "scale":F
    .local v0, "bitmapHeightF":F
    :cond_5
    int-to-float p4, p2

    div-float/2addr p4, v1

    .line 159
    .restart local p4    # "scale":F
    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_6

    .end local v0    # "bitmapHeightF":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    .line 160
    :cond_6
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 162
    :cond_7
    const/4 p0, 0x0

    goto :goto_1

    .line 172
    :cond_8
    move-object p0, p1

    .local p0, "b1":Landroid/graphics/Bitmap;
    goto :goto_2
.end method
