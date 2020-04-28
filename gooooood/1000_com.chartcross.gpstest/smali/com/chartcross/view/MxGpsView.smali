.class public Lcom/chartcross/view/MxGpsView;
.super Lcom/chartcross/view/MxCellView;
.source "MxGpsView.java"


# static fields
.field public static final UNITS_IMPERIAL:I = 0x0

.field public static final UNITS_METRIC:I = 0x1

.field public static final UNITS_NAUTICAL:I = 0x2

.field protected static mWorldMap:Landroid/graphics/Bitmap;


# instance fields
.field protected mSNRThreshold:[I

.field protected mSatsInUse:I

.field protected mSatsInView:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/chartcross/view/MxCellView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    .line 26
    return-void

    .line 18
    :array_0
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x63
    .end array-data
.end method

.method private DrawSatelliteSymbol(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIJJ)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "Colour"    # I
    .param p4, "XPos"    # I
    .param p5, "YPos"    # I
    .param p6, "SatelliteNumber"    # J
    .param p8, "Style"    # J

    .prologue
    .line 1410
    const-wide/16 v1, 0x1

    and-long/2addr v1, p8

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1442
    const-wide/16 v1, 0x10

    and-long/2addr v1, p8

    const-wide/16 v3, 0x10

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1444
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1445
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1446
    sget v1, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1447
    int-to-float v1, p4

    int-to-float v2, p5

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/chartcross/view/MxGpsView;->GetDipF(F)F

    move-result v3

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1448
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1449
    int-to-float v1, p4

    int-to-float v2, p5

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/chartcross/view/MxGpsView;->GetDipF(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1450
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1499
    :cond_0
    :goto_0
    const-wide/16 v1, 0x2

    and-long/2addr v1, p8

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1501
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1502
    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1503
    .local v0, "s":Ljava/lang/String;
    sget v1, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1504
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1505
    const-wide/16 v1, 0x10

    and-long/2addr v1, p8

    const-wide/16 v3, 0x10

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 1507
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1513
    :goto_1
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1514
    int-to-float v1, p4

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v2

    add-int/2addr v2, p5

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1515
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1517
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-void

    .line 1454
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1455
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1456
    sget v1, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1457
    int-to-float v1, p4

    int-to-float v2, p5

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lcom/chartcross/view/MxGpsView;->GetDipF(F)F

    move-result v3

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1458
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1459
    int-to-float v1, p4

    int-to-float v2, p5

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lcom/chartcross/view/MxGpsView;->GetDipF(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1460
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0

    .line 1484
    :cond_3
    const-wide/16 v1, 0x1

    and-long/2addr v1, p8

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1489
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1490
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1491
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1492
    int-to-float v1, p4

    int-to-float v2, p5

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/chartcross/view/MxGpsView;->GetDipF(F)F

    move-result v3

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1493
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/16 :goto_0

    .line 1511
    .restart local v0    # "s":Ljava/lang/String;
    :cond_4
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1
.end method

.method public static InitialiseWorldMap(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    .line 31
    return-void
.end method


# virtual methods
.method public DrawCompass(Landroid/graphics/Canvas;Landroid/graphics/Rect;IF)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcBounds"    # Landroid/graphics/Rect;
    .param p3, "Style"    # I
    .param p4, "Angle"    # F

    .prologue
    .line 377
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int v20, v5, v6

    .line 378
    .local v20, "CellWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v19, v5, v6

    .line 379
    .local v19, "CellHeight":I
    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 381
    div-int/lit8 v9, v20, 0x2

    .line 387
    .local v9, "Radius":I
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v20, 0x2

    add-int v7, v5, v6

    .line 388
    .local v7, "XPos":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v6, v19, 0x2

    add-int v8, v5, v6

    .local v8, "YPos":I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, p3

    .line 390
    invoke-virtual/range {v5 .. v10}, Lcom/chartcross/view/MxGpsView;->DrawCompassBackground(Landroid/graphics/Canvas;IIII)V

    .line 392
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_1

    .line 394
    move/from16 v16, v9

    .line 408
    .local v16, "PointerSize":I
    :goto_1
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_3

    .line 410
    const/4 v12, 0x3

    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v15

    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    float-to-double v5, v5

    const-wide/16 v9, 0x0

    add-double/2addr v5, v9

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DARKBLUE:I

    .end local v9    # "Radius":I
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v18}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 411
    const/4 v12, 0x3

    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v15

    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    float-to-double v5, v5

    const-wide v9, 0x4066800000000000L    # 180.0

    add-double/2addr v5, v9

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_RED:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v18}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 412
    const/4 v12, 0x4

    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v15

    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    float-to-double v5, v5

    const-wide/16 v9, 0x0

    add-double/2addr v5, v9

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_MIDBLUE:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v18}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 413
    const/4 v12, 0x4

    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v15

    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    float-to-double v5, v5

    const-wide v9, 0x4066800000000000L    # 180.0

    add-double/2addr v5, v9

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DARKRED:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v18}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 417
    int-to-float v5, v7

    int-to-float v6, v8

    const/16 v9, 0x10

    invoke-static {v9}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 420
    int-to-float v5, v7

    int-to-float v6, v8

    const/16 v9, 0xa

    invoke-static {v9}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE2:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 423
    int-to-float v5, v7

    int-to-float v6, v8

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    .end local v7    # "XPos":I
    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    .end local v8    # "YPos":I
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 453
    :goto_2
    return-void

    .line 385
    .end local v16    # "PointerSize":I
    :cond_0
    div-int/lit8 v9, v19, 0x2

    .restart local v9    # "Radius":I
    goto/16 :goto_0

    .line 398
    .restart local v7    # "XPos":I
    .restart local v8    # "YPos":I
    :cond_1
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_2

    .line 400
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    sub-int v16, v9, v5

    .restart local v16    # "PointerSize":I
    goto/16 :goto_1

    .line 404
    .end local v16    # "PointerSize":I
    :cond_2
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    sub-int v16, v9, v5

    .restart local v16    # "PointerSize":I
    goto/16 :goto_1

    .line 427
    :cond_3
    const/4 v12, 0x3

    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v15

    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    float-to-double v5, v5

    const-wide/16 v9, 0x0

    add-double/2addr v5, v9

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DARKBLUE:I

    .end local v9    # "Radius":I
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v18}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 428
    const/4 v12, 0x3

    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v15

    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    float-to-double v5, v5

    const-wide v9, 0x4066800000000000L    # 180.0

    add-double/2addr v5, v9

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_RED:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v18}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 429
    const/4 v12, 0x4

    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v15

    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    float-to-double v5, v5

    const-wide/16 v9, 0x0

    add-double/2addr v5, v9

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_MIDBLUE:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v18}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 430
    const/4 v12, 0x4

    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v15

    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    float-to-double v5, v5

    const-wide v9, 0x4066800000000000L    # 180.0

    add-double/2addr v5, v9

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DARKRED:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    move v14, v8

    invoke-virtual/range {v10 .. v18}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 434
    int-to-float v5, v7

    int-to-float v6, v8

    const/16 v9, 0x8

    invoke-static {v9}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE2:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 437
    int-to-float v5, v7

    int-to-float v6, v8

    const/4 v9, 0x6

    invoke-static {v9}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 440
    int-to-float v5, v7

    int-to-float v6, v8

    const/4 v7, 0x4

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    .end local v7    # "XPos":I
    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    .end local v8    # "YPos":I
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public DrawCompass2(Landroid/graphics/Canvas;Landroid/graphics/Rect;IFFI)F
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcBounds"    # Landroid/graphics/Rect;
    .param p3, "Style"    # I
    .param p4, "Angle"    # F
    .param p5, "DirectionTo"    # F
    .param p6, "CentreColour"    # I

    .prologue
    .line 472
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_2

    .line 474
    const/16 v5, 0x32

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v28

    .line 481
    .local v28, "InnerRadiusOffset":I
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int v27, v5, v6

    .line 482
    .local v27, "CellWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v26, v5, v6

    .line 483
    .local v26, "CellHeight":I
    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    .line 485
    div-int/lit8 v9, v27, 0x2

    .line 491
    .local v9, "Radius":I
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v27, 0x2

    add-int v7, v5, v6

    .line 492
    .local v7, "XPos":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v6, v26, 0x2

    add-int v8, v5, v6

    .line 497
    .local v8, "YPos":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 498
    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    int-to-float v6, v7

    int-to-float v10, v8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, p3

    .line 499
    invoke-virtual/range {v5 .. v10}, Lcom/chartcross/view/MxGpsView;->DrawCompassBackground(Landroid/graphics/Canvas;IIII)V

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 505
    int-to-double v5, v9

    const-wide v10, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v5, v10

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v16, v0

    .line 506
    .local v16, "PointerHeight":I
    int-to-double v5, v9

    const-wide v10, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v5, v10

    double-to-int v15, v5

    .line 507
    .local v15, "PointerWidth":I
    and-int/lit8 v5, p3, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 509
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_4

    .line 511
    const/4 v12, 0x3

    sub-int v5, v8, v9

    add-int v5, v5, v16

    const/16 v6, 0xc

    invoke-static {v6}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v6

    add-int v14, v5, v6

    const/high16 v17, 0x43340000    # 180.0f

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GREEN:I

    sget v19, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GREEN_VDIM:I

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    invoke-virtual/range {v10 .. v20}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFIII)V

    .line 519
    :cond_0
    :goto_2
    and-int/lit8 v5, p3, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    .line 521
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x200

    move v5, v0

    const/16 v6, 0x200

    if-ne v5, v6, :cond_5

    .line 523
    sub-int v5, v9, v16

    const/16 v6, 0x22

    invoke-static {v6}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v6

    sub-int v21, v5, v6

    sget v23, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DISABLED:I

    sget v24, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DISABLED_DARK:I

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v25

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v22, p5

    invoke-virtual/range {v17 .. v25}, Lcom/chartcross/view/MxGpsView;->DrawDirectionToPointer(Landroid/graphics/Canvas;IIIFIII)V

    .line 529
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 531
    int-to-float v5, v7

    int-to-float v6, v8

    const/16 v10, 0xa

    invoke-static {v10}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v10

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE2:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 534
    int-to-float v5, v7

    int-to-float v6, v8

    const/16 v10, 0x8

    invoke-static {v10}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v10

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 537
    int-to-float v5, v7

    int-to-float v6, v8

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    .end local v7    # "XPos":I
    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    .end local v8    # "YPos":I
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 540
    :cond_1
    sub-int v5, v9, v28

    int-to-float v5, v5

    return v5

    .line 478
    .end local v9    # "Radius":I
    .end local v15    # "PointerWidth":I
    .end local v16    # "PointerHeight":I
    .end local v26    # "CellHeight":I
    .end local v27    # "CellWidth":I
    .end local v28    # "InnerRadiusOffset":I
    :cond_2
    const/16 v5, 0x1c

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v28

    .restart local v28    # "InnerRadiusOffset":I
    goto/16 :goto_0

    .line 489
    .restart local v26    # "CellHeight":I
    .restart local v27    # "CellWidth":I
    :cond_3
    div-int/lit8 v9, v26, 0x2

    .restart local v9    # "Radius":I
    goto/16 :goto_1

    .line 515
    .restart local v7    # "XPos":I
    .restart local v8    # "YPos":I
    .restart local v15    # "PointerWidth":I
    .restart local v16    # "PointerHeight":I
    :cond_4
    const/4 v12, 0x3

    sub-int v5, v8, v9

    add-int v5, v5, v16

    const/4 v6, 0x7

    invoke-static {v6}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v6

    add-int v14, v5, v6

    const/high16 v17, 0x43340000    # 180.0f

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GREEN:I

    sget v19, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GREEN_VDIM:I

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    invoke-virtual/range {v10 .. v20}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFIII)V

    goto/16 :goto_2

    .line 527
    :cond_5
    sub-int v5, v9, v16

    const/16 v6, 0x22

    invoke-static {v6}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v6

    sub-int v21, v5, v6

    sget v23, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_RED:I

    sget v24, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DARKRED:I

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v25

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v22, p5

    invoke-virtual/range {v17 .. v25}, Lcom/chartcross/view/MxGpsView;->DrawDirectionToPointer(Landroid/graphics/Canvas;IIIFIII)V

    goto/16 :goto_3
.end method

.method public DrawCompassBackground(Landroid/graphics/Canvas;IIII)V
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "XPos"    # I
    .param p3, "YPos"    # I
    .param p4, "Radius"    # I
    .param p5, "Style"    # I

    .prologue
    .line 133
    and-int/lit8 v5, p5, 0x1

    if-nez v5, :cond_3

    .line 135
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v30

    .line 136
    .local v30, "MinorTickWidth":I
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v29

    .line 137
    .local v29, "MinorTickLength":I
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v28

    .line 138
    .local v28, "MajorTickWidth":I
    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v27

    .line 139
    .local v27, "MajorTickLength":I
    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    .line 140
    .local v11, "DigitTextSize":I
    const/16 v5, 0x28

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v25

    .line 141
    .local v25, "DigitOffset":I
    const/16 v5, 0x3c

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v26

    .line 142
    .local v26, "DigitOffset2":I
    const/16 v5, 0x3c

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v32

    .line 143
    .local v32, "RoseOffset":I
    const/16 v5, 0x50

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v33

    .line 144
    .local v33, "RoseOffset2":I
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v31

    .line 145
    .local v31, "RimSize":I
    const/4 v12, 0x1

    .line 165
    .local v12, "BoldText":Z
    :goto_0
    and-int/lit8 v5, p5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    sub-int v7, p4, v31

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 179
    :cond_0
    and-int/lit8 v5, p5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_1
    const/16 v5, 0x48

    move/from16 v0, v38

    move v1, v5

    if-lt v0, v1, :cond_4

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    const/16 v38, 0x0

    :goto_2
    const/16 v5, 0x18

    move/from16 v0, v38

    move v1, v5

    if-lt v0, v1, :cond_5

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    const/16 v38, 0x0

    :goto_3
    const/16 v5, 0xc

    move/from16 v0, v38

    move v1, v5

    if-lt v0, v1, :cond_6

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    sub-int v7, p4, v29

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    sub-int v7, p4, v29

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    const/16 v38, 0x0

    :goto_4
    const/16 v5, 0xc

    move/from16 v0, v38

    move v1, v5

    if-lt v0, v1, :cond_7

    .line 284
    .end local v38    # "i":I
    :cond_1
    and-int/lit8 v5, p5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE2:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    const-wide v5, 0x3fe921fb1762f314L    # 0.78539805

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 288
    .local v23, "CosAngle":D
    const-wide v5, 0x3fe921fb1762f314L    # 0.78539805

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 289
    .local v34, "SinAngle":D
    sub-int v5, p4, v26

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 290
    .local v8, "X1":I
    sub-int v5, p4, v26

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 291
    .local v9, "Y1":I
    const-string v16, "NE"

    const/16 v20, 0x4

    int-to-double v5, v11

    const-wide v13, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v5, v13

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v15, p0

    move-object/from16 v17, p1

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v22, v12

    invoke-virtual/range {v15 .. v22}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 293
    const-wide v5, -0x4016de04e89d0cecL    # -0.78539805

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 294
    const-wide v5, -0x4016de04e89d0cecL    # -0.78539805

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 295
    sub-int v5, p4, v26

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 296
    sub-int v5, p4, v26

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 297
    const-string v16, "SE"

    const/16 v20, 0x4

    int-to-double v5, v11

    const-wide v13, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v5, v13

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v15, p0

    move-object/from16 v17, p1

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v22, v12

    invoke-virtual/range {v15 .. v22}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 299
    const-wide v5, -0x3ffd2683ae75c9b1L    # -2.35619415

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 300
    const-wide v5, -0x3ffd2683ae75c9b1L    # -2.35619415

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 301
    sub-int v5, p4, v26

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 302
    sub-int v5, p4, v26

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 303
    const-string v16, "SW"

    const/16 v20, 0x4

    int-to-double v5, v11

    const-wide v13, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v5, v13

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v15, p0

    move-object/from16 v17, p1

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v22, v12

    invoke-virtual/range {v15 .. v22}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 305
    const-wide v5, -0x3ff0958622c45027L    # -3.92699025

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 306
    const-wide v5, -0x3ff0958622c45027L    # -3.92699025

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 307
    sub-int v5, p4, v26

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 308
    sub-int v5, p4, v26

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 309
    const-string v16, "NW"

    const/16 v20, 0x4

    int-to-double v5, v11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v5, v10

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v15, p0

    move-object/from16 v17, p1

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v22, v12

    invoke-virtual/range {v15 .. v22}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 311
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_5
    const/16 v5, 0x8

    move/from16 v0, v38

    move v1, v5

    if-lt v0, v1, :cond_e

    .line 333
    and-int/lit8 v5, p5, 0x1

    if-nez v5, :cond_11

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 337
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0xc

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    .end local v8    # "X1":I
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE2:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 340
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 343
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0x8

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 358
    .end local v9    # "Y1":I
    .end local v23    # "CosAngle":D
    .end local v34    # "SinAngle":D
    .end local v38    # "i":I
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 359
    return-void

    .line 149
    .end local v11    # "DigitTextSize":I
    .end local v12    # "BoldText":Z
    .end local v25    # "DigitOffset":I
    .end local v26    # "DigitOffset2":I
    .end local v27    # "MajorTickLength":I
    .end local v28    # "MajorTickWidth":I
    .end local v29    # "MinorTickLength":I
    .end local v30    # "MinorTickWidth":I
    .end local v31    # "RimSize":I
    .end local v32    # "RoseOffset":I
    .end local v33    # "RoseOffset2":I
    :cond_3
    const/16 v30, 0x1

    .line 150
    .restart local v30    # "MinorTickWidth":I
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v29

    .line 151
    .restart local v29    # "MinorTickLength":I
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v28

    .line 152
    .restart local v28    # "MajorTickWidth":I
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v27

    .line 153
    .restart local v27    # "MajorTickLength":I
    const/16 v5, 0x12

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    .line 154
    .restart local v11    # "DigitTextSize":I
    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v25

    .line 155
    .restart local v25    # "DigitOffset":I
    const/16 v5, 0x19

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v26

    .line 156
    .restart local v26    # "DigitOffset2":I
    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v32

    .line 157
    .restart local v32    # "RoseOffset":I
    const/16 v5, 0x23

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v33

    .line 158
    .restart local v33    # "RoseOffset2":I
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v31

    .line 159
    .restart local v31    # "RimSize":I
    const/4 v12, 0x0

    .restart local v12    # "BoldText":Z
    goto/16 :goto_0

    .line 188
    .restart local v38    # "i":I
    :cond_4
    const-wide v5, 0x4056800000000000L    # 90.0

    mul-int/lit8 v7, v38, 0x5

    int-to-double v7, v7

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 189
    .restart local v23    # "CosAngle":D
    const-wide v5, 0x4056800000000000L    # 90.0

    mul-int/lit8 v7, v38, 0x5

    int-to-double v7, v7

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 190
    .restart local v34    # "SinAngle":D
    sub-int v5, p4, v29

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 191
    .restart local v8    # "X1":I
    sub-int v5, p4, v29

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 192
    .restart local v9    # "Y1":I
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v36, p2, v5

    .line 193
    .local v36, "X2":I
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v37, p3, v5

    .line 194
    .local v37, "Y2":I
    int-to-float v6, v8

    int-to-float v7, v9

    move/from16 v0, v36

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1

    .line 200
    .end local v23    # "CosAngle":D
    .end local v34    # "SinAngle":D
    .end local v36    # "X2":I
    .end local v37    # "Y2":I
    :cond_5
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide v7, v0

    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 201
    .restart local v23    # "CosAngle":D
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide v7, v0

    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 202
    .restart local v34    # "SinAngle":D
    sub-int v5, p4, v29

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 203
    .restart local v8    # "X1":I
    sub-int v5, p4, v29

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 204
    .restart local v9    # "Y1":I
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v36, p2, v5

    .line 205
    .restart local v36    # "X2":I
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v37, p3, v5

    .line 206
    .restart local v37    # "Y2":I
    int-to-float v6, v8

    int-to-float v7, v9

    move/from16 v0, v36

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 212
    .end local v23    # "CosAngle":D
    .end local v34    # "SinAngle":D
    .end local v36    # "X2":I
    .end local v37    # "Y2":I
    :cond_6
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide v7, v0

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 213
    .restart local v23    # "CosAngle":D
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide v7, v0

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 214
    .restart local v34    # "SinAngle":D
    sub-int v5, p4, v27

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 215
    .restart local v8    # "X1":I
    sub-int v5, p4, v27

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 216
    .restart local v9    # "Y1":I
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v36, p2, v5

    .line 217
    .restart local v36    # "X2":I
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v37, p3, v5

    .line 218
    .restart local v37    # "Y2":I
    int-to-float v6, v8

    int-to-float v7, v9

    move/from16 v0, v36

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 239
    .end local v23    # "CosAngle":D
    .end local v34    # "SinAngle":D
    .end local v36    # "X2":I
    .end local v37    # "Y2":I
    :cond_7
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide v7, v0

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 240
    .restart local v23    # "CosAngle":D
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide v7, v0

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 241
    .restart local v34    # "SinAngle":D
    sub-int v5, p4, v25

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 242
    .restart local v8    # "X1":I
    sub-int v5, p4, v25

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 243
    .restart local v9    # "Y1":I
    if-nez v38, :cond_9

    .line 245
    const-string v6, "N"

    const/4 v10, 0x4

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 237
    :cond_8
    :goto_7
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_4

    .line 247
    :cond_9
    const/4 v5, 0x3

    move/from16 v0, v38

    move v1, v5

    if-ne v0, v1, :cond_a

    .line 249
    const-string v6, "E"

    const/4 v10, 0x4

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto :goto_7

    .line 251
    :cond_a
    const/4 v5, 0x6

    move/from16 v0, v38

    move v1, v5

    if-ne v0, v1, :cond_b

    .line 253
    const-string v6, "S"

    const/4 v10, 0x4

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto :goto_7

    .line 255
    :cond_b
    const/16 v5, 0x9

    move/from16 v0, v38

    move v1, v5

    if-ne v0, v1, :cond_c

    .line 257
    const-string v6, "W"

    const/4 v10, 0x4

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto :goto_7

    .line 261
    :cond_c
    and-int/lit8 v5, p5, 0x1

    if-nez v5, :cond_8

    .line 263
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0x400

    move v5, v0

    const/16 v6, 0x400

    if-ne v5, v6, :cond_d

    .line 265
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide v7, v0

    const-wide v9, 0x3feb333333333333L    # 0.85

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 266
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide v9, v0

    const-wide v13, 0x3feb333333333333L    # 0.85

    mul-double/2addr v9, v13

    sub-double/2addr v5, v9

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 267
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    mul-int/lit8 v10, v38, 0x1e

    int-to-double v13, v10

    const-wide v15, 0x4031c72b020c49baL    # 17.778

    mul-double/2addr v13, v15

    double-to-int v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 275
    .local v14, "s":Ljava/lang/String;
    :goto_8
    const/16 v18, 0x4

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v13 .. v20}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_7

    .line 271
    .end local v14    # "s":Ljava/lang/String;
    :cond_d
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide v7, v0

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v8, p2, v5

    .line 272
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide v9, v0

    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v9, v13

    sub-double/2addr v5, v9

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v9, p3, v5

    .line 273
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    mul-int/lit8 v10, v38, 0x1e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "s":Ljava/lang/String;
    goto :goto_8

    .line 313
    .end local v14    # "s":Ljava/lang/String;
    :cond_e
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide v7, v0

    const-wide v9, 0x4046800000000000L    # 45.0

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .end local v9    # "Y1":I
    move-result-wide v23

    .line 314
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide v7, v0

    const-wide v9, 0x4046800000000000L    # 45.0

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 315
    move/from16 v8, p2

    .line 316
    move/from16 v9, p3

    .line 317
    .restart local v9    # "Y1":I
    if-eqz v38, :cond_f

    const/4 v5, 0x2

    move/from16 v0, v38

    move v1, v5

    if-eq v0, v1, :cond_f

    const/4 v5, 0x4

    move/from16 v0, v38

    move v1, v5

    if-eq v0, v1, :cond_f

    const/4 v5, 0x6

    move/from16 v0, v38

    move v1, v5

    if-ne v0, v1, :cond_10

    .line 319
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 320
    sub-int v5, p4, v32

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v36, p2, v5

    .line 321
    .restart local v36    # "X2":I
    sub-int v5, p4, v32

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v37, p3, v5

    .line 322
    .restart local v37    # "Y2":I
    move v0, v8

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 311
    :goto_9
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_5

    .line 326
    .end local v36    # "X2":I
    .end local v37    # "Y2":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    sub-int v5, p4, v33

    int-to-double v5, v5

    mul-double v5, v5, v23

    double-to-int v5, v5

    add-int v36, p2, v5

    .line 328
    .restart local v36    # "X2":I
    sub-int v5, p4, v33

    int-to-double v5, v5

    mul-double v5, v5, v34

    double-to-int v5, v5

    sub-int v37, p3, v5

    .line 329
    .restart local v37    # "Y2":I
    move v0, v8

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 347
    .end local v36    # "X2":I
    .end local v37    # "Y2":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0x8

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    .end local v8    # "X1":I
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE2:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 352
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x7

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 355
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method public DrawDayNightTerminator(Landroid/graphics/Canvas;Landroid/graphics/Rect;DD)V
    .locals 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcMap"    # Landroid/graphics/Rect;
    .param p3, "SolarDeclination"    # D
    .param p5, "SolarHourAngle"    # D

    .prologue
    .line 1769
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int v15, v5, v6

    .line 1770
    .local v15, "MapWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v14, v5, v6

    .line 1771
    .local v14, "MapHeight":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v6, v14, 0x2

    add-int v30, v5, v6

    .line 1772
    .local v30, "y0":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v15, 0x2

    add-int v29, v5, v6

    .line 1778
    .local v29, "x0":I
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    int-to-double v7, v14

    div-double v12, v5, v7

    .line 1780
    .local v12, "K":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0x30

    sget v7, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_FORE:I

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    sget v8, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_FORE:I

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    sget v9, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_FORE:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1786
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v6, v5

    move/from16 v0, v30

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    add-int/2addr v5, v15

    int-to-float v8, v5

    move/from16 v0, v30

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1787
    move/from16 v0, v29

    int-to-float v0, v0

    move v6, v0

    div-int/lit8 v5, v14, 0x2

    sub-int v5, v30, v5

    int-to-float v7, v5

    move/from16 v0, v29

    int-to-float v0, v0

    move v8, v0

    div-int/lit8 v5, v14, 0x2

    add-int v5, v5, v30

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1791
    int-to-double v5, v15

    const-wide v7, 0x4076800000000000L    # 360.0

    div-double v16, v5, v7

    .line 1792
    .local v16, "XInc":D
    int-to-double v5, v14

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double v18, v5, v7

    .line 1793
    .local v18, "YInc":D
    mul-double v27, p5, v16

    .line 1795
    .local v27, "tau":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v16, v5

    if-gez v5, :cond_0

    .line 1797
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 1800
    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v18, v5

    if-gez v5, :cond_1

    .line 1802
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 1805
    :cond_1
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 1806
    .local v11, "DayNightPath":Landroid/graphics/Path;
    const-wide/16 v5, 0x0

    cmpl-double v5, p3, v5

    if-ltz v5, :cond_2

    .line 1808
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1816
    :goto_0
    div-int/lit8 v5, v15, 0x2

    move v0, v5

    neg-int v0, v0

    move/from16 v22, v0

    .local v22, "i":I
    :goto_1
    div-int/lit8 v5, v15, 0x2

    move/from16 v0, v22

    move v1, v5

    if-le v0, v1, :cond_3

    .line 1832
    const-wide/16 v5, 0x0

    cmpl-double v5, p3, v5

    if-ltz v5, :cond_4

    .line 1834
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1835
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1843
    :goto_2
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0x60

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1851
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1852
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1853
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    sub-int v5, v29, v5

    const/4 v6, 0x0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-double v6, p3, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    sub-int v6, v30, v6

    const/4 v7, 0x0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDipF(F)F

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxGpsView;->DrawSun(Landroid/graphics/Canvas;FFF)V

    .line 1854
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1855
    return-void

    .line 1812
    .end local v22    # "i":I
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto/16 :goto_0

    .line 1818
    .restart local v22    # "i":I
    :cond_3
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide v5, v0

    add-double v23, v5, v27

    .line 1819
    .local v23, "longitude":D
    mul-double v5, v23, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    neg-double v5, v5

    mul-double v7, p3, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    div-double v25, v5, v7

    .line 1820
    .local v25, "tanLat":D
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    div-double v20, v5, v12

    .line 1821
    .local v20, "arctanLat":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    sub-int v31, v30, v5

    .line 1828
    .local v31, "y1":I
    add-int v5, v29, v22

    int-to-float v5, v5

    move/from16 v0, v31

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1816
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide v5, v0

    add-double v5, v5, v16

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_1

    .line 1839
    .end local v20    # "arctanLat":D
    .end local v23    # "longitude":D
    .end local v25    # "tanLat":D
    .end local v31    # "y1":I
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1840
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2
.end method

.method public DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Index"    # I
    .param p3, "XPos"    # I
    .param p4, "YPos"    # I
    .param p5, "Width"    # I
    .param p6, "Height"    # I
    .param p7, "Angle"    # F
    .param p8, "Colour"    # I

    .prologue
    .line 939
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFIII)V

    .line 940
    return-void
.end method

.method public DrawDialPointer(Landroid/graphics/Canvas;IIIIIFIII)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Index"    # I
    .param p3, "XPos"    # I
    .param p4, "YPos"    # I
    .param p5, "Width"    # I
    .param p6, "Height"    # I
    .param p7, "Angle"    # F
    .param p8, "ForeColour"    # I
    .param p9, "BackColour"    # I
    .param p10, "PenWidth"    # I

    .prologue
    .line 944
    const-wide v9, 0x4076800000000000L    # 360.0

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide v11, v0

    sub-double/2addr v9, v11

    const-wide v11, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 945
    .local v4, "CosAngle":D
    const-wide v9, 0x4076800000000000L    # 360.0

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide v11, v0

    sub-double/2addr v9, v11

    const-wide v11, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 947
    .local v7, "SinAngle":D
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 949
    .local v6, "PointerPath":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 950
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    move-object v0, p1

    move/from16 v1, p7

    move v2, v9

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 951
    packed-switch p2, :pswitch_data_0

    .line 955
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 956
    div-int/lit8 v9, p5, 0x2

    sub-int v9, p3, v9

    int-to-float v9, v9

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 957
    div-int/lit8 v9, p5, 0x2

    sub-int v9, p3, v9

    int-to-float v9, v9

    add-int v10, p4, p6

    const/16 v11, 0xc

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 958
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    add-int v10, p4, p6

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 959
    div-int/lit8 v9, p5, 0x2

    add-int v9, v9, p3

    int-to-float v9, v9

    add-int v10, p4, p6

    const/16 v11, 0xc

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 960
    div-int/lit8 v9, p5, 0x2

    add-int v9, v9, p3

    int-to-float v9, v9

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 961
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1009
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 1010
    iget-object v9, p0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, p10

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1011
    iget-object v9, p0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1012
    iget-object v9, p0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1013
    iget-object v9, p0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1015
    move/from16 v0, p9

    move/from16 v1, p8

    if-eq v0, v1, :cond_0

    .line 1017
    iget-object v9, p0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1018
    iget-object v9, p0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1019
    iget-object v9, p0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1022
    :cond_0
    iget-object v9, p0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1023
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1024
    return-void

    .line 965
    :pswitch_0
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 966
    div-int/lit8 v9, p5, 0x2

    sub-int v9, p3, v9

    int-to-float v9, v9

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 967
    div-int/lit8 v9, p5, 0x6

    sub-int v9, p3, v9

    int-to-float v9, v9

    add-int v10, p4, p6

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 968
    div-int/lit8 v9, p5, 0x6

    add-int v9, v9, p3

    int-to-float v9, v9

    add-int v10, p4, p6

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 969
    div-int/lit8 v9, p5, 0x2

    add-int v9, v9, p3

    int-to-float v9, v9

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 970
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 974
    :pswitch_1
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 975
    div-int/lit8 v9, p5, 0x2

    sub-int v9, p3, v9

    int-to-float v9, v9

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 976
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    add-int v10, p4, p6

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 979
    div-int/lit8 v9, p5, 0x2

    add-int v9, v9, p3

    int-to-float v9, v9

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 980
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 984
    :pswitch_2
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 985
    div-int/lit8 v9, p5, 0x2

    sub-int v9, p3, v9

    int-to-float v9, v9

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 986
    const/4 v9, 0x2

    sub-int v9, p3, v9

    int-to-float v9, v9

    add-int v10, p4, p6

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 987
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    add-int v10, p4, p6

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 988
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 992
    :pswitch_3
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    div-int/lit8 v10, p6, 0x2

    sub-int v10, p4, v10

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 993
    div-int/lit8 v9, p5, 0x2

    sub-int v9, p3, v9

    int-to-float v9, v9

    div-int/lit8 v10, p6, 0x4

    add-int v10, v10, p4

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 994
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 995
    div-int/lit8 v9, p5, 0x2

    add-int v9, v9, p3

    int-to-float v9, v9

    div-int/lit8 v10, p6, 0x4

    add-int v10, v10, p4

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 996
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    div-int/lit8 v10, p6, 0x2

    sub-int v10, p4, v10

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 951
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public DrawDirectionToPointer(Landroid/graphics/Canvas;IIIFIII)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "XPos"    # I
    .param p3, "YPos"    # I
    .param p4, "Radius"    # I
    .param p5, "Angle"    # F
    .param p6, "ForeColour"    # I
    .param p7, "BackColour"    # I
    .param p8, "PenWidth"    # I

    .prologue
    .line 1028
    const-wide v13, 0x4076800000000000L    # 360.0

    move/from16 v0, p5

    float-to-double v0, v0

    move-wide v15, v0

    sub-double/2addr v13, v15

    const-wide v15, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 1029
    .local v4, "CosAngle":D
    const-wide v13, 0x4076800000000000L    # 360.0

    move/from16 v0, p5

    float-to-double v0, v0

    move-wide v15, v0

    sub-double/2addr v13, v15

    const-wide v15, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 1031
    .local v9, "SinAngle":D
    const-wide v13, 0x40154b0327646d51L    # 5.323254218582705

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 1032
    .local v6, "CosSlope":D
    const-wide v13, 0x40154b0327646d51L    # 5.323254218582705

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 1034
    .local v11, "SinSlope":D
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 1036
    .local v8, "PointerPath":Landroid/graphics/Path;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1037
    move/from16 v0, p2

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v14, v0

    move-object/from16 v0, p1

    move/from16 v1, p5

    move v2, v13

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1039
    move/from16 v0, p2

    int-to-float v0, v0

    move v13, v0

    sub-int v14, p3, p4

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1040
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v13, v0

    mul-double/2addr v13, v6

    double-to-int v13, v13

    add-int v13, v13, p2

    int-to-float v13, v13

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v14, v0

    mul-double/2addr v14, v11

    double-to-int v14, v14

    sub-int v14, p3, v14

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1041
    move/from16 v0, p2

    int-to-float v0, v0

    move v13, v0

    div-int/lit8 v14, p4, 0x4

    add-int v14, v14, p3

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1042
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v13, v0

    mul-double/2addr v13, v6

    double-to-int v13, v13

    sub-int v13, p2, v13

    int-to-float v13, v13

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v14, v0

    mul-double/2addr v14, v11

    double-to-int v14, v14

    sub-int v14, p3, v14

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1043
    move/from16 v0, p2

    int-to-float v0, v0

    move v13, v0

    sub-int v14, p3, p4

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1044
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v14, v0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1051
    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    .line 1052
    move/from16 v0, p2

    int-to-float v0, v0

    move v13, v0

    sub-int v14, p3, p4

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1053
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v13, v0

    mul-double/2addr v13, v6

    double-to-int v13, v13

    add-int v13, v13, p2

    int-to-float v13, v13

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v14, v0

    mul-double/2addr v14, v11

    double-to-int v14, v14

    sub-int v14, p3, v14

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1054
    move/from16 v0, p2

    int-to-float v0, v0

    move v13, v0

    div-int/lit8 v14, p4, 0x4

    add-int v14, v14, p3

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1056
    move/from16 v0, p2

    int-to-float v0, v0

    move v13, v0

    sub-int v14, p3, p4

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1057
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v14, v0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1072
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1073
    return-void
.end method

.method public DrawLocalTime(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/location/Location;ZII)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcBounds"    # Landroid/graphics/Rect;
    .param p3, "CurrentLocation"    # Landroid/location/Location;
    .param p4, "ShowSeconds"    # Z
    .param p5, "TimeFormat"    # I
    .param p6, "Colour"    # I

    .prologue
    const/16 v0, 0xc

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1523
    if-eqz p4, :cond_3

    .line 1525
    if-nez p3, :cond_0

    .line 1527
    const-string v1, "00:00:00"

    .line 1574
    .local v1, "sField":Ljava/lang/String;
    :goto_0
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/view/MxGpsView;->TextOutAutoSize(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V

    .line 1575
    return-void

    .line 1531
    .end local v1    # "sField":Ljava/lang/String;
    :cond_0
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1532
    .local v7, "LTime":Landroid/text/format/Time;
    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1533
    iget v8, v7, Landroid/text/format/Time;->hour:I

    .line 1534
    .local v8, "hour":I
    if-ne p5, v4, :cond_1

    .line 1536
    if-le v8, v0, :cond_2

    .line 1538
    add-int/lit8 v8, v8, -0xc

    .line 1545
    :cond_1
    :goto_1
    const-string v0, "%02d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, v7, Landroid/text/format/Time;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, v7, Landroid/text/format/Time;->second:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "sField":Ljava/lang/String;
    goto :goto_0

    .line 1542
    .end local v1    # "sField":Ljava/lang/String;
    :cond_2
    if-nez v8, :cond_1

    const/16 v8, 0xc

    goto :goto_1

    .line 1550
    .end local v7    # "LTime":Landroid/text/format/Time;
    .end local v8    # "hour":I
    :cond_3
    if-nez p3, :cond_4

    .line 1552
    const-string v1, "00:00"

    .restart local v1    # "sField":Ljava/lang/String;
    goto :goto_0

    .line 1556
    .end local v1    # "sField":Ljava/lang/String;
    :cond_4
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1557
    .restart local v7    # "LTime":Landroid/text/format/Time;
    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1558
    iget v8, v7, Landroid/text/format/Time;->hour:I

    .line 1559
    .restart local v8    # "hour":I
    if-ne p5, v4, :cond_5

    .line 1561
    if-le v8, v0, :cond_6

    .line 1563
    add-int/lit8 v8, v8, -0xc

    .line 1570
    :cond_5
    :goto_2
    const-string v0, "%02d:%02d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, v7, Landroid/text/format/Time;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "sField":Ljava/lang/String;
    goto :goto_0

    .line 1567
    .end local v1    # "sField":Ljava/lang/String;
    :cond_6
    if-nez v8, :cond_5

    const/16 v8, 0xc

    goto :goto_2
.end method

.method public DrawMarineCompass(Landroid/graphics/Canvas;Landroid/graphics/Rect;IF)V
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcBounds"    # Landroid/graphics/Rect;
    .param p3, "Style"    # I
    .param p4, "Angle"    # F

    .prologue
    .line 559
    if-nez p3, :cond_0

    .line 561
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v31

    .line 562
    .local v31, "MinorTickWidth":I
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v30

    .line 563
    .local v30, "MinorTickLength":I
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v29

    .line 564
    .local v29, "MajorTickWidth":I
    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v28

    .line 565
    .local v28, "MajorTickLength":I
    const/16 v5, 0x18

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    .line 566
    .local v11, "DigitTextSize":I
    const/16 v5, 0x28

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v26

    .line 567
    .local v26, "DigitOffset":I
    const/16 v5, 0x2d

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v27

    .line 568
    .local v27, "DigitOffset2":I
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v33

    .line 569
    .local v33, "RimSize":I
    const/4 v12, 0x1

    .line 584
    .local v12, "BoldText":Z
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int v23, v5, v6

    .line 585
    .local v23, "CellWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v22, v5, v6

    .line 586
    .local v22, "CellHeight":I
    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 588
    div-int/lit8 v32, v23, 0x2

    .line 594
    .local v32, "Radius":I
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v23, 0x2

    add-int v16, v5, v6

    .line 595
    .local v16, "XPos":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v6, v22, 0x2

    add-int v17, v5, v6

    .line 597
    .local v17, "YPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 600
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 604
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    sub-int v7, v32, v33

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 613
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_2
    const/16 v5, 0x48

    move/from16 v0, v38

    move v1, v5

    if-lt v0, v1, :cond_2

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 625
    const/16 v38, 0x0

    :goto_3
    const/16 v5, 0xc

    move/from16 v0, v38

    move v1, v5

    if-lt v0, v1, :cond_3

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 694
    const/16 v38, 0x0

    :goto_4
    const/16 v5, 0xc

    move/from16 v0, v38

    move v1, v5

    if-lt v0, v1, :cond_4

    .line 720
    if-nez p3, :cond_7

    .line 722
    const/4 v15, 0x2

    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v18

    mul-int/lit8 v5, v32, 0x11

    div-int/lit8 v19, v5, 0x14

    move/from16 v0, p4

    float-to-double v0, v0

    move-wide v13, v0

    const-wide v20, 0x4066800000000000L    # 180.0

    sub-double v13, v13, v20

    move-wide v0, v13

    double-to-float v0, v0

    move/from16 v20, v0

    sget v21, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_ORANGE_SDIM:I

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_ORANGE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 725
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0x12

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 728
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0xc

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 740
    :goto_5
    return-void

    .line 573
    .end local v11    # "DigitTextSize":I
    .end local v12    # "BoldText":Z
    .end local v16    # "XPos":I
    .end local v17    # "YPos":I
    .end local v22    # "CellHeight":I
    .end local v23    # "CellWidth":I
    .end local v26    # "DigitOffset":I
    .end local v27    # "DigitOffset2":I
    .end local v28    # "MajorTickLength":I
    .end local v29    # "MajorTickWidth":I
    .end local v30    # "MinorTickLength":I
    .end local v31    # "MinorTickWidth":I
    .end local v32    # "Radius":I
    .end local v33    # "RimSize":I
    .end local v38    # "i":I
    :cond_0
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v31

    .line 574
    .restart local v31    # "MinorTickWidth":I
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v30

    .line 575
    .restart local v30    # "MinorTickLength":I
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v29

    .line 576
    .restart local v29    # "MajorTickWidth":I
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v28

    .line 577
    .restart local v28    # "MajorTickLength":I
    const/16 v5, 0xb

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    .line 578
    .restart local v11    # "DigitTextSize":I
    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v26

    .line 579
    .restart local v26    # "DigitOffset":I
    const/16 v5, 0x16

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v27

    .line 580
    .restart local v27    # "DigitOffset2":I
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v33

    .line 581
    .restart local v33    # "RimSize":I
    const/4 v12, 0x0

    .restart local v12    # "BoldText":Z
    goto/16 :goto_0

    .line 592
    .restart local v22    # "CellHeight":I
    .restart local v23    # "CellWidth":I
    :cond_1
    div-int/lit8 v32, v22, 0x2

    .restart local v32    # "Radius":I
    goto/16 :goto_1

    .line 615
    .restart local v16    # "XPos":I
    .restart local v17    # "YPos":I
    .restart local v38    # "i":I
    :cond_2
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    mul-double v18, v18, v20

    sub-double v13, v13, v18

    const-wide v18, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 616
    .local v24, "CosAngle":D
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    mul-double v18, v18, v20

    sub-double v13, v13, v18

    const-wide v18, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 617
    .local v34, "SinAngle":D
    sub-int v5, v32, v30

    int-to-double v13, v5

    mul-double v13, v13, v24

    double-to-int v5, v13

    add-int v8, v16, v5

    .line 618
    .local v8, "X1":I
    sub-int v5, v32, v30

    int-to-double v13, v5

    mul-double v13, v13, v34

    double-to-int v5, v13

    sub-int v9, v17, v5

    .line 619
    .local v9, "Y1":I
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide v13, v0

    mul-double v13, v13, v24

    double-to-int v5, v13

    add-int v36, v16, v5

    .line 620
    .local v36, "X2":I
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide v13, v0

    mul-double v13, v13, v34

    double-to-int v5, v13

    sub-int v37, v17, v5

    .line 621
    .local v37, "Y2":I
    int-to-float v6, v8

    int-to-float v7, v9

    move/from16 v0, v36

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 613
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 627
    .end local v24    # "CosAngle":D
    .end local v34    # "SinAngle":D
    .end local v36    # "X2":I
    .end local v37    # "Y2":I
    :cond_3
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x403e000000000000L    # 30.0

    mul-double v18, v18, v20

    sub-double v13, v13, v18

    const-wide v18, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 628
    .restart local v24    # "CosAngle":D
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x403e000000000000L    # 30.0

    mul-double v18, v18, v20

    sub-double v13, v13, v18

    const-wide v18, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 629
    .restart local v34    # "SinAngle":D
    sub-int v5, v32, v28

    int-to-double v13, v5

    mul-double v13, v13, v24

    double-to-int v5, v13

    add-int v8, v16, v5

    .line 630
    .restart local v8    # "X1":I
    sub-int v5, v32, v28

    int-to-double v13, v5

    mul-double v13, v13, v34

    double-to-int v5, v13

    sub-int v9, v17, v5

    .line 631
    .restart local v9    # "Y1":I
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide v13, v0

    mul-double v13, v13, v24

    double-to-int v5, v13

    add-int v36, v16, v5

    .line 632
    .restart local v36    # "X2":I
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide v13, v0

    mul-double v13, v13, v34

    double-to-int v5, v13

    sub-int v37, v17, v5

    .line 633
    .restart local v37    # "Y2":I
    int-to-float v6, v8

    int-to-float v7, v9

    move/from16 v0, v36

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 625
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 696
    .end local v24    # "CosAngle":D
    .end local v34    # "SinAngle":D
    .end local v36    # "X2":I
    .end local v37    # "Y2":I
    :cond_4
    const-wide v13, 0x4056800000000000L    # 90.0

    mul-int/lit8 v5, v38, 0x1e

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v13, v13, v18

    const-wide v18, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 697
    .restart local v24    # "CosAngle":D
    const-wide v13, 0x4056800000000000L    # 90.0

    mul-int/lit8 v5, v38, 0x1e

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v13, v13, v18

    const-wide v18, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 698
    .restart local v34    # "SinAngle":D
    const/4 v5, 0x7

    move/from16 v0, v38

    move v1, v5

    if-le v0, v1, :cond_5

    const/16 v5, 0xb

    move/from16 v0, v38

    move v1, v5

    if-ge v0, v1, :cond_5

    .line 700
    sub-int v5, v32, v27

    int-to-double v13, v5

    mul-double v13, v13, v24

    double-to-int v5, v13

    add-int v8, v16, v5

    .line 701
    .restart local v8    # "X1":I
    sub-int v5, v32, v27

    int-to-double v13, v5

    mul-double v13, v13, v34

    double-to-int v5, v13

    sub-int v9, v17, v5

    .line 709
    .restart local v9    # "Y1":I
    :goto_6
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x400

    move v5, v0

    const/16 v6, 0x400

    if-ne v5, v6, :cond_6

    .line 711
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    mul-int/lit8 v10, v38, 0x1e

    int-to-double v13, v10

    const-wide v18, 0x4031c72b020c49baL    # 17.778

    mul-double v13, v13, v18

    double-to-int v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, "s":Ljava/lang/String;
    :goto_7
    const/4 v10, 0x4

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 694
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_4

    .line 705
    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    :cond_5
    sub-int v5, v32, v26

    int-to-double v13, v5

    mul-double v13, v13, v24

    double-to-int v5, v13

    add-int v8, v16, v5

    .line 706
    .restart local v8    # "X1":I
    sub-int v5, v32, v26

    int-to-double v13, v5

    mul-double v13, v13, v34

    double-to-int v5, v13

    sub-int v9, v17, v5

    .restart local v9    # "Y1":I
    goto :goto_6

    .line 715
    :cond_6
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    mul-int/lit8 v10, v38, 0x1e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_7

    .line 732
    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    .end local v24    # "CosAngle":D
    .end local v34    # "SinAngle":D
    :cond_7
    const/4 v15, 0x2

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v18

    mul-int/lit8 v5, v32, 0x11

    div-int/lit8 v19, v5, 0x14

    move/from16 v0, p4

    float-to-double v0, v0

    move-wide v13, v0

    const-wide v20, 0x4066800000000000L    # 180.0

    sub-double v13, v13, v20

    move-wide v0, v13

    double-to-float v0, v0

    move/from16 v20, v0

    sget v21, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_ORANGE_SDIM:I

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_ORANGE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 735
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 738
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5
.end method

.method public DrawPositionMarker(Landroid/graphics/Canvas;Landroid/graphics/Rect;DDII)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcMap"    # Landroid/graphics/Rect;
    .param p3, "Latitude"    # D
    .param p5, "Longitude"    # D
    .param p7, "MarkerSize"    # I
    .param p8, "BorderSize"    # I

    .prologue
    .line 1892
    const-wide v17, 0x4066800000000000L    # 180.0

    add-double v17, v17, p5

    const-wide v19, 0x40ac200000000000L    # 3600.0

    mul-double v9, v17, v19

    .line 1893
    .local v9, "WGS84Easting":D
    const-wide v17, 0x4056800000000000L    # 90.0

    add-double v17, v17, p3

    const-wide v19, 0x40ac200000000000L    # 3600.0

    mul-double v13, v17, v19

    .line 1894
    .local v13, "WGS84Northing":D
    const-wide v15, 0x4133c68000000000L    # 1296000.0

    .line 1895
    .local v15, "WGS84Width":D
    const-wide v11, 0x4123c68000000000L    # 648000.0

    .line 1896
    .local v11, "WGS84Height":D
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 1897
    .local v6, "MapWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 1899
    .local v5, "MapHeight":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    div-double v18, v9, v15

    move v0, v6

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v17, v18

    .line 1900
    .local v7, "PosX":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v17, v17, v5

    div-double v18, v13, v11

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    sub-int v8, v17, v18

    .line 1902
    .local v8, "PosY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_MARKER_BORDER:I

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1905
    move v0, v7

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v8

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_MARKER_FILL:I

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1908
    move v0, v7

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v8

    int-to-float v0, v0

    move/from16 v18, v0

    sub-int v19, p7, p8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1910
    return-void
.end method

.method public DrawSNRLegend(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Orientation"    # I
    .param p3, "TextColour"    # I
    .param p4, "rcParent"    # Landroid/graphics/Rect;
    .param p5, "Style"    # I

    .prologue
    .line 1610
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1618
    .local v15, "rcLegend":Landroid/graphics/Rect;
    if-nez p5, :cond_0

    .line 1620
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v9

    .line 1633
    .local v9, "TextSize":I
    :goto_0
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    sub-int v12, v3, v4

    .line 1634
    .local v12, "ParentHeight":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v4, v0

    sub-int v13, v3, v4

    .line 1635
    .local v13, "ParentWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1638
    packed-switch p2, :pswitch_data_0

    .line 1642
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v4, v0

    sub-int/2addr v3, v4

    const/16 v4, 0x1e

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    sub-int v11, v3, v4

    .line 1643
    .local v11, "LegendSize":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    const/16 v4, 0x19

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->left:I

    .line 1644
    iget v3, v15, Landroid/graphics/Rect;->left:I

    int-to-double v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v4, v0

    const/4 v7, 0x0

    aget v4, v4, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    const-wide v7, 0x4058c00000000000L    # 99.0

    div-double/2addr v5, v7

    double-to-int v4, v5

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->right:I

    .line 1645
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    const/16 v4, 0x12

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->top:I

    .line 1646
    iget v3, v15, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v12, 0x3

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->bottom:I

    .line 1647
    const-string v4, "SNR"

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    add-int/lit8 v6, v3, 0x2

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    const/16 v5, 0x12

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    sub-int v7, v3, v5

    const/4 v8, 0x2

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1648
    const-string v4, "00"

    iget v6, v15, Landroid/graphics/Rect;->left:I

    iget v3, v15, Landroid/graphics/Rect;->top:I

    const/16 v5, 0x12

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    sub-int v7, v3, v5

    const/4 v8, 0x5

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1682
    :goto_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    const/4 v3, 0x5

    if-lt v14, v3, :cond_1

    .line 1763
    return-void

    .line 1624
    .end local v9    # "TextSize":I
    .end local v11    # "LegendSize":I
    .end local v12    # "ParentHeight":I
    .end local v13    # "ParentWidth":I
    .end local v14    # "i":I
    :cond_0
    const/16 v3, 0xe

    invoke-static {v3}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v9

    .restart local v9    # "TextSize":I
    goto/16 :goto_0

    .line 1652
    .restart local v12    # "ParentHeight":I
    .restart local v13    # "ParentWidth":I
    :pswitch_0
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    sub-int/2addr v3, v4

    const/16 v4, 0x1e

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    sub-int v11, v3, v4

    .line 1653
    .restart local v11    # "LegendSize":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    const/16 v4, 0x14

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->top:I

    .line 1654
    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-double v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v4, v0

    const/4 v7, 0x0

    aget v4, v4, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    const-wide v7, 0x4058c00000000000L    # 99.0

    div-double/2addr v5, v7

    double-to-int v4, v5

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->bottom:I

    .line 1655
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    const/16 v4, 0x12

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->left:I

    .line 1656
    iget v3, v15, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v13, 0x3

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->right:I

    .line 1657
    const-string v4, "SNR"

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v6, v3, v5

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v7, v3, v5

    const/4 v8, 0x2

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1658
    const-string v4, "00"

    iget v3, v15, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    sub-int v6, v3, v5

    iget v7, v15, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x7

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_1

    .line 1662
    .end local v11    # "LegendSize":I
    :pswitch_1
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v4, v0

    sub-int/2addr v3, v4

    const/16 v4, 0x28

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    sub-int v11, v3, v4

    .line 1663
    .restart local v11    # "LegendSize":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    const/16 v4, 0x1e

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->left:I

    .line 1664
    iget v3, v15, Landroid/graphics/Rect;->left:I

    int-to-double v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v4, v0

    const/4 v7, 0x0

    aget v4, v4, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    const-wide v7, 0x4058c00000000000L    # 99.0

    div-double/2addr v5, v7

    double-to-int v4, v5

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->right:I

    .line 1665
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->top:I

    .line 1666
    iget v3, v15, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v12, 0x3

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->bottom:I

    .line 1667
    const-string v4, "SNR"

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    const/4 v5, 0x6

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v7, v3, v5

    const/4 v8, 0x2

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1668
    const-string v4, "00"

    iget v6, v15, Landroid/graphics/Rect;->left:I

    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v7, v3, v5

    const/4 v8, 0x5

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_1

    .line 1672
    .end local v11    # "LegendSize":I
    :pswitch_2
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    sub-int/2addr v3, v4

    const/16 v4, 0x19

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    sub-int v11, v3, v4

    .line 1673
    .restart local v11    # "LegendSize":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    const/16 v4, 0x14

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->top:I

    .line 1674
    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-double v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v4, v0

    const/4 v7, 0x0

    aget v4, v4, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    const-wide v7, 0x4058c00000000000L    # 99.0

    div-double/2addr v5, v7

    double-to-int v4, v5

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->bottom:I

    .line 1675
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->left:I

    .line 1676
    iget v3, v15, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v13, 0x3

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->right:I

    .line 1677
    const-string v4, "SNR"

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    const/4 v5, 0x6

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v6, v3, v5

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    const/4 v8, 0x2

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1678
    const-string v4, "00"

    iget v3, v15, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v6, v3, v5

    iget v7, v15, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_1

    .line 1684
    .restart local v14    # "i":I
    :cond_1
    if-lez v14, :cond_2

    .line 1686
    packed-switch p2, :pswitch_data_1

    .line 1706
    :cond_2
    :goto_3
    packed-switch v14, :pswitch_data_2

    .line 1735
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1739
    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v6, v0

    aget v6, v6, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1740
    .local v4, "TextBuffer":Ljava/lang/String;
    packed-switch p2, :pswitch_data_3

    .line 1682
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1689
    .end local v4    # "TextBuffer":Ljava/lang/String;
    :pswitch_3
    iget v3, v15, Landroid/graphics/Rect;->left:I

    int-to-double v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v4, v0

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v7, v0

    const/4 v8, 0x1

    sub-int v8, v14, v8

    aget v7, v7, v8

    sub-int/2addr v4, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    const-wide v7, 0x4058c00000000000L    # 99.0

    div-double/2addr v5, v7

    double-to-int v4, v5

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1693
    :pswitch_4
    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-double v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v4, v0

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v7, v0

    const/4 v8, 0x1

    sub-int v8, v14, v8

    aget v7, v7, v8

    sub-int/2addr v4, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    const-wide v7, 0x4058c00000000000L    # 99.0

    div-double/2addr v5, v7

    double-to-int v4, v5

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 1697
    :pswitch_5
    iget v3, v15, Landroid/graphics/Rect;->left:I

    int-to-double v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v4, v0

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v7, v0

    const/4 v8, 0x1

    sub-int v8, v14, v8

    aget v7, v7, v8

    sub-int/2addr v4, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    const-wide v7, 0x4058c00000000000L    # 99.0

    div-double/2addr v5, v7

    double-to-int v4, v5

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .line 1701
    :pswitch_6
    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-double v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v4, v0

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v7, v0

    const/4 v8, 0x1

    sub-int v8, v14, v8

    aget v7, v7, v8

    sub-int/2addr v4, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    const-wide v7, 0x4058c00000000000L    # 99.0

    div-double/2addr v5, v7

    double-to-int v4, v5

    add-int/2addr v3, v4

    iput v3, v15, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 1709
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR1:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1714
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR2:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1719
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR3:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1724
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR4:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1729
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR5:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_4

    .line 1743
    .restart local v4    # "TextBuffer":Ljava/lang/String;
    :pswitch_c
    iget v3, v15, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v6, v3, v5

    iget v3, v15, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    sub-int v7, v3, v5

    const/4 v8, 0x3

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1744
    iget v3, v15, Landroid/graphics/Rect;->right:I

    iput v3, v15, Landroid/graphics/Rect;->left:I

    goto/16 :goto_5

    .line 1748
    :pswitch_d
    iget v3, v15, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    sub-int v6, v3, v5

    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    const/4 v8, 0x7

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1749
    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    iput v3, v15, Landroid/graphics/Rect;->top:I

    goto/16 :goto_5

    .line 1753
    :pswitch_e
    iget v6, v15, Landroid/graphics/Rect;->right:I

    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v7, v3, v5

    const/4 v8, 0x5

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1754
    iget v3, v15, Landroid/graphics/Rect;->right:I

    iput v3, v15, Landroid/graphics/Rect;->left:I

    goto/16 :goto_5

    .line 1758
    :pswitch_f
    iget v3, v15, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v6, v3, v5

    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    add-int v7, v3, v5

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1759
    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    iput v3, v15, Landroid/graphics/Rect;->top:I

    goto/16 :goto_5

    .line 1638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1686
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1706
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1740
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public DrawSatellitePositions(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/location/GpsStatus;F)V
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcBounds"    # Landroid/graphics/Rect;
    .param p3, "Style"    # I
    .param p4, "SatStatus"    # Landroid/location/GpsStatus;
    .param p5, "Angle"    # F

    .prologue
    .line 1088
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1102
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int v27, v5, v6

    .line 1103
    .local v27, "RadarPanelWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v26, v5, v6

    .line 1105
    .local v26, "RadarPanelHeight":I
    move/from16 v0, v27

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 1107
    div-int/lit8 v28, v27, 0x2

    .line 1114
    .local v28, "RadarRadius":I
    :goto_0
    and-int/lit8 v5, p3, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 1116
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v5

    sub-int v28, v28, v5

    .line 1122
    :cond_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v27, 0x2

    add-int v24, v5, v6

    .line 1123
    .local v24, "RadarCenterXPos":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v6, v26, 0x2

    add-int v25, v5, v6

    .line 1125
    .local v25, "RadarCenterYPos":I
    move/from16 v0, p5

    neg-float v0, v0

    move v5, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_SAT_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1129
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1131
    and-int/lit8 v5, p3, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_SAT_BACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1135
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x2

    sub-int v7, v28, v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1147
    :goto_1
    and-int/lit8 v5, p3, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 1149
    new-instance v20, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1150
    .local v20, "Dashes":Landroid/graphics/DashPathEffect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_SAT_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1153
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    mul-int/lit8 v7, v28, 0x2

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1154
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    div-int/lit8 v7, v28, 0x3

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1168
    .end local v20    # "Dashes":Landroid/graphics/DashPathEffect;
    :goto_2
    and-int/lit8 v5, p3, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 1170
    new-instance v20, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1171
    .restart local v20    # "Dashes":Landroid/graphics/DashPathEffect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1172
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    sub-int v5, v25, v28

    int-to-float v7, v5

    move/from16 v0, v24

    int-to-float v0, v0

    move v8, v0

    add-int v5, v25, v28

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1173
    sub-int v5, v24, v28

    int-to-float v6, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    add-int v5, v24, v28

    int-to-float v8, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1175
    const-wide v10, 0x3ff0c1520f974cb8L    # 1.0471974

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1176
    .local v32, "cosa":D
    const-wide v10, 0x3ff0c1520f974cb8L    # 1.0471974

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1177
    .local v37, "sina":D
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1178
    .local v8, "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1179
    .local v9, "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1181
    const-wide v10, 0x3fe0c1520f974cb8L    # 0.5235987

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1182
    const-wide v10, 0x3fe0c1520f974cb8L    # 0.5235987

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1183
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1184
    .restart local v8    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1185
    .restart local v9    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1187
    const-wide v10, -0x401f3eadf068b348L    # -0.5235987

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1188
    const-wide v10, -0x401f3eadf068b348L    # -0.5235987

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1189
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1190
    .restart local v8    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1191
    .restart local v9    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1193
    const-wide v10, -0x400f3eadf068b348L    # -1.0471974

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1194
    const-wide v10, -0x400f3eadf068b348L    # -1.0471974

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1195
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1196
    .restart local v8    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1197
    .restart local v9    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1199
    const-wide v10, -0x3fff3eadf068b348L    # -2.0943948

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1200
    const-wide v10, -0x3fff3eadf068b348L    # -2.0943948

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1201
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1202
    .restart local v8    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1203
    .restart local v9    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1205
    const-wide v10, -0x3ffb0e596c82e01aL    # -2.6179935

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1206
    const-wide v10, -0x3ffb0e596c82e01aL    # -2.6179935

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1207
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1208
    .restart local v8    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1209
    .restart local v9    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1211
    const-wide v10, -0x3ff2adb064b739beL    # -3.6651909

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1212
    const-wide v10, -0x3ff2adb064b739beL    # -3.6651909

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1213
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1214
    .restart local v8    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1215
    .restart local v9    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1217
    const-wide v10, -0x3fef3eadf068b348L    # -4.1887896

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1218
    const-wide v10, -0x3fef3eadf068b348L    # -4.1887896

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1219
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v30, v24, v5

    .line 1220
    .local v30, "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v31, v25, v5

    .line 1221
    .local v31, "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move/from16 v9, v31

    .end local v31    # "YPos":I
    .restart local v9    # "YPos":I
    move/from16 v8, v30

    .line 1257
    .end local v20    # "Dashes":Landroid/graphics/DashPathEffect;
    .end local v30    # "XPos":I
    .restart local v8    # "XPos":I
    :goto_3
    and-int/lit8 v5, p3, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1261
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_4
    const/16 v5, 0xc

    move/from16 v0, v34

    move v1, v5

    if-lt v0, v1, :cond_7

    .line 1303
    .end local v34    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1309
    if-eqz p4, :cond_c

    .line 1311
    invoke-virtual/range {p4 .. p4}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v29

    .line 1337
    .local v29, "Satellites":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    :goto_5
    if-eqz v29, :cond_2

    .line 1339
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/view/MxGpsView;->mSatsInView:I

    .line 1340
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    .line 1341
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .line 1342
    .local v35, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1395
    .end local v35    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    :cond_2
    return-void

    .line 1111
    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    .end local v24    # "RadarCenterXPos":I
    .end local v25    # "RadarCenterYPos":I
    .end local v28    # "RadarRadius":I
    .end local v29    # "Satellites":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    .end local v32    # "cosa":D
    .end local v37    # "sina":D
    :cond_3
    div-int/lit8 v28, v26, 0x2

    .restart local v28    # "RadarRadius":I
    goto/16 :goto_0

    .line 1139
    .restart local v24    # "RadarCenterXPos":I
    .restart local v25    # "RadarCenterYPos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_SAT_BACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1141
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x1

    sub-int v7, v28, v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1159
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_SAT_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1162
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    div-int/lit8 v7, v28, 0x2

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1226
    :cond_6
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    sub-int v5, v25, v28

    int-to-float v7, v5

    move/from16 v0, v24

    int-to-float v0, v0

    move v8, v0

    add-int v5, v25, v28

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1227
    sub-int v5, v24, v28

    int-to-float v6, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    add-int v5, v24, v28

    int-to-float v8, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1229
    const-wide v10, 0x3fe921fb1762f314L    # 0.78539805

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1230
    .restart local v32    # "cosa":D
    const-wide v10, 0x3fe921fb1762f314L    # 0.78539805

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1231
    .restart local v37    # "sina":D
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1232
    .restart local v8    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1233
    .restart local v9    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1235
    const-wide v10, -0x4016de04e89d0cecL    # -0.78539805

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1236
    const-wide v10, -0x4016de04e89d0cecL    # -0.78539805

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1237
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1238
    .restart local v8    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1239
    .restart local v9    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1241
    const-wide v10, -0x3ffd2683ae75c9b1L    # -2.35619415

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1242
    const-wide v10, -0x3ffd2683ae75c9b1L    # -2.35619415

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1243
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1244
    .restart local v8    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1245
    .restart local v9    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v8

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "XPos":I
    .end local v9    # "YPos":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1247
    const-wide v10, -0x3ff0958622c45027L    # -3.92699025

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1248
    const-wide v10, -0x3ff0958622c45027L    # -3.92699025

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1249
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v30, v24, v5

    .line 1250
    .restart local v30    # "XPos":I
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v31, v25, v5

    .line 1251
    .restart local v31    # "YPos":I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v9, v31

    .end local v31    # "YPos":I
    .restart local v9    # "YPos":I
    move/from16 v8, v30

    .end local v30    # "XPos":I
    .restart local v8    # "XPos":I
    goto/16 :goto_3

    .line 1263
    .restart local v34    # "i":I
    :cond_7
    const-wide v10, 0x4056800000000000L    # 90.0

    mul-int/lit8 v5, v34, 0x1e

    int-to-double v12, v5

    sub-double/2addr v10, v12

    const-wide v12, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1264
    const-wide v10, 0x4056800000000000L    # 90.0

    mul-int/lit8 v5, v34, 0x1e

    int-to-double v12, v5

    sub-double/2addr v10, v12

    const-wide v12, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1265
    mul-int/lit8 v5, v28, 0x5

    div-int/lit8 v5, v5, 0x6

    int-to-double v10, v5

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1266
    mul-int/lit8 v5, v28, 0x5

    div-int/lit8 v5, v5, 0x6

    int-to-double v10, v5

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1267
    if-nez v34, :cond_9

    .line 1269
    const-string v6, "N"

    .line 1270
    .local v6, "s":Ljava/lang/String;
    and-int/lit8 v5, p3, 0x10

    const/16 v7, 0x10

    if-ne v5, v7, :cond_8

    .line 1272
    const/4 v10, 0x4

    const/16 v5, 0x12

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 1261
    :goto_7
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_4

    .line 1276
    :cond_8
    const/4 v10, 0x4

    const/16 v5, 0x20

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto :goto_7

    .line 1281
    .end local v6    # "s":Ljava/lang/String;
    :cond_9
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x400

    move v5, v0

    const/16 v6, 0x400

    if-ne v5, v6, :cond_a

    .line 1283
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    mul-int/lit8 v10, v34, 0x1e

    int-to-double v10, v10

    const-wide v12, 0x4031c72b020c49baL    # 17.778

    mul-double/2addr v10, v12

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1289
    .restart local v6    # "s":Ljava/lang/String;
    :goto_8
    and-int/lit8 v5, p3, 0x10

    const/16 v7, 0x10

    if-ne v5, v7, :cond_b

    .line 1291
    const/4 v10, 0x4

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto :goto_7

    .line 1287
    .end local v6    # "s":Ljava/lang/String;
    :cond_a
    const-string v5, "%d\u00b0"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    mul-int/lit8 v10, v34, 0x1e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_8

    .line 1295
    :cond_b
    const/4 v10, 0x4

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto :goto_7

    .line 1315
    .end local v6    # "s":Ljava/lang/String;
    .end local v34    # "i":I
    :cond_c
    const/16 v29, 0x0

    .restart local v29    # "Satellites":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    goto/16 :goto_5

    .line 1344
    .restart local v35    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    :cond_d
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/location/GpsSatellite;

    .line 1346
    .local v36, "oSat":Landroid/location/GpsSatellite;
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    const/high16 v7, 0x42b40000    # 90.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    move/from16 v0, v28

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1347
    .local v23, "DistanceFromCenter":I
    const-wide v10, 0x4056800000000000L    # 90.0

    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v5

    float-to-double v12, v5

    sub-double/2addr v10, v12

    move/from16 v0, p5

    float-to-double v0, v0

    move-wide v12, v0

    add-double/2addr v10, v12

    const-wide v12, 0x3f91df467707c94dL    # 0.01745329

    mul-double v21, v10, v12

    .line 1349
    .local v21, "Direction":D
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 1350
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 1351
    move/from16 v0, v23

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v32

    double-to-int v5, v10

    add-int v8, v24, v5

    .line 1352
    move/from16 v0, v23

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, v37

    double-to-int v5, v10

    sub-int v9, v25, v5

    .line 1354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxGpsView;->mSatsInView:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/view/MxGpsView;->mSatsInView:I

    .line 1355
    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1357
    sget v13, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR0:I

    .line 1385
    .local v13, "Colour":I
    :goto_9
    and-int/lit8 v5, p3, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_13

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v12, v0

    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v14, v8

    move v15, v9

    invoke-direct/range {v10 .. v19}, Lcom/chartcross/view/MxGpsView;->DrawSatelliteSymbol(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIJJ)V

    goto/16 :goto_6

    .line 1359
    .end local v13    # "Colour":I
    :cond_e
    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_f

    .line 1361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    .line 1362
    sget v13, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR1:I

    .restart local v13    # "Colour":I
    goto :goto_9

    .line 1364
    .end local v13    # "Colour":I
    :cond_f
    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_10

    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_10

    .line 1366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    .line 1367
    sget v13, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR2:I

    .restart local v13    # "Colour":I
    goto :goto_9

    .line 1369
    .end local v13    # "Colour":I
    :cond_10
    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_11

    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_11

    .line 1371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    .line 1372
    sget v13, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR3:I

    .restart local v13    # "Colour":I
    goto/16 :goto_9

    .line 1374
    .end local v13    # "Colour":I
    :cond_11
    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_12

    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mSNRThreshold:[I

    move-object v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_12

    .line 1376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    .line 1377
    sget v13, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR4:I

    .restart local v13    # "Colour":I
    goto/16 :goto_9

    .line 1381
    .end local v13    # "Colour":I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/view/MxGpsView;->mSatsInUse:I

    .line 1382
    sget v13, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_GPSSNR5:I

    .restart local v13    # "Colour":I
    goto/16 :goto_9

    .line 1391
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v12, v0

    invoke-virtual/range {v36 .. v36}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v14, v8

    move v15, v9

    invoke-direct/range {v10 .. v19}, Lcom/chartcross/view/MxGpsView;->DrawSatelliteSymbol(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIJJ)V

    goto/16 :goto_6

    .line 1149
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 1170
    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public DrawSpeed(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/location/Location;II)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcBounds"    # Landroid/graphics/Rect;
    .param p3, "CurrentLocation"    # Landroid/location/Location;
    .param p4, "Units"    # I
    .param p5, "Colour"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1581
    if-nez p3, :cond_0

    .line 1583
    const-string v1, "0"

    .line 1605
    .local v1, "sField":Ljava/lang/String;
    :goto_0
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/view/MxGpsView;->TextOutAutoSize(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V

    .line 1606
    return-void

    .line 1587
    .end local v1    # "sField":Ljava/lang/String;
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 1591
    const-string v0, "%.0f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    const-wide v7, 0x4001e53eda8648daL    # 2.23693629

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1592
    .restart local v1    # "sField":Ljava/lang/String;
    goto :goto_0

    .line 1595
    .end local v1    # "sField":Ljava/lang/String;
    :pswitch_0
    const-string v0, "%.0f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    const-wide v7, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1596
    .restart local v1    # "sField":Ljava/lang/String;
    goto :goto_0

    .line 1599
    .end local v1    # "sField":Ljava/lang/String;
    :pswitch_1
    const-string v0, "%.0f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    const-wide v7, 0x3fff19fcae10f4f0L    # 1.94384449

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "sField":Ljava/lang/String;
    goto :goto_0

    .line 1587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public DrawSpeedo(Landroid/graphics/Canvas;Landroid/graphics/Rect;IDIIII)V
    .locals 45
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcBounds"    # Landroid/graphics/Rect;
    .param p3, "Style"    # I
    .param p4, "Speed"    # D
    .param p6, "Units"    # I
    .param p7, "MajorTicks"    # I
    .param p8, "MinorTicks"    # I
    .param p9, "MaxSpeed"    # I

    .prologue
    .line 759
    if-nez p3, :cond_0

    .line 761
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v34

    .line 762
    .local v34, "MinorTickWidth":I
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v33

    .line 763
    .local v33, "MinorTickStart":I
    const/16 v5, 0xd

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v32

    .line 764
    .local v32, "MinorTickEnd":I
    const/4 v5, 0x6

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v31

    .line 765
    .local v31, "MajorTickWidth":I
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v30

    .line 766
    .local v30, "MajorTickStart":I
    const/16 v5, 0x13

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v29

    .line 767
    .local v29, "MajorTickEnd":I
    const/16 v5, 0x1a

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    .line 768
    .local v11, "DigitTextSize":I
    const/16 v5, 0x26

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v28

    .line 769
    .local v28, "DigitOffset":I
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v36

    .line 770
    .local v36, "RimSize":I
    const/4 v12, 0x1

    .line 786
    .local v12, "BoldText":Z
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int v25, v5, v6

    .line 787
    .local v25, "CellWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v24, v5, v6

    .line 788
    .local v24, "CellHeight":I
    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 790
    div-int/lit8 v35, v25, 0x2

    .line 796
    .local v35, "Radius":I
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v25, 0x2

    add-int v16, v5, v6

    .line 797
    .local v16, "XPos":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    div-int/lit8 v6, v24, 0x2

    add-int v43, v5, v6

    .line 799
    .local v43, "YPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 802
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 806
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move v6, v0

    sub-int v7, v35, v36

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 812
    const-wide v13, 0x4070e00000000000L    # 270.0

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v22, v13, v17

    .line 813
    .local v22, "AngleInc":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE2:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 816
    const/16 v44, 0x0

    .local v44, "i":I
    :goto_2
    move/from16 v0, v44

    move/from16 v1, p8

    if-le v0, v1, :cond_2

    .line 826
    const-wide v13, 0x4070e00000000000L    # 270.0

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v22, v13, v17

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DFORE1:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 829
    const/16 v44, 0x0

    :goto_3
    move/from16 v0, v44

    move/from16 v1, p7

    if-le v0, v1, :cond_3

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 844
    const-wide v13, 0x4070e00000000000L    # 270.0

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v22, v13, v17

    .line 845
    div-int v40, p9, p7

    .line 847
    .local v40, "SpeedInc":I
    const/16 v44, 0x0

    :goto_4
    move/from16 v0, v44

    move/from16 v1, p7

    if-le v0, v1, :cond_4

    .line 865
    if-nez p3, :cond_6

    .line 867
    const-string v14, "Speed"

    mul-int/lit8 v5, v35, 0x1

    div-int/lit8 v5, v5, 0x3

    sub-int v17, v43, v5

    const/16 v18, 0x4

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v13 .. v20}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 868
    packed-switch p6, :pswitch_data_0

    .line 906
    :goto_5
    move/from16 v0, p9

    int-to-double v0, v0

    move-wide v13, v0

    cmpl-double v5, p4, v13

    if-lez v5, :cond_7

    .line 908
    const v39, 0x43f78000    # 495.0f

    .line 915
    .local v39, "SpeedAngle":F
    :goto_6
    if-nez p3, :cond_8

    .line 917
    const/4 v15, 0x2

    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v18

    mul-int/lit8 v5, v35, 0x11

    div-int/lit8 v19, v5, 0x14

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide v13, v0

    const-wide v20, 0x4066800000000000L    # 180.0

    sub-double v13, v13, v20

    move-wide v0, v13

    double-to-float v0, v0

    move/from16 v20, v0

    sget v21, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_ORANGE_SDIM:I

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v17, v43

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_ORANGE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 920
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0x12

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 923
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0xc

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 935
    :goto_7
    return-void

    .line 774
    .end local v11    # "DigitTextSize":I
    .end local v12    # "BoldText":Z
    .end local v16    # "XPos":I
    .end local v22    # "AngleInc":D
    .end local v24    # "CellHeight":I
    .end local v25    # "CellWidth":I
    .end local v28    # "DigitOffset":I
    .end local v29    # "MajorTickEnd":I
    .end local v30    # "MajorTickStart":I
    .end local v31    # "MajorTickWidth":I
    .end local v32    # "MinorTickEnd":I
    .end local v33    # "MinorTickStart":I
    .end local v34    # "MinorTickWidth":I
    .end local v35    # "Radius":I
    .end local v36    # "RimSize":I
    .end local v39    # "SpeedAngle":F
    .end local v40    # "SpeedInc":I
    .end local v43    # "YPos":I
    .end local v44    # "i":I
    :cond_0
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v34

    .line 775
    .restart local v34    # "MinorTickWidth":I
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v33

    .line 776
    .restart local v33    # "MinorTickStart":I
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v32

    .line 777
    .restart local v32    # "MinorTickEnd":I
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v31

    .line 778
    .restart local v31    # "MajorTickWidth":I
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v30

    .line 779
    .restart local v30    # "MajorTickStart":I
    const/4 v5, 0x7

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v29

    .line 780
    .restart local v29    # "MajorTickEnd":I
    const/16 v5, 0xc

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v11

    .line 781
    .restart local v11    # "DigitTextSize":I
    const/16 v5, 0x14

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v28

    .line 782
    .restart local v28    # "DigitOffset":I
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v36

    .line 783
    .restart local v36    # "RimSize":I
    const/4 v12, 0x0

    .restart local v12    # "BoldText":Z
    goto/16 :goto_0

    .line 794
    .restart local v24    # "CellHeight":I
    .restart local v25    # "CellWidth":I
    :cond_1
    div-int/lit8 v35, v24, 0x2

    .restart local v35    # "Radius":I
    goto/16 :goto_1

    .line 818
    .restart local v16    # "XPos":I
    .restart local v22    # "AngleInc":D
    .restart local v43    # "YPos":I
    .restart local v44    # "i":I
    :cond_2
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v22

    const-wide v19, 0x406c200000000000L    # 225.0

    add-double v17, v17, v19

    sub-double v13, v13, v17

    const-wide v17, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 819
    .local v26, "CosAngle":D
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v22

    const-wide v19, 0x406c200000000000L    # 225.0

    add-double v17, v17, v19

    sub-double v13, v13, v17

    const-wide v17, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 820
    .local v37, "SinAngle":D
    sub-int v5, v35, v32

    int-to-double v13, v5

    mul-double v13, v13, v26

    double-to-int v5, v13

    add-int v8, v16, v5

    .line 821
    .local v8, "X1":I
    sub-int v5, v35, v32

    int-to-double v13, v5

    mul-double v13, v13, v37

    double-to-int v5, v13

    sub-int v9, v43, v5

    .line 822
    .local v9, "Y1":I
    sub-int v5, v35, v33

    int-to-double v13, v5

    mul-double v13, v13, v26

    double-to-int v5, v13

    add-int v41, v16, v5

    .line 823
    .local v41, "X2":I
    sub-int v5, v35, v33

    int-to-double v13, v5

    mul-double v13, v13, v37

    double-to-int v5, v13

    sub-int v42, v43, v5

    .line 824
    .local v42, "Y2":I
    int-to-float v6, v8

    int-to-float v7, v9

    move/from16 v0, v41

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 816
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_2

    .line 831
    .end local v26    # "CosAngle":D
    .end local v37    # "SinAngle":D
    .end local v41    # "X2":I
    .end local v42    # "Y2":I
    :cond_3
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v22

    const-wide v19, 0x406c200000000000L    # 225.0

    add-double v17, v17, v19

    sub-double v13, v13, v17

    const-wide v17, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 832
    .restart local v26    # "CosAngle":D
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v22

    const-wide v19, 0x406c200000000000L    # 225.0

    add-double v17, v17, v19

    sub-double v13, v13, v17

    const-wide v17, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 833
    .restart local v37    # "SinAngle":D
    sub-int v5, v35, v29

    int-to-double v13, v5

    mul-double v13, v13, v26

    double-to-int v5, v13

    add-int v8, v16, v5

    .line 834
    .restart local v8    # "X1":I
    sub-int v5, v35, v29

    int-to-double v13, v5

    mul-double v13, v13, v37

    double-to-int v5, v13

    sub-int v9, v43, v5

    .line 835
    .restart local v9    # "Y1":I
    sub-int v5, v35, v30

    int-to-double v13, v5

    mul-double v13, v13, v26

    double-to-int v5, v13

    add-int v41, v16, v5

    .line 836
    .restart local v41    # "X2":I
    sub-int v5, v35, v30

    int-to-double v13, v5

    mul-double v13, v13, v37

    double-to-int v5, v13

    sub-int v42, v43, v5

    .line 837
    .restart local v42    # "Y2":I
    int-to-float v6, v8

    int-to-float v7, v9

    move/from16 v0, v41

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 829
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_3

    .line 849
    .end local v26    # "CosAngle":D
    .end local v37    # "SinAngle":D
    .end local v41    # "X2":I
    .end local v42    # "Y2":I
    .restart local v40    # "SpeedInc":I
    :cond_4
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v22

    const-wide v19, 0x406c200000000000L    # 225.0

    add-double v17, v17, v19

    sub-double v13, v13, v17

    const-wide v17, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 850
    .restart local v26    # "CosAngle":D
    const-wide v13, 0x4056800000000000L    # 90.0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v22

    const-wide v19, 0x406c200000000000L    # 225.0

    add-double v17, v17, v19

    sub-double v13, v13, v17

    const-wide v17, 0x3f91df467707c94dL    # 0.01745329

    mul-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    .line 851
    .restart local v37    # "SinAngle":D
    mul-int v5, v44, v40

    const/16 v6, 0x64

    if-ge v5, v6, :cond_5

    .line 853
    sub-int v5, v35, v28

    int-to-double v13, v5

    mul-double v13, v13, v26

    double-to-int v5, v13

    add-int v8, v16, v5

    .line 854
    .restart local v8    # "X1":I
    sub-int v5, v35, v28

    int-to-double v13, v5

    mul-double v13, v13, v37

    double-to-int v5, v13

    sub-int v9, v43, v5

    .line 861
    .restart local v9    # "Y1":I
    :goto_8
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    mul-int v10, v44, v40

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, "sNumber":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 847
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_4

    .line 858
    .end local v6    # "sNumber":Ljava/lang/String;
    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    :cond_5
    move/from16 v0, v35

    int-to-double v0, v0

    move-wide v13, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x3ff3333333333333L    # 1.2

    mul-double v17, v17, v19

    sub-double v13, v13, v17

    mul-double v13, v13, v26

    double-to-int v5, v13

    add-int v8, v16, v5

    .line 859
    .restart local v8    # "X1":I
    move/from16 v0, v35

    int-to-double v0, v0

    move-wide v13, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x3ff3333333333333L    # 1.2

    mul-double v17, v17, v19

    sub-double v13, v13, v17

    mul-double v13, v13, v37

    double-to-int v5, v13

    sub-int v9, v43, v5

    .restart local v9    # "Y1":I
    goto :goto_8

    .line 871
    .end local v8    # "X1":I
    .end local v9    # "Y1":I
    .end local v26    # "CosAngle":D
    .end local v37    # "SinAngle":D
    :pswitch_0
    const-string v14, "mph"

    mul-int/lit8 v5, v35, 0x1

    div-int/lit8 v5, v5, 0x3

    add-int v17, v43, v5

    const/16 v18, 0x4

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v13 .. v20}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_5

    .line 875
    :pswitch_1
    const-string v14, "km/h"

    mul-int/lit8 v5, v35, 0x1

    div-int/lit8 v5, v5, 0x3

    add-int v17, v43, v5

    const/16 v18, 0x4

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v13 .. v20}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_5

    .line 879
    :pswitch_2
    const-string v14, "knots"

    mul-int/lit8 v5, v35, 0x1

    div-int/lit8 v5, v5, 0x3

    add-int v17, v43, v5

    const/16 v18, 0x4

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v13 .. v20}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_5

    .line 885
    :cond_6
    const-string v14, "Speed"

    mul-int/lit8 v5, v35, 0x1

    div-int/lit8 v5, v5, 0x3

    sub-int v17, v43, v5

    const/16 v18, 0x4

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v13 .. v20}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    .line 886
    packed-switch p6, :pswitch_data_1

    goto/16 :goto_5

    .line 889
    :pswitch_3
    const-string v14, "mph"

    mul-int/lit8 v5, v35, 0x1

    div-int/lit8 v5, v5, 0x3

    add-int v17, v43, v5

    const/16 v18, 0x4

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v13 .. v20}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_5

    .line 893
    :pswitch_4
    const-string v14, "km/h"

    mul-int/lit8 v5, v35, 0x1

    div-int/lit8 v5, v5, 0x3

    add-int v17, v43, v5

    const/16 v18, 0x4

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v13 .. v20}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_5

    .line 897
    :pswitch_5
    const-string v14, "knots"

    mul-int/lit8 v5, v35, 0x1

    div-int/lit8 v5, v5, 0x3

    add-int v17, v43, v5

    const/16 v18, 0x4

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v13 .. v20}, Lcom/chartcross/view/MxGpsView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;IIIIZ)V

    goto/16 :goto_5

    .line 912
    :cond_7
    const-wide v13, 0x4070e00000000000L    # 270.0

    move/from16 v0, p9

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v13, v13, v17

    mul-double v13, v13, p4

    const-wide v17, 0x406c200000000000L    # 225.0

    add-double v13, v13, v17

    move-wide v0, v13

    double-to-float v0, v0

    move/from16 v39, v0

    .restart local v39    # "SpeedAngle":F
    goto/16 :goto_6

    .line 927
    :cond_8
    const/4 v15, 0x2

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v18

    mul-int/lit8 v5, v35, 0x11

    div-int/lit8 v19, v5, 0x14

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide v13, v0

    const-wide v20, 0x4066800000000000L    # 180.0

    sub-double v13, v13, v20

    move-wide v0, v13

    double-to-float v0, v0

    move/from16 v20, v0

    sget v21, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_ORANGE_SDIM:I

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v17, v43

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/view/MxGpsView;->DrawDialPointer(Landroid/graphics/Canvas;IIIIIFI)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_ORANGE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 930
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_DIAL_DBACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 933
    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 868
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 886
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public DrawSun(Landroid/graphics/Canvas;FFF)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "size"    # F

    .prologue
    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_SUN:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/chartcross/view/MxGpsView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1864
    const-wide/high16 v11, 0x403e000000000000L    # 30.0

    .line 1865
    .local v11, "AngleInc":D
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    const/16 v5, 0xc

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_SUN:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1878
    const v5, 0x3f19999a    # 0.6f

    mul-float v5, v5, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1881
    return-void

    .line 1867
    :cond_0
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide v7, v0

    mul-double/2addr v7, v11

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 1868
    .local v13, "CosAngle":D
    const-wide v5, 0x4056800000000000L    # 90.0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide v7, v0

    mul-double/2addr v7, v11

    sub-double/2addr v5, v7

    const-wide v7, 0x3f91df467707c94dL    # 0.01745329

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 1869
    .local v15, "SinAngle":D
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, p4

    float-to-double v0, v0

    move-wide v7, v0

    mul-double/2addr v7, v13

    add-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v18, v0

    .line 1870
    .local v18, "x1":I
    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, p4

    float-to-double v0, v0

    move-wide v7, v0

    mul-double/2addr v7, v15

    sub-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v20, v0

    .line 1871
    .local v20, "y1":I
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide v5, v0

    const v7, 0x3f333333    # 0.7f

    mul-float v7, v7, p4

    float-to-double v7, v7

    mul-double/2addr v7, v13

    add-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v19, v0

    .line 1872
    .local v19, "x2":I
    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v5, v0

    const v7, 0x3f333333    # 0.7f

    mul-float v7, v7, p4

    float-to-double v7, v7

    mul-double/2addr v7, v15

    sub-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    .line 1873
    .local v21, "y2":I
    move/from16 v0, v18

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1865
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0
.end method

.method public DrawWorldMap(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcCell"    # Landroid/graphics/Rect;

    .prologue
    .line 35
    sget-object v18, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    if-eqz v18, :cond_2

    .line 37
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v13, v0

    .line 38
    .local v13, "TargetX":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v14, v0

    .line 41
    .local v14, "TargetY":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 42
    .local v6, "CellWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 47
    .local v5, "CellHeight":I
    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move v0, v6

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v9, v18, v20

    .line 48
    .local v9, "HWRatioViewport":D
    sget-object v18, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sget-object v20, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v7, v18, v20

    .line 49
    .local v7, "HWRatioMap":D
    cmpg-double v18, v9, v7

    if-gez v18, :cond_0

    .line 54
    sget-object v18, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    mul-int v18, v18, v5

    sget-object v19, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int v12, v18, v19

    .line 55
    .local v12, "TargetWidth":I
    sub-int v18, v6, v12

    div-int/lit8 v18, v18, 0x2

    add-int v13, v13, v18

    .line 62
    :goto_0
    cmpl-double v18, v9, v7

    if-lez v18, :cond_1

    .line 67
    sget-object v18, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v18, v18, v6

    sget-object v19, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int v11, v18, v19

    .line 68
    .local v11, "TargetHeight":I
    sub-int v18, v5, v11

    div-int/lit8 v18, v18, 0x2

    add-int v14, v14, v18

    .line 75
    :goto_1
    new-instance v16, Landroid/graphics/RectF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    .line 76
    .local v16, "rcCellF":Landroid/graphics/RectF;
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .local v17, "rcMap":Landroid/graphics/Rect;
    move v0, v14

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 78
    move v0, v13

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 79
    add-int v18, v14, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 80
    add-int v18, v13, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 81
    move v0, v14

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 82
    move v0, v13

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 83
    add-int v18, v14, v11

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 84
    add-int v18, v13, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 86
    new-instance v15, Landroid/graphics/ColorMatrixColorFilter;

    .line 87
    const/16 v18, 0x14

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 88
    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x4

    sget v20, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_WORLD_FORE:I

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x5

    .line 89
    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x6

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    const/16 v19, 0x7

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x8

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x9

    sget v20, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_WORLD_FORE:I

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->green(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0xa

    .line 90
    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0xb

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0xc

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    const/16 v19, 0xd

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0xe

    sget v20, Lcom/chartcross/view/MxGpsView;->MX_COLOUR_WORLD_FORE:I

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0xf

    .line 91
    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x10

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x11

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x12

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    const/16 v19, 0x13

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 86
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 93
    .local v15, "cm":Landroid/graphics/ColorMatrixColorFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 94
    sget-object v18, Lcom/chartcross/view/MxGpsView;->mWorldMap:Landroid/graphics/Bitmap;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/view/MxGpsView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v18, v17

    .line 100
    .end local v5    # "CellHeight":I
    .end local v6    # "CellWidth":I
    .end local v7    # "HWRatioMap":D
    .end local v9    # "HWRatioViewport":D
    .end local v11    # "TargetHeight":I
    .end local v12    # "TargetWidth":I
    .end local v13    # "TargetX":I
    .end local v14    # "TargetY":I
    .end local v15    # "cm":Landroid/graphics/ColorMatrixColorFilter;
    .end local v16    # "rcCellF":Landroid/graphics/RectF;
    .end local v17    # "rcMap":Landroid/graphics/Rect;
    :goto_2
    return-object v18

    .line 59
    .restart local v5    # "CellHeight":I
    .restart local v6    # "CellWidth":I
    .restart local v7    # "HWRatioMap":D
    .restart local v9    # "HWRatioViewport":D
    .restart local v13    # "TargetX":I
    .restart local v14    # "TargetY":I
    :cond_0
    move v12, v6

    .restart local v12    # "TargetWidth":I
    goto/16 :goto_0

    .line 72
    :cond_1
    move v11, v5

    .restart local v11    # "TargetHeight":I
    goto/16 :goto_1

    .line 100
    .end local v5    # "CellHeight":I
    .end local v6    # "CellWidth":I
    .end local v7    # "HWRatioMap":D
    .end local v9    # "HWRatioViewport":D
    .end local v11    # "TargetHeight":I
    .end local v12    # "TargetWidth":I
    .end local v13    # "TargetX":I
    .end local v14    # "TargetY":I
    :cond_2
    const/16 v18, 0x0

    goto :goto_2
.end method
