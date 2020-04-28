.class public Lcom/andoop/android/engine/entity/shape/TextNumberSprite;
.super Lcom/andoop/android/engine/entity/shape/TextSprite;
.source "TextNumberSprite.java"


# static fields
.field private static final MAX_LEN:I = 0xc


# instance fields
.field private final mChars:[C

.field private mInt:I

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V
    .locals 7
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pText"    # Ljava/lang/String;
    .param p4, "pInt"    # I
    .param p5, "pTypeface"    # Landroid/graphics/Typeface;
    .param p6, "pSize"    # F

    .prologue
    .line 19
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V

    .line 14
    const/16 v0, 0xc

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mChars:[C

    .line 20
    iput-object p3, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mText:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mInt:I

    .line 22
    return-void
.end method


# virtual methods
.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 7
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 27
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mX:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mY:F

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 28
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 29
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mInt:I

    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mChars:[C

    invoke-static {v0, v1}, Lcom/andoop/android/engine/utils/StringUtils;->intToChars(I[C)V

    .line 30
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mChars:[C

    const/4 v2, 0x0

    const/16 v3, 0xc

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mX:F

    iget v5, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mY:F

    iget-object v6, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mShapePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 31
    return-void
.end method

.method public setInt(I)V
    .locals 0
    .param p1, "pInt"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/TextNumberSprite;->mInt:I

    .line 35
    return-void
.end method
