.class public Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;
.super Landroid/view/View;
.source "IHRViewRandomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LCDGlyph"
.end annotation


# instance fields
.field protected mGlyphIndex:I

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;)V
    .locals 1

    .prologue
    .line 450
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;

    .line 446
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 443
    const/4 v0, -0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->mGlyphIndex:I

    .line 448
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->setBackgroundColor(I)V

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public getGlyphIndex()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->mGlyphIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 478
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 480
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphs:[Landroid/graphics/Bitmap;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 481
    iget v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->mGlyphIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphs:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->mGlyphIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 482
    :cond_0
    return-void
.end method

.method public setChar(C)V
    .locals 5
    .param p1, "c"    # C

    .prologue
    const/16 v4, 0x61

    const/16 v3, 0x41

    const/16 v2, 0x30

    .line 457
    if-lt p1, v2, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    sub-int v0, p1, v2

    .line 464
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->mGlyphIndex:I

    if-eq v0, v1, :cond_0

    .line 465
    iput v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->mGlyphIndex:I

    .line 466
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->invalidate()V

    .line 468
    :cond_0
    return-void

    .line 458
    .end local v0    # "i":I
    :cond_1
    if-lt p1, v4, :cond_2

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_2

    sub-int v1, p1, v4

    add-int/lit8 v0, v1, 0xa

    .restart local v0    # "i":I
    goto :goto_0

    .line 459
    .end local v0    # "i":I
    :cond_2
    if-lt p1, v3, :cond_3

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_3

    sub-int v1, p1, v3

    add-int/lit8 v0, v1, 0xa

    .restart local v0    # "i":I
    goto :goto_0

    .line 460
    .end local v0    # "i":I
    :cond_3
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_4

    const/16 v0, 0x24

    .restart local v0    # "i":I
    goto :goto_0

    .line 461
    .end local v0    # "i":I
    :cond_4
    const/16 v1, 0x2e

    if-ne p1, v1, :cond_5

    const/16 v0, 0x25

    .restart local v0    # "i":I
    goto :goto_0

    .line 462
    .end local v0    # "i":I
    :cond_5
    const/4 v0, -0x1

    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public setGlyphIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 470
    iput p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->mGlyphIndex:I

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->invalidate()V

    return-void
.end method
