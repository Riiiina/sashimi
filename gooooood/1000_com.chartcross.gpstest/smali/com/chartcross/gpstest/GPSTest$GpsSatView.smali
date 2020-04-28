.class Lcom/chartcross/gpstest/GPSTest$GpsSatView;
.super Lcom/chartcross/gpstest/RootView;
.source "GPSTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartcross/gpstest/GPSTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsSatView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartcross/gpstest/GPSTest;


# direct methods
.method public constructor <init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x4

    .line 1770
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    .line 1765
    invoke-direct {p0, p2}, Lcom/chartcross/gpstest/RootView;-><init>(Landroid/content/Context;)V

    .line 1766
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mColsP:I

    .line 1767
    const/16 v0, 0x10

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mRowsP:I

    .line 1768
    const/16 v0, 0x40

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mColsL:I

    .line 1769
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mRowsL:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onAttachedToWindow()V

    .line 2003
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2008
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onDetachedFromWindow()V

    .line 2009
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1823
    invoke-super/range {p0 .. p1}, Lcom/chartcross/gpstest/RootView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1826
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 1828
    .local v24, "rcBounds":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->getWidth()I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1830
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1831
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_BACK:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1840
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1842
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1843
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1844
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1852
    :cond_0
    move-object/from16 v5, v24

    .line 1853
    .local v5, "rcGrid":Landroid/graphics/Rect;
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1854
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_4

    .line 1856
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xb

    const/4 v9, 0x4

    const-string v10, ""

    sget v11, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    sget v12, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_BACK:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v8

    .line 1862
    .local v8, "rcCell":Landroid/graphics/Rect;
    :goto_0
    if-eqz v8, :cond_1

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$15(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 1867
    const/16 v9, 0x40f

    .line 1873
    .local v9, "Style":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$16(Lcom/chartcross/gpstest/GPSTest;)[F

    move-result-object v3

    if-nez v3, :cond_6

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawSatellitePositions(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/location/GpsStatus;F)V

    .line 1881
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1884
    const-string v11, "In View"

    iget v3, v8, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v13, v3, v4

    iget v3, v8, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v14, v3, v4

    const/4 v15, 0x2

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v10 .. v17}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1885
    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mSatsInView:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1886
    .local v11, "sField":Ljava/lang/String;
    iget v3, v8, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v13, v3, v4

    iget v3, v8, Landroid/graphics/Rect;->top:I

    const/16 v4, 0x16

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v14, v3, v4

    const/4 v15, 0x2

    const/16 v3, 0x1a

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v10 .. v17}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1887
    const-string v13, "In Use"

    iget v3, v8, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    sub-int v15, v3, v4

    iget v3, v8, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v16, v3, v4

    const/16 v17, 0x8

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    invoke-virtual/range {v12 .. v19}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1888
    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mSatsInUse:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1889
    iget v3, v8, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    sub-int v13, v3, v4

    iget v3, v8, Landroid/graphics/Rect;->top:I

    const/16 v4, 0x16

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v14, v3, v4

    const/16 v15, 0x8

    const/16 v3, 0x1a

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v10 .. v17}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1891
    sget v3, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mDeclination:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1894
    const-string v13, "Declination (W)"

    iget v3, v8, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v15, v3, v4

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    sub-int v16, v3, v4

    const/16 v17, 0x0

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    invoke-virtual/range {v12 .. v19}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$15(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 1897
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mDeclination:F

    neg-float v7, v7

    float-to-double v9, v7

    const-wide v11, 0x4031c72b020c49baL    # 17.778

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .end local v9    # "Style":I
    .end local v11    # "sField":Ljava/lang/String;
    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1903
    .restart local v11    # "sField":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1911
    :goto_4
    iget v3, v8, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v13, v3, v4

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v4, 0x16

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    sub-int v14, v3, v4

    const/4 v15, 0x0

    const/16 v3, 0x1c

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v10 .. v17}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1941
    .end local v11    # "sField":Ljava/lang/String;
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1942
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_c

    .line 1944
    const/16 v15, 0xb

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x4

    const-string v19, ""

    sget v20, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    sget v21, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_BACK:I

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v5

    invoke-virtual/range {v12 .. v21}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v8

    .line 1945
    if-eqz v8, :cond_2

    .line 1947
    const/4 v14, 0x2

    sget v15, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    const/16 v17, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawSNRLegend(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V

    .line 1962
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_e

    .line 1964
    const/4 v13, 0x1

    const/16 v16, 0xd

    const/16 v17, 0x0

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v3

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v21}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniStatusCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIZLandroid/location/Location;)V

    .line 1965
    const/4 v13, 0x2

    const/16 v16, 0xd

    const/16 v17, 0x1

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v20

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v20}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniMapCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/Location;)V

    .line 1966
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1968
    const/4 v13, 0x3

    const/16 v16, 0xd

    const/16 v17, 0x2

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v22

    sget v23, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mFieldTextColour:I

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v23}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1969
    const/4 v13, 0x4

    const/16 v16, 0xd

    const/16 v17, 0x3

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v22

    sget v23, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mFieldTextColour:I

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v23}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1993
    :goto_7
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1995
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1997
    :cond_3
    return-void

    .line 1860
    .end local v8    # "rcCell":Landroid/graphics/Rect;
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/16 v9, 0x2a

    const-string v10, ""

    sget v11, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    sget v12, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_BACK:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v8

    .restart local v8    # "rcCell":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 1871
    :cond_5
    const/16 v9, 0xf

    .restart local v9    # "Style":I
    goto/16 :goto_1

    .line 1879
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v10

    sget v11, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mHeading:F

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawSatellitePositions(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/location/GpsStatus;F)V

    goto/16 :goto_2

    .line 1901
    .restart local v11    # "sField":Ljava/lang/String;
    :cond_7
    const-string v3, "%.0f\u00b0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mDeclination:F

    neg-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 1909
    .end local v9    # "Style":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_DISABLED:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 1915
    .restart local v9    # "Style":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1916
    const-string v13, "Declination (E)"

    iget v3, v8, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v15, v3, v4

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    sub-int v16, v3, v4

    const/16 v17, 0x0

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    invoke-virtual/range {v12 .. v19}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$15(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 1919
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mDeclination:F

    float-to-double v9, v7

    const-wide v11, 0x4031c72b020c49baL    # 17.778

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .end local v9    # "Style":I
    .end local v11    # "sField":Ljava/lang/String;
    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1926
    .restart local v11    # "sField":Ljava/lang/String;
    :goto_8
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1934
    :goto_9
    iget v3, v8, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    add-int v13, v3, v4

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v4, 0x16

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v4

    sub-int v14, v3, v4

    const/4 v15, 0x0

    const/16 v3, 0x1c

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v10 .. v17}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_5

    .line 1924
    .restart local v9    # "Style":I
    :cond_a
    const-string v3, "%.0f\u00b0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mDeclination:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    .line 1932
    .end local v9    # "Style":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_DISABLED:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 1952
    .end local v11    # "sField":Ljava/lang/String;
    :cond_c
    const/4 v15, 0x0

    const/16 v16, 0x2a

    const/16 v17, 0x4

    const/16 v18, 0x8

    const-string v19, ""

    sget v20, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    sget v21, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_BACK:I

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v5

    invoke-virtual/range {v12 .. v21}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v8

    .line 1953
    if-eqz v8, :cond_2

    .line 1955
    const/4 v14, 0x3

    sget v15, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_SAT_TEXT:I

    const/16 v17, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawSNRLegend(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V

    goto/16 :goto_6

    .line 1973
    :cond_d
    const/4 v13, 0x3

    const/16 v16, 0xd

    const/16 v17, 0x2

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v22

    sget v23, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_DISABLED:I

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v23}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1974
    const/4 v13, 0x4

    const/16 v16, 0xd

    const/16 v17, 0x3

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v22

    sget v23, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_DISABLED:I

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v23}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_7

    .line 1979
    :cond_e
    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x32

    const/16 v18, 0x1

    const/16 v19, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v3

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v21}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniStatusCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIZLandroid/location/Location;)V

    .line 1980
    const/4 v13, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x32

    const/16 v18, 0x1

    const/16 v19, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v20

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v20}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniMapCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/Location;)V

    .line 1981
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1983
    const/4 v13, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x32

    const/16 v18, 0x1

    const/16 v19, 0xe

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v22

    sget v23, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mFieldTextColour:I

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v23}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1984
    const/4 v13, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x32

    const/16 v18, 0x1

    const/16 v19, 0xe

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v22

    sget v23, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mFieldTextColour:I

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v23}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_7

    .line 1988
    :cond_f
    const/4 v13, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x32

    const/16 v18, 0x1

    const/16 v19, 0xe

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v22

    sget v23, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_DISABLED:I

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v23}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1989
    const/4 v13, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x32

    const/16 v18, 0x1

    const/16 v19, 0xe

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->GetDip(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v21

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v22

    sget v23, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->MX_COLOUR_DISABLED:I

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v12 .. v23}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 1775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1776
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1778
    .local v2, "y":F
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1780
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v3, v2

    .line 1783
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1817
    :goto_0
    return v5

    .line 1786
    :pswitch_0
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->HitTestButton(II)I

    move-result v3

    iput v3, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mButtonHit:I

    .line 1787
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->invalidate()V

    goto :goto_0

    .line 1791
    :pswitch_1
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->HitTestButton(II)I

    move-result v0

    .line 1792
    .local v0, "ButtonHit":I
    iget v3, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mButtonHit:I

    if-ne v0, v3, :cond_1

    .line 1794
    packed-switch v0, :pswitch_data_1

    .line 1813
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->mButtonHit:I

    .line 1814
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->invalidate()V

    goto :goto_0

    .line 1797
    :pswitch_2
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-virtual {v3, v5}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 1801
    :pswitch_3
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 1805
    :pswitch_4
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 1809
    :pswitch_5
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 1783
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1794
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
