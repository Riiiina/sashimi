.class public final Lcom/admob/android/ads/ac;
.super Landroid/widget/TextView;


# instance fields
.field public a:F

.field public b:Z

.field public c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/admob/android/ads/ac;->a:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/ac;->b:Z

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/ac;->setGravity(I)V

    iput p2, p0, Lcom/admob/android/ads/ac;->c:F

    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/admob/android/ads/ac;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    if-eqz v3, :cond_1

    move v5, v2

    :goto_0
    iget v6, p0, Lcom/admob/android/ads/ac;->a:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_0

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v4, v3, v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-lez v6, :cond_0

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_0
    cmpl-float v0, v2, v5

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/admob/android/ads/ac;->c:F

    div-float v1, v5, v1

    invoke-virtual {p0, v0, v1}, Lcom/admob/android/ads/ac;->setTextSize(IF)V

    :cond_1
    return-void
.end method
