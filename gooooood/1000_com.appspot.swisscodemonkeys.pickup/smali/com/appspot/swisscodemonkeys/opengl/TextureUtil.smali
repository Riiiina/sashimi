.class public Lcom/appspot/swisscodemonkeys/opengl/TextureUtil;
.super Ljava/lang/Object;
.source "TextureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;
    }
.end annotation


# static fields
.field private static final MAX_DIMENSION:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static bitmapFromResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 137
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 138
    .local v2, "sBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 139
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 142
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :goto_0
    return-object v0

    .line 140
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "sBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    .line 142
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :goto_1
    throw v3

    .line 143
    :catch_0
    move-exception v4

    goto :goto_1

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "sBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static createStretchedTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;
    .locals 12
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxDimension"    # I

    .prologue
    const/16 v11, 0xde1

    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 95
    new-instance v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;

    invoke-direct {v4}, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;-><init>()V

    .line 96
    .local v4, "tex":Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->ratio:F

    .line 97
    iget v6, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->ratio:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1

    .line 98
    iget v6, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->ratio:F

    iput v6, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->width:F

    .line 99
    iput v9, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->height:F

    .line 104
    :goto_0
    invoke-static {p1, p2}, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil;->makePower2Bitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .local v1, "bitmap2":Landroid/graphics/Bitmap;
    new-array v5, v10, [I

    .line 106
    .local v5, "texture":[I
    invoke-interface {p0, v10, v5, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 107
    aget v6, v5, v8

    iput v6, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->textureId:I

    .line 109
    iget v6, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->textureId:I

    invoke-static {p0, v6}, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil;->setupTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 110
    invoke-static {v11, v8, v1, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 111
    const/4 v6, 0x4

    new-array v3, v6, [I

    .line 112
    .local v3, "mCropWorkspace":[I
    aput v8, v3, v8

    .line 113
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    aput v6, v3, v10

    .line 114
    const/4 v6, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    aput v7, v3, v6

    .line 115
    const/4 v6, 0x3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    neg-int v7, v7

    aput v7, v3, v6

    .line 117
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v6, v0

    const v7, 0x8b9d

    invoke-interface {v6, v11, v7, v3, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 120
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v2

    .line 121
    .local v2, "error":I
    if-eqz v2, :cond_0

    .line 122
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Texture Load GLError: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    return-object v4

    .line 101
    .end local v1    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v2    # "error":I
    .end local v3    # "mCropWorkspace":[I
    .end local v5    # "texture":[I
    :cond_1
    iput v9, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->width:F

    .line 102
    iget v6, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->ratio:F

    div-float v6, v9, v6

    iput v6, v4, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->height:F

    goto :goto_0
.end method

.method public static createTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "resourceId"    # I

    .prologue
    .line 129
    invoke-static {p0, p2}, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil;->bitmapFromResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v1, 0x400

    invoke-static {p1, v0, v1}, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil;->createStretchedTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;

    move-result-object v1

    return-object v1
.end method

.method public static freeTexture(Ljavax/microedition/khronos/opengles/GL10;Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;)V
    .locals 4
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "tex"    # Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    iget v1, p1, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->textureId:I

    if-eqz v1, :cond_0

    .line 51
    new-array v0, v3, [I

    iget v1, p1, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->textureId:I

    aput v1, v0, v2

    .line 52
    .local v0, "texture":[I
    invoke-interface {p0, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 53
    iput v2, p1, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->textureId:I

    .line 55
    .end local v0    # "texture":[I
    :cond_0
    return-void
.end method

.method public static freeTextures(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/List;)V
    .locals 7
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/opengles/GL10;",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "toBeDeleted":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;>;"
    const/4 v6, 0x0

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 60
    .local v3, "texture":[I
    const/4 v0, 0x0

    .line 61
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    invoke-interface {p0, v0, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 69
    .end local v0    # "count":I
    .end local v3    # "texture":[I
    :cond_1
    return-void

    .line 61
    .restart local v0    # "count":I
    .restart local v3    # "texture":[I
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;

    .line 62
    .local v2, "t":Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;
    iget v5, v2, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->textureId:I

    if-eqz v5, :cond_0

    .line 63
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    iget v5, v2, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->textureId:I

    aput v5, v3, v0

    .line 64
    iput v6, v2, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil$Texture;->textureId:I

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0
.end method

.method private static isPower2(I)Z
    .locals 2
    .param p0, "x"    # I

    .prologue
    const/4 v1, 0x1

    .line 91
    sub-int v0, p0, v1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makePower2Bitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxDimension"    # I

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v7, 0x1

    .line 73
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v3, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 74
    :cond_0
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 75
    .local v1, "s":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 75
    invoke-static {p0, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 80
    .end local v1    # "s":F
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil;->isPower2(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/opengl/TextureUtil;->isPower2(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 81
    :cond_2
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "not power 2 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 83
    .local v2, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 84
    .local v0, "h":I
    shl-int v3, v7, v2

    shl-int v4, v7, v0

    invoke-static {p0, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 85
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "now  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "h":I
    .end local v2    # "w":I
    :cond_3
    return-object p0
.end method

.method public static setupTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 4
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "textureId"    # I

    .prologue
    const v3, 0x47012f00    # 33071.0f

    const/16 v2, 0xde1

    .line 38
    invoke-interface {p0, v2, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 40
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 41
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 43
    const/16 v0, 0x2802

    invoke-interface {p0, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 44
    const/16 v0, 0x2803

    invoke-interface {p0, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 46
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800    # 7681.0f

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 47
    return-void
.end method
