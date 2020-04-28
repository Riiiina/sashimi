.class public Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;
.super Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;
.source "CropImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

.field private mDoFaceDetection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field mWaitingToPick:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;-><init>()V

    .line 58
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 64
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mDoFaceDetection:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCircleCrop:Z

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mHandler:Landroid/os/Handler;

    .line 72
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mScaleUp:Z

    .line 331
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mImageView:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$3(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->onRotateClicked()V

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private onRotateClicked()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mImageView:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->rotate(Landroid/graphics/Bitmap;)V

    .line 192
    return-void
.end method

.method private onSaveClicked()V
    .locals 25

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaving:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCrop:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 205
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaving:Z

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCrop:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v18

    .line 209
    .local v18, "r":Landroid/graphics/Rect;
    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 210
    .local v20, "width":I
    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 215
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCircleCrop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 214
    :goto_1
    move/from16 v0, v20

    move v1, v13

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 217
    .local v8, "croppedImage":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 218
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    move v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 219
    .local v9, "dstRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mImageView:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->rotation:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object v3, v9

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCircleCrop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 229
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 230
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 231
    .local v17, "p":Landroid/graphics/Path;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move v0, v13

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 232
    sget-object v21, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, v6

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 233
    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v6

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 237
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v17    # "p":Landroid/graphics/Path;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputX:I

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputY:I

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 238
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mScale:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 240
    move-object/from16 v16, v8

    .line 241
    .local v16, "old":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    .local v14, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputY:I

    move/from16 v22, v0

    .line 243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mScaleUp:Z

    move/from16 v23, v0

    .line 242
    move-object v0, v14

    move-object v1, v8

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 244
    move-object/from16 v0, v16

    move-object v1, v8

    if-eq v0, v1, :cond_3

    .line 245
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    .end local v14    # "matrix":Landroid/graphics/Matrix;
    .end local v16    # "old":Landroid/graphics/Bitmap;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 283
    .local v15, "myExtras":Landroid/os/Bundle;
    if-eqz v15, :cond_7

    .line 284
    const-string v21, "data"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    if-nez v21, :cond_4

    const-string v21, "return-data"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 285
    :cond_4
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v12, "extras":Landroid/os/Bundle;
    const-string v21, "data"

    move-object v0, v12

    move-object/from16 v1, v21

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 287
    const/16 v21, -0x1

    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    const-string v23, "inline-data"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->finish()V

    goto/16 :goto_0

    .line 215
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "croppedImage":Landroid/graphics/Bitmap;
    .end local v9    # "dstRect":Landroid/graphics/Rect;
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v15    # "myExtras":Landroid/os/Bundle;
    :cond_5
    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    .line 257
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "croppedImage":Landroid/graphics/Bitmap;
    .restart local v9    # "dstRect":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputY:I

    move/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 258
    .local v5, "b":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    .end local v7    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 260
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCrop:Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/appspot/swisscodemonkeys/pickup/crop/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 261
    .local v19, "srcRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "dstRect":Landroid/graphics/Rect;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputY:I

    move/from16 v24, v0

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 263
    .restart local v9    # "dstRect":Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v10, v21, 0x2

    .line 264
    .local v10, "dx":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v11, v21, 0x2

    .line 267
    .local v11, "dy":I
    const/16 v21, 0x0

    move/from16 v0, v21

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move v1, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 270
    const/16 v21, 0x0

    move v0, v10

    neg-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    move v0, v11

    neg-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object v3, v9

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 276
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    move-object v8, v5

    goto/16 :goto_2

    .line 290
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v19    # "srcRect":Landroid/graphics/Rect;
    .restart local v15    # "myExtras":Landroid/os/Bundle;
    :cond_7
    move-object v5, v8

    .line 291
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    const/16 v21, 0x0

    const-string v22, "Saving picture\u2026"

    new-instance v23, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$6;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;Landroid/graphics/Bitmap;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->startBackgroundJob(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "croppedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 300
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 301
    const/4 v2, 0x0

    .line 303
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_0

    .line 305
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_0
    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 313
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 316
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->finish()V

    .line 318
    return-void

    .line 307
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 309
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot open file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 310
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 311
    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 312
    throw v3
.end method

.method private startFaceDetection()V
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mImageView:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 161
    const/4 v0, 0x0

    const-string v1, "Please wait\u2026"

    new-instance v2, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;

    invoke-direct {v2, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$5;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V

    .line 187
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mHandler:Landroid/os/Handler;

    .line 161
    invoke-static {p0, v0, v1, v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util;->startBackgroundJob(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->requestWindowFeature(I)Z

    .line 91
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->setContentView(I)V

    .line 93
    const v3, 0x7f0b0036

    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    iput-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mImageView:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImageView;

    .line 97
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 101
    const-string v3, "circleCrop"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    iput-boolean v6, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mCircleCrop:Z

    .line 103
    iput v6, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mAspectX:I

    .line 104
    iput v6, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mAspectY:I

    .line 106
    :cond_0
    const-string v3, "output"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 107
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 108
    const-string v3, "outputFormat"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "outputFormatString":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 110
    invoke-static {v2}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 114
    .end local v2    # "outputFormatString":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->create(Landroid/content/Context;)Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v3, v4, v5}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->loadBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 115
    const-string v3, "aspectX"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mAspectX:I

    .line 116
    const-string v3, "aspectY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mAspectY:I

    .line 117
    const-string v3, "outputX"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputX:I

    .line 118
    const-string v3, "outputY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mOutputY:I

    .line 119
    const-string v3, "scale"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mScale:Z

    .line 120
    const-string v3, "scaleUpIfNeeded"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mScaleUp:Z

    .line 121
    const-string v3, "noFaceDetection"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    const-string v3, "noFaceDetection"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 121
    :goto_0
    iput-boolean v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mDoFaceDetection:Z

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 126
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->finish()V

    .line 152
    :goto_1
    return-void

    :cond_3
    move v3, v6

    .line 122
    goto :goto_0

    :cond_4
    move v3, v6

    goto :goto_0

    .line 133
    :cond_5
    const v3, 0x7f0b0039

    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$2;

    invoke-direct {v4, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v3, 0x7f0b0037

    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$3;

    invoke-direct {v4, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$3;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v3, 0x7f0b0038

    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$4;

    invoke-direct {v4, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$4;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->startFaceDetection()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->onDestroy()V

    .line 329
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->onPause()V

    .line 324
    return-void
.end method
