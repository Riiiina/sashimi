.class Lcom/chartcross/gpstest/GPSTest$GpsSnrView;
.super Lcom/chartcross/gpstest/RootView;
.source "GPSTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartcross/gpstest/GPSTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsSnrView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartcross/gpstest/GPSTest;


# direct methods
.method public constructor <init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x4

    .line 1126
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    .line 1121
    invoke-direct {p0, p2}, Lcom/chartcross/gpstest/RootView;-><init>(Landroid/content/Context;)V

    .line 1122
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mColsP:I

    .line 1123
    const/16 v0, 0x10

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mRowsP:I

    .line 1124
    const/16 v0, 0x40

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mColsL:I

    .line 1125
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mRowsL:I

    return-void
.end method

.method private DrawSnrGraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcBounds"    # Landroid/graphics/Rect;
    .param p3, "Style"    # I

    .prologue
    .line 1496
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int v21, v5, v6

    .line 1497
    .local v21, "Width":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v16, v5, v6

    .line 1498
    .local v16, "Height":I
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide v5, v0

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    div-double/2addr v5, v7

    double-to-int v13, v5

    .line 1499
    .local v13, "CellWidth":I
    mul-int/lit8 v5, v13, 0xc

    sub-int v5, v21, v5

    div-int/lit8 v12, v5, 0x2

    .line 1500
    .local v12, "BarOffset":I
    if-nez v12, :cond_0

    .line 1502
    const/4 v12, 0x1

    .line 1505
    :cond_0
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 1506
    .local v25, "rcGraph":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1507
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1508
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1509
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/16 v6, 0x1e

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1510
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v15, v5, v6

    .line 1512
    .local v15, "GHeight":I
    and-int/lit8 v5, p3, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_BACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_BACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1532
    :cond_1
    and-int/lit8 v5, p3, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 1534
    new-instance v14, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    invoke-direct {v14, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1535
    .local v14, "Dashes":Landroid/graphics/DashPathEffect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1538
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v7, v15, 0x4

    add-int/2addr v5, v7

    int-to-float v7, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    int-to-float v8, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v9, v15, 0x4

    add-int/2addr v5, v9

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1539
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v7, v15, 0x2

    add-int/2addr v5, v7

    int-to-float v7, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    int-to-float v8, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v9, v15, 0x2

    add-int/2addr v5, v9

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1540
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    mul-int/lit8 v7, v15, 0x3

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    int-to-float v7, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    int-to-float v8, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    mul-int/lit8 v9, v15, 0x3

    div-int/lit8 v9, v9, 0x4

    add-int/2addr v5, v9

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1543
    .end local v14    # "Dashes":Landroid/graphics/DashPathEffect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1547
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int/2addr v5, v15

    int-to-float v7, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    int-to-float v8, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int/2addr v5, v15

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1550
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 1551
    .local v24, "rcBar":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    add-int/2addr v5, v12

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1552
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    add-int/2addr v5, v13

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1553
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v19

    .line 1569
    .local v19, "Satellites":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    :goto_0
    const/16 v18, 0x0

    .line 1570
    .local v18, "InView":I
    const/16 v17, 0x0

    .line 1571
    .local v17, "InUse":I
    if-eqz v19, :cond_4

    .line 1573
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 1574
    .local v22, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    :cond_3
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1746
    .end local v22    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    :cond_4
    return-void

    .line 1565
    .end local v17    # "InUse":I
    .end local v18    # "InView":I
    .end local v19    # "Satellites":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    :cond_5
    const/16 v19, 0x0

    .restart local v19    # "Satellites":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    goto :goto_0

    .line 1576
    .restart local v17    # "InUse":I
    .restart local v18    # "InView":I
    .restart local v22    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1577
    add-int/lit8 v18, v18, 0x1

    .line 1579
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/location/GpsSatellite;

    .line 1580
    .local v23, "oSat":Landroid/location/GpsSatellite;
    const/16 v5, 0xc

    move/from16 v0, v18

    move v1, v5

    if-gt v0, v1, :cond_3

    .line 1582
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_c

    .line 1584
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v5

    sub-int v11, v16, v5

    .line 1591
    .local v11, "BarHeight":I
    :goto_2
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    sub-int/2addr v5, v11

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1592
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_7

    .line 1594
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1597
    :cond_7
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR0:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1603
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1681
    :cond_8
    :goto_3
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 1683
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR0:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1714
    :goto_4
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    int-to-float v6, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    int-to-float v7, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1717
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1719
    and-int/lit8 v5, p3, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a

    .line 1721
    const-string v5, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 1722
    .local v26, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0x11

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1726
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v20, v5, v6

    .line 1727
    .local v20, "TextX":I
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    const/4 v7, 0x7

    invoke-static {v7}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1730
    .end local v20    # "TextX":I
    .end local v26    # "s":Ljava/lang/String;
    :cond_a
    and-int/lit8 v5, p3, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 1732
    const-string v5, "%02.0f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 1733
    .restart local v26    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0x11

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1737
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v20, v5, v6

    .line 1738
    .restart local v20    # "TextX":I
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1741
    .end local v20    # "TextX":I
    .end local v26    # "s":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    add-int/2addr v5, v13

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1742
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    add-int/2addr v5, v13

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 1588
    .end local v11    # "BarHeight":I
    :cond_c
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v5

    sub-int v5, v16, v5

    int-to-double v5, v5

    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-int v11, v5

    .restart local v11    # "BarHeight":I
    goto/16 :goto_2

    .line 1610
    :cond_d
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    .line 1612
    add-int/lit8 v17, v17, 0x1

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1617
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1624
    :cond_e
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_f

    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_f

    .line 1626
    add-int/lit8 v17, v17, 0x1

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR2:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1631
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1638
    :cond_f
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_10

    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_10

    .line 1640
    add-int/lit8 v17, v17, 0x1

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR3:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1645
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1652
    :cond_10
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_11

    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_11

    .line 1654
    add-int/lit8 v17, v17, 0x1

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR4:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1659
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1668
    :cond_11
    add-int/lit8 v17, v17, 0x1

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR5:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1673
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1688
    :cond_12
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_13

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1693
    :cond_13
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_14

    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_14

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR2:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1698
    :cond_14
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_15

    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_15

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR3:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1703
    :cond_15
    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_16

    invoke-virtual/range {v23 .. v23}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_16

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR4:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1710
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPSSNR5:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1534
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1751
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onAttachedToWindow()V

    .line 1752
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1757
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onDetachedFromWindow()V

    .line 1758
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1188
    invoke-super/range {p0 .. p1}, Lcom/chartcross/gpstest/RootView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1192
    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    .line 1194
    .local v37, "rcBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->getWidth()I

    move-result v36

    .line 1195
    .local v36, "Width":I
    if-gtz v36, :cond_1

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->getHeight()I

    move-result v5

    const/16 v6, 0x1e

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    sub-int v35, v5, v6

    .line 1201
    .local v35, "Height":I
    if-lez v35, :cond_0

    .line 1206
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1207
    move/from16 v0, v36

    move-object/from16 v1, v37

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1208
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1209
    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_BACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1218
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1220
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1221
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1222
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1230
    :cond_2
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 1231
    .local v38, "rcText":Landroid/graphics/Rect;
    move-object/from16 v7, v37

    .line 1232
    .local v7, "rcGrid":Landroid/graphics/Rect;
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 1233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mButtonHit:I

    move v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1237
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 1239
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const-string v12, "GPS Status"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    .line 1245
    .local v10, "rcCell":Landroid/graphics/Rect;
    :goto_1
    if-eqz v10, :cond_4

    .line 1248
    const/4 v5, 0x5

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 1249
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    iget v6, v10, Landroid/graphics/Rect;->top:I

    sub-int v34, v5, v6

    .line 1250
    .local v34, "CellInnerHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_a

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0x1a

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1258
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1261
    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/16 v6, 0x14

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v34, 0x2

    add-int/2addr v6, v8

    int-to-float v6, v6

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDipF(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v9, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v5

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1265
    const-string v11, "GPS on"

    .line 1266
    .local v11, "t":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v5

    if-nez v5, :cond_b

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPS_BAD:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1274
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1282
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    move-object v0, v5

    move-object v1, v11

    move v2, v6

    move v3, v8

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1283
    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/16 v6, 0x14

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v34, 0x2

    add-int/2addr v6, v8

    int-to-float v6, v6

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDipF(F)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v9, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1286
    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/16 v6, 0x28

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v34, 0x2

    add-int/2addr v6, v8

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v9, v0

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v5

    move v3, v6

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1288
    .end local v11    # "t":Ljava/lang/String;
    .end local v34    # "CellInnerHeight":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mButtonHit:I

    move v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1296
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_d

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$10(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1302
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x2

    const-string v12, "Accuracy (feet)"

    .end local v10    # "rcCell":Landroid/graphics/Rect;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    .line 1324
    .restart local v10    # "rcCell":Landroid/graphics/Rect;
    :goto_5
    if-eqz v10, :cond_6

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v5

    if-nez v5, :cond_e

    .line 1330
    const-string v11, "00"

    .line 1348
    .restart local v11    # "t":Ljava/lang/String;
    :goto_6
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1350
    sget v19, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    .line 1359
    .local v19, "textColour":I
    :goto_7
    sget v5, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mFieldTextFont:I

    if-nez v5, :cond_11

    .line 1361
    const/4 v12, 0x7

    .line 1362
    .local v12, "alignment":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 1364
    const/4 v14, 0x4

    .line 1365
    .local v14, "minDigits":I
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 1387
    :goto_8
    const/4 v13, 0x6

    const/4 v15, 0x1

    const-wide v16, 0x3fe3333333333333L    # 0.6

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v18

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v22}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIIDIIZZZ)V

    .line 1393
    .end local v11    # "t":Ljava/lang/String;
    .end local v12    # "alignment":I
    .end local v14    # "minDigits":I
    .end local v19    # "textColour":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_13

    .line 1395
    const/16 v23, 0x3

    const/16 v24, 0x0

    const/16 v25, 0x8

    const/16 v26, 0x4

    const-string v27, ""

    sget v28, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FORE:I

    sget v29, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_BACK:I

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v7

    invoke-virtual/range {v20 .. v29}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v10

    .line 1401
    :goto_9
    if-eqz v10, :cond_7

    .line 1403
    const/16 v5, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawSnrGraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_TEXT:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1412
    const-string v21, "In View"

    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    add-int v23, v5, v6

    iget v5, v10, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    add-int v24, v5, v6

    const/16 v25, 0x2

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v20, p0

    move-object/from16 v22, p1

    invoke-virtual/range {v20 .. v27}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1413
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSatsInView:I

    move v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 1414
    .local v21, "sField":Ljava/lang/String;
    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    add-int v23, v5, v6

    iget v5, v10, Landroid/graphics/Rect;->top:I

    const/16 v6, 0x16

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    add-int v24, v5, v6

    const/16 v25, 0x2

    const/16 v5, 0x1a

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v20, p0

    move-object/from16 v22, p1

    invoke-virtual/range {v20 .. v27}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1415
    const-string v23, "In Use"

    iget v5, v10, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    sub-int v25, v5, v6

    iget v5, v10, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    add-int v26, v5, v6

    const/16 v27, 0x8

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    invoke-virtual/range {v22 .. v29}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1416
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mSatsInUse:I

    move v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 1417
    iget v5, v10, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    sub-int v23, v5, v6

    iget v5, v10, Landroid/graphics/Rect;->top:I

    const/16 v6, 0x16

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    add-int v24, v5, v6

    const/16 v25, 0x8

    const/16 v5, 0x1a

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v20, p0

    move-object/from16 v22, p1

    invoke-virtual/range {v20 .. v27}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1423
    .end local v21    # "sField":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_14

    .line 1425
    const/16 v25, 0xb

    const/16 v26, 0x0

    const/16 v27, 0x2

    const/16 v28, 0x4

    const-string v29, ""

    sget v30, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_TEXT:I

    sget v31, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_BACK:I

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v7

    invoke-virtual/range {v22 .. v31}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v10

    .line 1426
    if-eqz v10, :cond_8

    .line 1428
    const/16 v24, 0x2

    sget v25, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_TEXT:I

    const/16 v27, 0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v26, v10

    invoke-virtual/range {v22 .. v27}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawSNRLegend(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V

    .line 1443
    :cond_8
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_16

    .line 1445
    const/16 v23, 0x1

    const/16 v26, 0xd

    const/16 v27, 0x0

    const/16 v28, 0x3

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v30

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v30}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniSatellitesCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/GpsStatus;)V

    .line 1446
    const/16 v23, 0x2

    const/16 v26, 0xd

    const/16 v27, 0x1

    const/16 v28, 0x3

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v30

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v30}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniMapCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/Location;)V

    .line 1447
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1449
    const/16 v23, 0x3

    const/16 v26, 0xd

    const/16 v27, 0x2

    const/16 v28, 0x3

    const/16 v29, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mFieldTextColour:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1450
    const/16 v23, 0x4

    const/16 v26, 0xd

    const/16 v27, 0x3

    const/16 v28, 0x3

    const/16 v29, 0x1

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mFieldTextColour:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1474
    :goto_b
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1476
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1243
    .end local v10    # "rcCell":Landroid/graphics/Rect;
    :cond_9
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x15

    const-string v12, "GPS Status"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    .restart local v10    # "rcCell":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 1256
    .restart local v34    # "CellInnerHeight":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0x18

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_2

    .line 1272
    .restart local v11    # "t":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPS_ON:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 1278
    .end local v11    # "t":Ljava/lang/String;
    :cond_c
    const-string v11, "GPS off"

    .line 1279
    .restart local v11    # "t":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_GPS_OFF:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1306
    .end local v11    # "t":Ljava/lang/String;
    .end local v34    # "CellInnerHeight":I
    :pswitch_0
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x2

    const-string v12, "Accuracy (meters)"

    .end local v10    # "rcCell":Landroid/graphics/Rect;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    .line 1307
    .restart local v10    # "rcCell":Landroid/graphics/Rect;
    goto/16 :goto_5

    .line 1312
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$10(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1316
    const/4 v8, 0x0

    const/16 v9, 0x15

    const/4 v10, 0x1

    const/16 v11, 0x15

    const-string v12, "Accuracy (feet)"

    .end local v10    # "rcCell":Landroid/graphics/Rect;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    .line 1317
    .restart local v10    # "rcCell":Landroid/graphics/Rect;
    goto/16 :goto_5

    .line 1320
    :pswitch_1
    const/4 v8, 0x0

    const/16 v9, 0x15

    const/4 v10, 0x1

    const/16 v11, 0x15

    const-string v12, "Accuracy (meters)"

    .end local v10    # "rcCell":Landroid/graphics/Rect;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    .restart local v10    # "rcCell":Landroid/graphics/Rect;
    goto/16 :goto_5

    .line 1334
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$10(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v5

    packed-switch v5, :pswitch_data_2

    .line 1338
    const-string v5, "%02.0f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v9, v0

    invoke-static {v9}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    float-to-double v11, v9

    const-wide v13, 0x403e47e51fa9e973L    # 30.2808399

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1339
    .restart local v11    # "t":Ljava/lang/String;
    goto/16 :goto_6

    .line 1342
    .end local v11    # "t":Ljava/lang/String;
    :pswitch_2
    const-string v5, "%02.0f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v9, v0

    invoke-static {v9}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "t":Ljava/lang/String;
    goto/16 :goto_6

    .line 1354
    :cond_f
    sget v19, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v19    # "textColour":I
    goto/16 :goto_7

    .line 1369
    .restart local v12    # "alignment":I
    :cond_10
    const/4 v14, 0x5

    .line 1370
    .restart local v14    # "minDigits":I
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_8

    .line 1375
    .end local v12    # "alignment":I
    .end local v14    # "minDigits":I
    :cond_11
    const/4 v12, 0x7

    .line 1376
    .restart local v12    # "alignment":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_12

    .line 1378
    const/4 v14, 0x4

    .line 1379
    .restart local v14    # "minDigits":I
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_8

    .line 1383
    .end local v14    # "minDigits":I
    :cond_12
    const/4 v14, 0x5

    .line 1384
    .restart local v14    # "minDigits":I
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_8

    .line 1399
    .end local v11    # "t":Ljava/lang/String;
    .end local v12    # "alignment":I
    .end local v14    # "minDigits":I
    .end local v19    # "textColour":I
    :cond_13
    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x2a

    const-string v27, ""

    sget v28, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_FORE:I

    sget v29, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_BACK:I

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v7

    invoke-virtual/range {v20 .. v29}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v10

    goto/16 :goto_9

    .line 1433
    :cond_14
    const/16 v25, 0x0

    const/16 v26, 0x2a

    const/16 v27, 0x4

    const/16 v28, 0x8

    const-string v29, ""

    sget v30, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_TEXT:I

    sget v31, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_BACK:I

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v7

    invoke-virtual/range {v22 .. v31}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v10

    .line 1434
    if-eqz v10, :cond_8

    .line 1436
    const/16 v24, 0x3

    sget v25, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_SAT_TEXT:I

    const/16 v27, 0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v26, v10

    invoke-virtual/range {v22 .. v27}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawSNRLegend(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V

    goto/16 :goto_a

    .line 1454
    :cond_15
    const/16 v23, 0x3

    const/16 v26, 0xd

    const/16 v27, 0x2

    const/16 v28, 0x3

    const/16 v29, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_DISABLED:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1455
    const/16 v23, 0x4

    const/16 v26, 0xd

    const/16 v27, 0x3

    const/16 v28, 0x3

    const/16 v29, 0x1

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_DISABLED:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_b

    .line 1460
    :cond_16
    const/16 v23, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v30

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v30}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniSatellitesCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/GpsStatus;)V

    .line 1461
    const/16 v23, 0x2

    const/16 v26, 0x1

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v30

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v30}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniMapCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/Location;)V

    .line 1462
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1464
    const/16 v23, 0x3

    const/16 v26, 0x2

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mFieldTextColour:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1465
    const/16 v23, 0x4

    const/16 v26, 0x3

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mFieldTextColour:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_b

    .line 1469
    :cond_17
    const/16 v23, 0x3

    const/16 v26, 0x2

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_DISABLED:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 1470
    const/16 v23, 0x4

    const/16 v26, 0x3

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->MX_COLOUR_DISABLED:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v7

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_b

    .line 1298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1312
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1334
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1132
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1134
    .local v3, "y":F
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1136
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, v3

    .line 1139
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1182
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1142
    :pswitch_0
    float-to-int v4, v2

    float-to-int v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->HitTestButton(II)I

    move-result v4

    iput v4, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mButtonHit:I

    .line 1143
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->invalidate()V

    goto :goto_0

    .line 1147
    :pswitch_1
    float-to-int v4, v2

    float-to-int v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->HitTestButton(II)I

    move-result v0

    .line 1148
    .local v0, "ButtonHit":I
    iget v4, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mButtonHit:I

    if-ne v0, v4, :cond_1

    .line 1150
    packed-switch v0, :pswitch_data_1

    .line 1178
    :cond_1
    :goto_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->mButtonHit:I

    .line 1179
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->invalidate()V

    goto :goto_0

    .line 1153
    :pswitch_2
    iget-object v4, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 1157
    :pswitch_3
    iget-object v4, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 1161
    :pswitch_4
    iget-object v4, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 1165
    :pswitch_5
    iget-object v4, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 1171
    :pswitch_6
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-virtual {v4, v1}, Lcom/chartcross/gpstest/GPSTest;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1174
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1150
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
