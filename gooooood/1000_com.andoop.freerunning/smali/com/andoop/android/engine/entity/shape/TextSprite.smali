.class public Lcom/andoop/android/engine/entity/shape/TextSprite;
.super Lcom/andoop/android/engine/entity/shape/RectangularShape;
.source "TextSprite.java"


# static fields
.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x3

.field public static final STROKE_AND_FILL:I = 0x1

.field public static final STROKE_NONE:I = 0x0

.field public static final STROKE_ONLY:I = 0x2


# instance fields
.field private i:I

.field protected mAlign:I

.field private final mBounds:Landroid/graphics/RectF;

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final mMultiline:Z

.field private mNormalColor:I

.field protected mText:Ljava/lang/String;

.field private mTextWidth:F

.field private mTexts:[Ljava/lang/String;

.field private mTouchColor:I


# direct methods
.method public constructor <init>(FFLjava/lang/String;ILandroid/graphics/Typeface;F)V
    .locals 9
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pText"    # Ljava/lang/String;
    .param p4, "pAlign"    # I
    .param p5, "pTypeface"    # Landroid/graphics/Typeface;
    .param p6, "pSize"    # F

    .prologue
    const/4 v7, 0x0

    .line 51
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;FIZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(FFLjava/lang/String;ILandroid/graphics/Typeface;FI)V
    .locals 9
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pText"    # Ljava/lang/String;
    .param p4, "pAlign"    # I
    .param p5, "pTypeface"    # Landroid/graphics/Typeface;
    .param p6, "pSize"    # F
    .param p7, "pStroke"    # I

    .prologue
    .line 55
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;FIZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(FFLjava/lang/String;ILandroid/graphics/Typeface;FIZ)V
    .locals 6
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pText"    # Ljava/lang/String;
    .param p4, "pAlign"    # I
    .param p5, "pTypeface"    # Landroid/graphics/Typeface;
    .param p6, "pSize"    # F
    .param p7, "pStroke"    # I
    .param p8, "pMultiline"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/andoop/android/engine/entity/shape/RectangularShape;-><init>(FFFF)V

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mBounds:Landroid/graphics/RectF;

    .line 43
    const v0, -0xc05eaa

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTouchColor:I

    .line 65
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mNormalColor:I

    .line 70
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mWidth:F

    .line 71
    iput p6, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mHeight:F

    .line 73
    iput-boolean p8, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mMultiline:Z

    .line 74
    iput p4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mAlign:I

    .line 76
    invoke-virtual {p0, p3}, Lcom/andoop/android/engine/entity/shape/TextSprite;->setText(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    .line 79
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 80
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mAlign:I

    packed-switch v0, :pswitch_data_0

    .line 90
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 91
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 83
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(FFLjava/lang/String;ILandroid/graphics/Typeface;FZ)V
    .locals 9
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pText"    # Ljava/lang/String;
    .param p4, "pAlign"    # I
    .param p5, "pTypeface"    # Landroid/graphics/Typeface;
    .param p6, "pSize"    # F
    .param p7, "pMultiline"    # Z

    .prologue
    .line 59
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/andoop/android/engine/entity/shape/TextSprite;-><init>(FFLjava/lang/String;ILandroid/graphics/Typeface;FIZ)V

    .line 60
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 3
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 175
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mBounds:Landroid/graphics/RectF;

    float-to-int v1, p1

    int-to-float v1, v1

    float-to-int v2, p2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public onClick(FFLandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/TextSprite;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTouchColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 182
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 183
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mNormalColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    const-wide/16 v1, 0x10

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v1, v3

    .line 189
    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 192
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mNormalColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected onManagedDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 5
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 159
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    .line 160
    .local v0, "x":F
    iget v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    .line 163
    .local v1, "y":F
    iget-boolean v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mMultiline:Z

    if-eqz v2, :cond_1

    .line 164
    const/4 v2, 0x0

    iput v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->i:I

    :goto_0
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->i:I

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTexts:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 171
    :goto_1
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTexts:[Ljava/lang/String;

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->i:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->i:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->i:I

    goto :goto_0

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setBold(Z)V
    .locals 1
    .param p1, "bold"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 138
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/andoop/android/engine/entity/shape/RectangularShape;->setColor(I)V

    .line 100
    iput p1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mNormalColor:I

    .line 101
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "pWidth"    # F

    .prologue
    .line 146
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 6
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 104
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mText:Ljava/lang/String;

    .line 105
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mMultiline:Z

    if-eqz v0, :cond_0

    .line 106
    if-eqz p1, :cond_1

    .line 107
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTexts:[Ljava/lang/String;

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    .line 115
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 116
    iget v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mAlign:I

    packed-switch v0, :pswitch_data_0

    .line 126
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    :goto_1
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTexts:[Ljava/lang/String;

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 119
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 123
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mTextWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mX:F

    iget v4, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mY:F

    iget-object v5, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setUnderline(Z)V
    .locals 1
    .param p1, "underline"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/TextSprite;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 134
    return-void
.end method
