.class public Lcom/lonelycatgames/App/App$MyAbsoluteLayout;
.super Landroid/view/ViewGroup;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MyAbsoluteLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public DrawChild(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->getDrawingTime()J

    move-result-wide v0

    .line 66
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 67
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->generateDefaultLayoutParams()Lcom/lonelycatgames/App/App$MyLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/lonelycatgames/App/App$MyLayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 34
    new-instance v0, Lcom/lonelycatgames/App/App$MyLayoutParams;

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/lonelycatgames/App/App$MyLayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->getChildCount()I

    move-result v1

    .line 58
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 59
    invoke-virtual {p0, v2}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lonelycatgames/App/App$MyLayoutParams;

    .line 61
    iget v4, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->x:I

    iget v5, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->y:I

    iget v6, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->x:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v0, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->y:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 58
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->getChildCount()I

    move-result v1

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->measureChildren(II)V

    move v2, v0

    move v3, v0

    move v4, v0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_0

    .line 42
    invoke-virtual {p0, v2}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 45
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lonelycatgames/App/App$MyLayoutParams;

    .line 46
    iget v6, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->x:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 47
    iget v0, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->y:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 48
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 49
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 41
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 53
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 54
    invoke-static {v1, p1}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->setMeasuredDimension(II)V

    .line 55
    return-void
.end method
