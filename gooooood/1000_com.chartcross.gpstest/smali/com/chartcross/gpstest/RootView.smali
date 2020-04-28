.class public Lcom/chartcross/gpstest/RootView;
.super Lcom/chartcross/view/MxGpsView;
.source "RootView.java"


# static fields
.field public static final FONT_DOTMATRIX:I = 0x2

.field public static final FONT_SEVENSEG:I = 0x1

.field public static final FONT_STANDARD:I = 0x0

.field public static final HEADING_CARDINAL:I = 0x2

.field public static final HEADING_DEGREES:I = 0x0

.field public static final HEADING_DEV_AUTO:I = 0x0

.field public static final HEADING_DEV_COMPASS:I = 0x1

.field public static final HEADING_DEV_GPS:I = 0x2

.field public static final HEADING_MILS:I = 0x1

.field public static final HEADING_SRC_COMPASS:I = 0x1

.field public static final HEADING_SRC_GPS:I = 0x2

.field public static final HEADING_SRC_NONE:I = 0x0

.field public static final NORTH_REF_GRID:I = 0x2

.field public static final NORTH_REF_MAGNETIC:I = 0x1

.field public static final NORTH_REF_TRUE:I = 0x0

.field public static final NORTH_REF_USER:I = 0x3

.field public static mAccuracy:D

.field public static mCourse:F

.field public static mDeclination:F

.field public static mFieldTextColour:I

.field public static mFieldTextFont:I

.field public static mHeading:F

.field public static mHeadingDevice:I

.field public static mHeadingMagnetic:F

.field public static mHeadingSource:I

.field public static mHeadingTrue:F

.field public static mNorthReference:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sget v0, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    sput v0, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    .line 38
    sput v1, Lcom/chartcross/gpstest/RootView;->mFieldTextFont:I

    .line 47
    sput v1, Lcom/chartcross/gpstest/RootView;->mHeadingDevice:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/chartcross/view/MxGpsView;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method


# virtual methods
.method public DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILjava/lang/String;IIIZ)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcField"    # Landroid/graphics/Rect;
    .param p3, "Height"    # I
    .param p4, "Value"    # Ljava/lang/String;
    .param p5, "Alignment"    # I
    .param p6, "MinDigits"    # I
    .param p7, "Colour"    # I
    .param p8, "Bold"    # Z

    .prologue
    .line 193
    sget v0, Lcom/chartcross/gpstest/RootView;->mFieldTextFont:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    :pswitch_0
    return-void

    .line 196
    :pswitch_1
    packed-switch p5, :pswitch_data_1

    goto :goto_0

    .line 201
    :pswitch_2
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/chartcross/gpstest/RootView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;IILandroid/graphics/Paint$Align;Z)V

    goto :goto_0

    .line 206
    :pswitch_3
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/chartcross/gpstest/RootView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;IILandroid/graphics/Paint$Align;Z)V

    goto :goto_0

    .line 211
    :pswitch_4
    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/chartcross/gpstest/RootView;->TextOut(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;IILandroid/graphics/Paint$Align;Z)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 196
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIIDIIZZZ)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcField"    # Landroid/graphics/Rect;
    .param p3, "Value"    # Ljava/lang/String;
    .param p4, "LAlignment"    # I
    .param p5, "RAlignment"    # I
    .param p6, "MinDigits"    # I
    .param p7, "RDigits"    # I
    .param p8, "SmallSizeRatio"    # D
    .param p10, "FieldSpacing"    # I
    .param p11, "Colour"    # I
    .param p12, "HideSmall"    # Z
    .param p13, "SmallTextBottom"    # Z
    .param p14, "Bold"    # Z

    .prologue
    .line 232
    sget v0, Lcom/chartcross/gpstest/RootView;->mFieldTextFont:I

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    :pswitch_0
    return-void

    .line 235
    :pswitch_1
    packed-switch p4, :pswitch_data_1

    goto :goto_0

    .line 240
    :pswitch_2
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p7

    move-wide/from16 v3, p8

    move/from16 v5, p10

    move/from16 v6, p13

    move-object v7, p1

    move-object v8, p2

    move/from16 v9, p11

    move/from16 v11, p14

    invoke-virtual/range {v0 .. v11}, Lcom/chartcross/gpstest/RootView;->TextOutAutoSize(Ljava/lang/String;IDIZLandroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V

    goto :goto_0

    .line 245
    :pswitch_3
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p7

    move-wide/from16 v3, p8

    move/from16 v5, p10

    move/from16 v6, p13

    move-object v7, p1

    move-object v8, p2

    move/from16 v9, p11

    move/from16 v11, p14

    invoke-virtual/range {v0 .. v11}, Lcom/chartcross/gpstest/RootView;->TextOutAutoSize(Ljava/lang/String;IDIZLandroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V

    goto :goto_0

    .line 250
    :pswitch_4
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p7

    move-wide/from16 v3, p8

    move/from16 v5, p10

    move/from16 v6, p13

    move-object v7, p1

    move-object v8, p2

    move/from16 v9, p11

    move/from16 v11, p14

    invoke-virtual/range {v0 .. v11}, Lcom/chartcross/gpstest/RootView;->TextOutAutoSize(Ljava/lang/String;IDIZLandroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 235
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcField"    # Landroid/graphics/Rect;
    .param p3, "Value"    # Ljava/lang/String;
    .param p4, "Alignment"    # I
    .param p5, "MinDigits"    # I
    .param p6, "Colour"    # I
    .param p7, "Bold"    # Z

    .prologue
    .line 154
    sget v0, Lcom/chartcross/gpstest/RootView;->mFieldTextFont:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    :pswitch_0
    return-void

    .line 157
    :pswitch_1
    packed-switch p4, :pswitch_data_1

    goto :goto_0

    .line 162
    :pswitch_2
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move v4, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/gpstest/RootView;->TextOutAutoSize(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V

    goto :goto_0

    .line 167
    :pswitch_3
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move v4, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/gpstest/RootView;->TextOutAutoSize(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V

    goto :goto_0

    .line 172
    :pswitch_4
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move v4, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/gpstest/RootView;->TextOutAutoSize(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint$Align;Z)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 157
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public DrawMiniCompassCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIF)V
    .locals 13
    .param p1, "ButtonIndex"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rcGrid"    # Landroid/graphics/Rect;
    .param p4, "Row"    # I
    .param p5, "Col"    # I
    .param p6, "RowSpan"    # I
    .param p7, "ColSpan"    # I
    .param p8, "bearing"    # F

    .prologue
    .line 511
    iget v5, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v5, p1, :cond_0

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 513
    iget-object v5, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/chartcross/gpstest/RootView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    move-object v5, p0

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 516
    invoke-virtual/range {v5 .. v11}, Lcom/chartcross/gpstest/RootView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v12

    .line 517
    .local v12, "rcCell":Landroid/graphics/Rect;
    if-eqz v12, :cond_2

    .line 519
    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    .line 521
    invoke-virtual {p0, p1, v12}, Lcom/chartcross/gpstest/RootView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 523
    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, v12

    move v3, v5

    move/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/gpstest/RootView;->DrawCompass(Landroid/graphics/Canvas;Landroid/graphics/Rect;IF)V

    .line 526
    :cond_2
    iget v5, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v5, p1, :cond_3

    const/4 v5, -0x1

    if-eq p1, v5, :cond_3

    .line 528
    iget-object v5, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/chartcross/gpstest/RootView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 530
    :cond_3
    return-void
.end method

.method public DrawMiniMapCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/Location;)V
    .locals 10
    .param p1, "ButtonIndex"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rcGrid"    # Landroid/graphics/Rect;
    .param p4, "Row"    # I
    .param p5, "Col"    # I
    .param p6, "RowSpan"    # I
    .param p7, "ColSpan"    # I
    .param p8, "location"    # Landroid/location/Location;

    .prologue
    .line 356
    iget v0, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/chartcross/gpstest/RootView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 361
    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/gpstest/RootView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v9

    .line 362
    .local v9, "rcCell":Landroid/graphics/Rect;
    if-eqz v9, :cond_2

    .line 364
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 366
    invoke-virtual {p0, p1, v9}, Lcom/chartcross/gpstest/RootView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 369
    :cond_1
    invoke-virtual {p0, p2, v9}, Lcom/chartcross/gpstest/RootView;->DrawWorldMap(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 370
    .local v2, "rcMap":Landroid/graphics/Rect;
    if-eqz p8, :cond_2

    .line 372
    invoke-virtual/range {p8 .. p8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p8 .. p8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/chartcross/gpstest/RootView;->GetDip(I)I

    move-result v7

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v8}, Lcom/chartcross/gpstest/RootView;->DrawPositionMarker(Landroid/graphics/Canvas;Landroid/graphics/Rect;DDII)V

    .line 376
    .end local v2    # "rcMap":Landroid/graphics/Rect;
    :cond_2
    iget v0, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v0, p1, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/chartcross/gpstest/RootView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 380
    :cond_3
    return-void
.end method

.method public DrawMiniSatellitesCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/GpsStatus;)V
    .locals 7
    .param p1, "ButtonIndex"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rcGrid"    # Landroid/graphics/Rect;
    .param p4, "Row"    # I
    .param p5, "Col"    # I
    .param p6, "RowSpan"    # I
    .param p7, "ColSpan"    # I
    .param p8, "Status"    # Landroid/location/GpsStatus;

    .prologue
    .line 330
    iget v0, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/chartcross/gpstest/RootView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 335
    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/gpstest/RootView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v2

    .line 336
    .local v2, "rcCell":Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    .line 338
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 340
    invoke-virtual {p0, p1, v2}, Lcom/chartcross/gpstest/RootView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 343
    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p8

    invoke-virtual/range {v0 .. v5}, Lcom/chartcross/gpstest/RootView;->DrawSatellitePositions(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/location/GpsStatus;F)V

    .line 346
    :cond_2
    iget v0, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v0, p1, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/chartcross/gpstest/RootView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 350
    :cond_3
    return-void
.end method

.method public DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V
    .locals 11
    .param p1, "ButtonIndex"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rcGrid"    # Landroid/graphics/Rect;
    .param p4, "Row"    # I
    .param p5, "Col"    # I
    .param p6, "RowSpan"    # I
    .param p7, "ColSpan"    # I
    .param p8, "InnerInset"    # I
    .param p9, "location"    # Landroid/location/Location;
    .param p10, "units"    # I
    .param p11, "Colour"    # I

    .prologue
    .line 450
    iget v3, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v3, p1, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/chartcross/gpstest/RootView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 455
    invoke-virtual/range {v3 .. v9}, Lcom/chartcross/gpstest/RootView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v5

    .line 456
    .local v5, "rcCell":Landroid/graphics/Rect;
    if-eqz v5, :cond_3

    .line 458
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 460
    invoke-virtual {p0, p1, v5}, Lcom/chartcross/gpstest/RootView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 463
    :cond_1
    sget v3, Lcom/chartcross/gpstest/RootView;->mFieldTextFont:I

    if-nez v3, :cond_5

    .line 465
    if-eqz p8, :cond_2

    .line 467
    const/4 v3, 0x0

    move-object v0, v5

    move/from16 v1, p8

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 476
    :cond_2
    :goto_0
    if-nez p9, :cond_6

    .line 478
    const-string v6, "0"

    .line 498
    .local v6, "sSpeed":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p2

    move/from16 v9, p11

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/gpstest/RootView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V

    .line 501
    .end local v6    # "sSpeed":Ljava/lang/String;
    :cond_3
    iget v3, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v3, p1, :cond_4

    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    .line 503
    iget-object v3, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/chartcross/gpstest/RootView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 505
    :cond_4
    return-void

    .line 472
    :cond_5
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/chartcross/gpstest/RootView;->GetDip(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/chartcross/gpstest/RootView;->GetDip(I)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0

    .line 482
    :cond_6
    packed-switch p10, :pswitch_data_0

    .line 486
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/location/Location;->getSpeed()F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x4001e53eda8648daL    # 2.23693629

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 487
    .restart local v6    # "sSpeed":Ljava/lang/String;
    goto :goto_1

    .line 490
    .end local v6    # "sSpeed":Ljava/lang/String;
    :pswitch_0
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/location/Location;->getSpeed()F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 491
    .restart local v6    # "sSpeed":Ljava/lang/String;
    goto :goto_1

    .line 494
    .end local v6    # "sSpeed":Ljava/lang/String;
    :pswitch_1
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/location/Location;->getSpeed()F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3fff19fcae10f4f0L    # 1.94384449

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "sSpeed":Ljava/lang/String;
    goto :goto_1

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public DrawMiniStatusCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIZLandroid/location/Location;)V
    .locals 11
    .param p1, "ButtonIndex"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rcGrid"    # Landroid/graphics/Rect;
    .param p4, "Row"    # I
    .param p5, "Col"    # I
    .param p6, "RowSpan"    # I
    .param p7, "ColSpan"    # I
    .param p8, "GpsOn"    # Z
    .param p9, "location"    # Landroid/location/Location;

    .prologue
    .line 272
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 274
    .local v9, "rcText":Landroid/graphics/Rect;
    iget v0, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/chartcross/gpstest/RootView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 279
    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/gpstest/RootView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v8

    .line 280
    .local v8, "rcCell":Landroid/graphics/Rect;
    if-eqz v8, :cond_2

    .line 282
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 284
    invoke-virtual {p0, p1, v8}, Lcom/chartcross/gpstest/RootView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/chartcross/gpstest/RootView;->GetDip(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 289
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 290
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    sub-int v7, v0, v1

    .line 291
    .local v7, "CellInnerHeight":I
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/chartcross/gpstest/RootView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    iget v0, v8, Landroid/graphics/Rect;->left:I

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/chartcross/gpstest/RootView;->GetDip(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v8, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v7, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/chartcross/gpstest/RootView;->GetDipF(F)F

    move-result v2

    iget-object v3, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 294
    if-eqz p8, :cond_5

    .line 296
    const-string v10, "On"

    .line 297
    .local v10, "t":Ljava/lang/String;
    if-nez p9, :cond_4

    .line 299
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/chartcross/gpstest/RootView;->MX_COLOUR_GPS_BAD:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v10, v1, v2, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 314
    iget v0, v8, Landroid/graphics/Rect;->left:I

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/chartcross/gpstest/RootView;->GetDip(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v8, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v7, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/chartcross/gpstest/RootView;->GetDipF(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 315
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/chartcross/gpstest/RootView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    iget v0, v8, Landroid/graphics/Rect;->left:I

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/chartcross/gpstest/RootView;->GetDip(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v8, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v7, 0x2

    add-int/2addr v1, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    .end local v7    # "CellInnerHeight":I
    .end local v10    # "t":Ljava/lang/String;
    :cond_2
    iget v0, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v0, p1, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/chartcross/gpstest/RootView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 324
    :cond_3
    return-void

    .line 303
    .restart local v7    # "CellInnerHeight":I
    .restart local v10    # "t":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/chartcross/gpstest/RootView;->MX_COLOUR_GPS_ON:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 309
    .end local v10    # "t":Ljava/lang/String;
    :cond_5
    const-string v10, "Off"

    .line 310
    .restart local v10    # "t":Ljava/lang/String;
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/chartcross/gpstest/RootView;->MX_COLOUR_GPS_OFF:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v0, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1
.end method

.method public DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V
    .locals 13
    .param p1, "ButtonIndex"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rcGrid"    # Landroid/graphics/Rect;
    .param p4, "Row"    # I
    .param p5, "Col"    # I
    .param p6, "RowSpan"    # I
    .param p7, "ColSpan"    # I
    .param p8, "InnerInset"    # I
    .param p9, "location"    # Landroid/location/Location;
    .param p10, "TimeFormat"    # I
    .param p11, "Colour"    # I

    .prologue
    .line 386
    iget v3, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v3, p1, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/chartcross/gpstest/RootView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    move-object v3, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 391
    invoke-virtual/range {v3 .. v9}, Lcom/chartcross/gpstest/RootView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v5

    .line 392
    .local v5, "rcCell":Landroid/graphics/Rect;
    if-eqz v5, :cond_3

    .line 394
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 396
    invoke-virtual {p0, p1, v5}, Lcom/chartcross/gpstest/RootView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 399
    :cond_1
    sget v3, Lcom/chartcross/gpstest/RootView;->mFieldTextFont:I

    if-nez v3, :cond_5

    .line 401
    if-eqz p8, :cond_2

    .line 403
    const/4 v3, 0x0

    move-object v0, v5

    move/from16 v1, p8

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 415
    :cond_2
    :goto_0
    if-nez p9, :cond_6

    .line 417
    const-string v6, "00:00"

    .line 437
    .local v6, "sTime":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p2

    move/from16 v9, p11

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/gpstest/RootView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V

    .line 440
    .end local v6    # "sTime":Ljava/lang/String;
    :cond_3
    iget v3, p0, Lcom/chartcross/gpstest/RootView;->mButtonHit:I

    if-ne v3, p1, :cond_4

    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    .line 442
    iget-object v3, p0, Lcom/chartcross/gpstest/RootView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/chartcross/gpstest/RootView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 444
    :cond_4
    return-void

    .line 408
    :cond_5
    if-eqz p8, :cond_2

    .line 410
    const/4 v3, 0x0

    move-object v0, v5

    move/from16 v1, p8

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0

    .line 421
    :cond_6
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 422
    .local v11, "LTime":Landroid/text/format/Time;
    invoke-virtual/range {p9 .. p9}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 423
    iget v12, v11, Landroid/text/format/Time;->hour:I

    .line 424
    .local v12, "hour":I
    const/4 v3, 0x1

    move/from16 v0, p10

    move v1, v3

    if-ne v0, v1, :cond_7

    .line 426
    const/16 v3, 0xc

    if-le v12, v3, :cond_8

    .line 428
    add-int/lit8 v12, v12, -0xc

    .line 435
    :cond_7
    :goto_2
    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget v7, v11, Landroid/text/format/Time;->minute:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "sTime":Ljava/lang/String;
    goto :goto_1

    .line 432
    .end local v6    # "sTime":Ljava/lang/String;
    :cond_8
    if-nez v12, :cond_7

    const/16 v12, 0xc

    goto :goto_2
.end method

.method public GetCardinalBearing(D)Ljava/lang/String;
    .locals 12
    .param p1, "bearing"    # D

    .prologue
    const-wide v10, 0x4059500000000000L    # 101.25

    const-wide v8, 0x4053a00000000000L    # 78.5

    const-wide v6, 0x404c200000000000L    # 56.25

    const-wide v4, 0x4040e00000000000L    # 33.75

    const-wide v2, 0x4026800000000000L    # 11.25

    .line 58
    const-wide v0, 0x4075cc0000000000L    # 348.75

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4076800000000000L    # 360.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 60
    const-string v0, "N"

    .line 128
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    .line 64
    const-string v0, "N"

    goto :goto_0

    .line 66
    :cond_1
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_2

    cmpg-double v0, p1, v4

    if-gez v0, :cond_2

    .line 68
    const-string v0, "NNE"

    goto :goto_0

    .line 70
    :cond_2
    cmpl-double v0, p1, v4

    if-ltz v0, :cond_3

    cmpg-double v0, p1, v6

    if-gez v0, :cond_3

    .line 72
    const-string v0, "NE"

    goto :goto_0

    .line 74
    :cond_3
    cmpl-double v0, p1, v6

    if-ltz v0, :cond_4

    cmpg-double v0, p1, v8

    if-gez v0, :cond_4

    .line 76
    const-string v0, "ENE"

    goto :goto_0

    .line 78
    :cond_4
    cmpl-double v0, p1, v8

    if-ltz v0, :cond_5

    cmpg-double v0, p1, v10

    if-gez v0, :cond_5

    .line 80
    const-string v0, "E"

    goto :goto_0

    .line 82
    :cond_5
    cmpl-double v0, p1, v10

    if-ltz v0, :cond_6

    const-wide v0, 0x405ef00000000000L    # 123.75

    cmpg-double v0, p1, v0

    if-gez v0, :cond_6

    .line 84
    const-string v0, "ESE"

    goto :goto_0

    .line 86
    :cond_6
    const-wide v0, 0x405ef00000000000L    # 123.75

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_7

    const-wide v0, 0x4062480000000000L    # 146.25

    cmpg-double v0, p1, v0

    if-gez v0, :cond_7

    .line 88
    const-string v0, "SE"

    goto :goto_0

    .line 90
    :cond_7
    const-wide v0, 0x4062480000000000L    # 146.25

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_8

    const-wide v0, 0x4065180000000000L    # 168.75

    cmpg-double v0, p1, v0

    if-gez v0, :cond_8

    .line 92
    const-string v0, "SSE"

    goto :goto_0

    .line 94
    :cond_8
    const-wide v0, 0x4065180000000000L    # 168.75

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_9

    const-wide v0, 0x4067e80000000000L    # 191.25

    cmpg-double v0, p1, v0

    if-gez v0, :cond_9

    .line 96
    const-string v0, "S"

    goto/16 :goto_0

    .line 98
    :cond_9
    const-wide v0, 0x4067e80000000000L    # 191.25

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_a

    const-wide v0, 0x406ab80000000000L    # 213.75

    cmpg-double v0, p1, v0

    if-gez v0, :cond_a

    .line 100
    const-string v0, "SSW"

    goto/16 :goto_0

    .line 102
    :cond_a
    const-wide v0, 0x406ab80000000000L    # 213.75

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_b

    const-wide v0, 0x406d880000000000L    # 236.25

    cmpg-double v0, p1, v0

    if-gez v0, :cond_b

    .line 104
    const-string v0, "SW"

    goto/16 :goto_0

    .line 106
    :cond_b
    const-wide v0, 0x406d880000000000L    # 236.25

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_c

    const-wide v0, 0x40702c0000000000L    # 258.75

    cmpg-double v0, p1, v0

    if-gez v0, :cond_c

    .line 108
    const-string v0, "WSW"

    goto/16 :goto_0

    .line 110
    :cond_c
    const-wide v0, 0x40702c0000000000L    # 258.75

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_d

    const-wide v0, 0x4071940000000000L    # 281.25

    cmpg-double v0, p1, v0

    if-gez v0, :cond_d

    .line 112
    const-string v0, "W"

    goto/16 :goto_0

    .line 114
    :cond_d
    const-wide v0, 0x4071940000000000L    # 281.25

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_e

    const-wide v0, 0x4072fc0000000000L    # 303.75

    cmpg-double v0, p1, v0

    if-gez v0, :cond_e

    .line 116
    const-string v0, "WNW"

    goto/16 :goto_0

    .line 118
    :cond_e
    const-wide v0, 0x4072fc0000000000L    # 303.75

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_f

    const-wide v0, 0x4074640000000000L    # 326.25

    cmpg-double v0, p1, v0

    if-gez v0, :cond_f

    .line 120
    const-string v0, "NW"

    goto/16 :goto_0

    .line 122
    :cond_f
    const-wide v0, 0x4074640000000000L    # 326.25

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_10

    const-wide v0, 0x4075cc0000000000L    # 348.75

    cmpg-double v0, p1, v0

    if-gez v0, :cond_10

    .line 124
    const-string v0, "NNW"

    goto/16 :goto_0

    .line 128
    :cond_10
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public GetFieldTextHeight(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IZ)I
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rcField"    # Landroid/graphics/Rect;
    .param p3, "Value"    # Ljava/lang/String;
    .param p4, "MinDigits"    # I
    .param p5, "Bold"    # Z

    .prologue
    .line 134
    const/4 v6, 0x0

    .line 135
    .local v6, "height":I
    sget v0, Lcom/chartcross/gpstest/RootView;->mFieldTextFont:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    return v6

    .line 138
    :pswitch_1
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/chartcross/gpstest/RootView;->GetDip(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/chartcross/gpstest/RootView;->GetTextHeight(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IZ)I

    move-result v6

    .line 139
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
