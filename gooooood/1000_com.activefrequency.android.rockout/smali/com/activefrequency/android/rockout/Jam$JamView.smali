.class Lcom/activefrequency/android/rockout/Jam$JamView;
.super Landroid/view/View;
.source "Jam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activefrequency/android/rockout/Jam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JamView"
.end annotation


# static fields
.field private static final FRET_COLOR:I


# instance fields
.field private DY:I

.field private H:I

.field private W:I

.field public chord_1_text:Ljava/lang/String;

.field public chord_2_text:Ljava/lang/String;

.field public chord_3_text:Ljava/lang/String;

.field private mBackgroundImage:Landroid/graphics/Bitmap;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const-string v0, "#161616"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/activefrequency/android/rockout/Jam$JamView;->FRET_COLOR:I

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/activefrequency/android/rockout/Song;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "song"    # Lcom/activefrequency/android/rockout/Song;

    .prologue
    const/4 v2, 0x1

    .line 217
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 210
    const/16 v0, 0x1e

    iput v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->DY:I

    .line 211
    const/16 v0, 0xc8

    iput v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->W:I

    .line 212
    const/16 v0, 0x258

    iput v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->H:I

    .line 220
    iget-object v0, p2, Lcom/activefrequency/android/rockout/Song;->chord_1_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->chord_1_text:Ljava/lang/String;

    .line 221
    iget-object v0, p2, Lcom/activefrequency/android/rockout/Song;->chord_2_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->chord_2_text:Ljava/lang/String;

    .line 222
    iget-object v0, p2, Lcom/activefrequency/android/rockout/Song;->chord_3_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->chord_3_text:Ljava/lang/String;

    .line 224
    invoke-virtual {p0, v2}, Lcom/activefrequency/android/rockout/Jam$JamView;->setFocusable(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/activefrequency/android/rockout/Jam$JamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/activefrequency/android/rockout/Song;->background:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 227
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mPaint:Landroid/graphics/Paint;

    .line 228
    iget-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    iget-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 230
    iget-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 232
    iget-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mLinePaint:Landroid/graphics/Paint;

    .line 235
    iget-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    return-void
.end method


# virtual methods
.method public changeChords(Lcom/activefrequency/android/rockout/Song;)V
    .locals 2
    .param p1, "song"    # Lcom/activefrequency/android/rockout/Song;

    .prologue
    .line 243
    iget-object v0, p1, Lcom/activefrequency/android/rockout/Song;->chord_1_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->chord_1_text:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Lcom/activefrequency/android/rockout/Song;->chord_2_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->chord_2_text:Ljava/lang/String;

    .line 245
    iget-object v0, p1, Lcom/activefrequency/android/rockout/Song;->chord_3_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->chord_3_text:Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Lcom/activefrequency/android/rockout/Jam$JamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/activefrequency/android/rockout/Song;->background:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 247
    invoke-virtual {p0}, Lcom/activefrequency/android/rockout/Jam$JamView;->invalidate()V

    .line 248
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 253
    iget-object v1, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mLinePaint:Landroid/graphics/Paint;

    .line 255
    .local v1, "lp":Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mPaint:Landroid/graphics/Paint;

    .line 256
    .local v2, "p":Landroid/graphics/Paint;
    iget v3, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mX:F

    .line 268
    .local v3, "x":F
    iget-object v4, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mBackgroundImage:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    iget-object v4, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mLinePaint:Landroid/graphics/Paint;

    sget v5, Lcom/activefrequency/android/rockout/Jam$JamView;->FRET_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v4, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object v4, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 274
    const/16 v4, 0x10

    new-array v0, v4, [F

    const/4 v4, 0x0

    .line 275
    aput v6, v0, v4

    const/4 v4, 0x1

    aput v8, v0, v4

    iget v4, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->W:I

    int-to-float v4, v4

    aput v4, v0, v7

    const/4 v4, 0x3

    aput v8, v0, v4

    const/4 v4, 0x4

    .line 276
    aput v6, v0, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->DY:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v0, v4

    const/4 v4, 0x6

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->W:I

    int-to-float v5, v5

    aput v5, v0, v4

    const/4 v4, 0x7

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->DY:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v0, v4

    const/16 v4, 0x8

    .line 277
    aput v6, v0, v4

    const/16 v4, 0x9

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->DY:I

    mul-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    aput v5, v0, v4

    const/16 v4, 0xa

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->W:I

    int-to-float v5, v5

    aput v5, v0, v4

    const/16 v4, 0xb

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->DY:I

    mul-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    aput v5, v0, v4

    const/16 v4, 0xc

    .line 278
    aput v6, v0, v4

    const/16 v4, 0xd

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->H:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    aput v5, v0, v4

    const/16 v4, 0xe

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->W:I

    int-to-float v5, v5

    aput v5, v0, v4

    const/16 v4, 0xf

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->H:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    aput v5, v0, v4

    .line 280
    .local v0, "linepoints":[F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 301
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 302
    iget-object v4, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->chord_1_text:Ljava/lang/String;

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->DY:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 303
    iget-object v4, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->chord_2_text:Ljava/lang/String;

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->DY:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 304
    iget-object v4, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->chord_3_text:Ljava/lang/String;

    iget v5, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->DY:I

    mul-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 306
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 311
    div-int/lit8 v0, p2, 0x6

    iput v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->DY:I

    .line 312
    iput p2, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->H:I

    .line 313
    iput p1, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->W:I

    .line 314
    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/activefrequency/android/rockout/Jam$JamView;->mX:F

    .line 315
    return-void
.end method
