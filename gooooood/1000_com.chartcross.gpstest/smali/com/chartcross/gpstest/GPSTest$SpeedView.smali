.class Lcom/chartcross/gpstest/GPSTest$SpeedView;
.super Lcom/chartcross/gpstest/RootView;
.source "GPSTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartcross/gpstest/GPSTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedView"
.end annotation


# instance fields
.field mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/chartcross/gpstest/GPSTest;


# direct methods
.method public constructor <init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2023
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    .line 2018
    invoke-direct {p0, p2}, Lcom/chartcross/gpstest/RootView;-><init>(Landroid/content/Context;)V

    .line 2019
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mColsP:I

    .line 2020
    const/16 v0, 0x10

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mRowsP:I

    .line 2021
    const/16 v0, 0x40

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mColsL:I

    .line 2022
    const/16 v0, 0x8

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mRowsL:I

    return-void
.end method

.method private DrawAltitudeCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V
    .locals 22
    .param p1, "Index"    # I
    .param p2, "rcGrid"    # Landroid/graphics/Rect;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "Row"    # I
    .param p5, "Col"    # I
    .param p6, "RowSpan"    # I
    .param p7, "ColSpan"    # I
    .param p8, "Style"    # I

    .prologue
    .line 2490
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonHit:I

    move v3, v0

    move v0, v3

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 2492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2496
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$10(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2500
    const-string v10, "Altitude (feet)"

    .local v10, "CellCaption":Ljava/lang/String;
    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2512
    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    .line 2513
    .local v13, "rcCell":Landroid/graphics/Rect;
    if-eqz v13, :cond_2

    .line 2515
    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_1

    .line 2517
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 2519
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_4

    .line 2521
    const-string v3, "0"

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    .line 2549
    :goto_1
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2551
    sget v17, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mFieldTextColour:I

    .line 2559
    .local v17, "textColour":I
    :goto_2
    sget v3, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mFieldTextFont:I

    if-nez v3, :cond_7

    .line 2561
    const/4 v15, 0x7

    .line 2562
    .local v15, "Alignment":I
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 2569
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    move-object v14, v0

    const/16 v16, 0x3

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    invoke-virtual/range {v11 .. v18}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V

    .line 2572
    .end local v15    # "Alignment":I
    .end local v17    # "textColour":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonHit:I

    move v3, v0

    move v0, v3

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_3

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2576
    :cond_3
    return-void

    .line 2504
    .end local v10    # "CellCaption":Ljava/lang/String;
    .end local v13    # "rcCell":Landroid/graphics/Rect;
    :pswitch_0
    const-string v10, "Altitude (meters)"

    .line 2505
    .restart local v10    # "CellCaption":Ljava/lang/String;
    goto :goto_0

    .line 2508
    .end local v10    # "CellCaption":Ljava/lang/String;
    :pswitch_1
    const-string v10, "Altitude (feet)"

    .restart local v10    # "CellCaption":Ljava/lang/String;
    goto :goto_0

    .line 2525
    .restart local v13    # "rcCell":Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v19

    .line 2526
    .local v19, "Altitude":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$21(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxGeoid;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v4, v0

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v6, v0

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/chartcross/location/MxGeoid;->GetGeoidSeparation(DD)F

    move-result v21

    .line 2527
    .local v21, "Geoid":F
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$22()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2529
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide v3, v0

    sub-double v19, v19, v3

    .line 2531
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$10(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 2535
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide v6, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double v6, v6, v19

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 2539
    :pswitch_2
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 2543
    :pswitch_3
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide v6, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double v6, v6, v19

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 2555
    .end local v19    # "Altitude":D
    .end local v21    # "Geoid":F
    :cond_6
    sget v17, Lcom/chartcross/gpstest/GPSTest$SpeedView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v17    # "textColour":I
    goto/16 :goto_2

    .line 2566
    :cond_7
    const/4 v15, 0x4

    .line 2567
    .restart local v15    # "Alignment":I
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v4

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_3

    .line 2496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2531
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private DrawHeadingCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V
    .locals 21
    .param p1, "Index"    # I
    .param p2, "rcGrid"    # Landroid/graphics/Rect;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "Row"    # I
    .param p5, "Col"    # I
    .param p6, "RowSpan"    # I
    .param p7, "ColSpan"    # I
    .param p8, "Style"    # I

    .prologue
    .line 2583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonHit:I

    move v3, v0

    move v0, v3

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2589
    :cond_0
    sget v3, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mNorthReference:I

    packed-switch v3, :pswitch_data_0

    .line 2593
    const-string v11, "T"

    .line 2610
    .local v11, "RCaption":Ljava/lang/String;
    :goto_0
    sget v3, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mHeadingSource:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 2612
    const-string v10, "Course"

    .line 2619
    .local v10, "LCaption":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$15(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 2630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " (cardinal)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2634
    invoke-virtual/range {v3 .. v11}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v5

    .line 2635
    .local v5, "rcCell":Landroid/graphics/Rect;
    if-eqz v5, :cond_2

    .line 2637
    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_1

    .line 2639
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 2643
    :cond_1
    sget v3, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mFieldTextFont:I

    if-nez v3, :cond_5

    .line 2645
    const/16 v17, 0x7

    .line 2646
    .local v17, "Alignment":I
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 2656
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$15(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 2660
    const/4 v7, 0x3

    .line 2662
    .local v7, "minDigits":I
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v8, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mHeading:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    .line 2663
    const-string v6, "888"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetFieldTextHeight(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IZ)I

    move-result v15

    .line 2678
    .end local v10    # "LCaption":Ljava/lang/String;
    .local v15, "height":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    move-object/from16 v16, v0

    sget v19, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mFieldTextColour:I

    const/16 v20, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object v14, v5

    move/from16 v18, v7

    invoke-virtual/range {v12 .. v20}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILjava/lang/String;IIIZ)V

    .line 2681
    .end local v7    # "minDigits":I
    .end local v15    # "height":I
    .end local v17    # "Alignment":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonHit:I

    move v3, v0

    move v0, v3

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_3

    .line 2683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2685
    :cond_3
    return-void

    .line 2597
    .end local v5    # "rcCell":Landroid/graphics/Rect;
    .end local v11    # "RCaption":Ljava/lang/String;
    :pswitch_0
    const-string v11, "M"

    .line 2598
    .restart local v11    # "RCaption":Ljava/lang/String;
    goto/16 :goto_0

    .line 2601
    .end local v11    # "RCaption":Ljava/lang/String;
    :pswitch_1
    const-string v11, "G"

    .line 2602
    .restart local v11    # "RCaption":Ljava/lang/String;
    goto/16 :goto_0

    .line 2605
    .end local v11    # "RCaption":Ljava/lang/String;
    :pswitch_2
    const-string v11, "U"

    .restart local v11    # "RCaption":Ljava/lang/String;
    goto/16 :goto_0

    .line 2616
    :cond_4
    const-string v10, "Heading"

    .restart local v10    # "LCaption":Ljava/lang/String;
    goto/16 :goto_1

    .line 2622
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " (degrees)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2623
    goto/16 :goto_2

    .line 2626
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " (mils)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2627
    goto/16 :goto_2

    .line 2650
    .restart local v5    # "rcCell":Landroid/graphics/Rect;
    :cond_5
    const/16 v17, 0x4

    .line 2651
    .restart local v17    # "Alignment":I
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_3

    .line 2667
    :pswitch_5
    const/4 v7, 0x4

    .line 2668
    .restart local v7    # "minDigits":I
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v8, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mHeading:F

    float-to-double v8, v8

    const-wide v10, 0x4031c72b020c49baL    # 17.778

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .end local v10    # "LCaption":Ljava/lang/String;
    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    .line 2669
    const-string v6, "8888"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetFieldTextHeight(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IZ)I

    move-result v15

    .line 2670
    .restart local v15    # "height":I
    goto/16 :goto_4

    .line 2673
    .end local v7    # "minDigits":I
    .end local v15    # "height":I
    .restart local v10    # "LCaption":Ljava/lang/String;
    :pswitch_6
    const/4 v7, 0x3

    .line 2674
    .restart local v7    # "minDigits":I
    sget v3, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mHeading:F

    float-to-double v3, v3

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetCardinalBearing(D)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    .line 2675
    const-string v6, "WWW"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetFieldTextHeight(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IZ)I

    move-result v15

    .restart local v15    # "height":I
    goto/16 :goto_4

    .line 2589
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2619
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2656
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private DrawSpeedCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V
    .locals 28
    .param p1, "Index"    # I
    .param p2, "rcGrid"    # Landroid/graphics/Rect;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "Row"    # I
    .param p5, "Col"    # I
    .param p6, "RowSpan"    # I
    .param p7, "ColSpan"    # I
    .param p8, "Style"    # I

    .prologue
    .line 2352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonHit:I

    move v3, v0

    move v0, v3

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 2354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2358
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2362
    const-string v10, "Speed (mph)"

    .local v10, "CellCaption":Ljava/lang/String;
    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2374
    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    .line 2375
    .local v13, "rcCell":Landroid/graphics/Rect;
    if-eqz v13, :cond_2

    .line 2377
    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_1

    .line 2379
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->SetButtonRect(ILandroid/graphics/Rect;)V

    .line 2381
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_5

    .line 2383
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$20()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2385
    const-string v3, "%02.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    .line 2421
    :goto_1
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2423
    sget v22, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mFieldTextColour:I

    .line 2431
    .local v22, "textColour":I
    :goto_2
    sget v3, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mFieldTextFont:I

    if-nez v3, :cond_8

    .line 2433
    const/4 v15, 0x7

    .line 2434
    .local v15, "Alignment":I
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 2444
    :goto_3
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$20()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2446
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_a

    .line 2448
    const/4 v3, 0x1

    move/from16 v0, p8

    move v1, v3

    if-ne v0, v1, :cond_9

    .line 2450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    move-object v14, v0

    const/16 v16, 0x6

    const/16 v17, 0x3

    const/16 v18, 0x1

    const-wide v19, 0x3fd55553ef6b5d46L    # 0.333333

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v21

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    invoke-virtual/range {v11 .. v25}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIIDIIZZZ)V

    .line 2482
    .end local v15    # "Alignment":I
    .end local v22    # "textColour":I
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonHit:I

    move v3, v0

    move v0, v3

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_3

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mOldColorFilter:Landroid/graphics/ColorFilter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2486
    :cond_3
    return-void

    .line 2366
    .end local v10    # "CellCaption":Ljava/lang/String;
    .end local v13    # "rcCell":Landroid/graphics/Rect;
    :pswitch_0
    const-string v10, "Speed (km/h)"

    .line 2367
    .restart local v10    # "CellCaption":Ljava/lang/String;
    goto/16 :goto_0

    .line 2370
    .end local v10    # "CellCaption":Ljava/lang/String;
    :pswitch_1
    const-string v10, "Speed (knots)"

    .restart local v10    # "CellCaption":Ljava/lang/String;
    goto/16 :goto_0

    .line 2389
    .restart local v13    # "rcCell":Landroid/graphics/Rect;
    :cond_4
    const-string v3, "0"

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    goto :goto_1

    .line 2395
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x4001e53eda8648daL    # 2.23693629

    mul-double v26, v3, v5

    .line 2410
    .local v26, "Speed":D
    :goto_5
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$20()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2412
    const-string v3, "%02.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v26

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 2403
    .end local v26    # "Speed":D
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x400ccccccccccccdL    # 3.6

    mul-double v26, v3, v5

    .line 2404
    .restart local v26    # "Speed":D
    goto :goto_5

    .line 2407
    .end local v26    # "Speed":D
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fff19fcae10f4f0L    # 1.94384449

    mul-double v26, v3, v5

    .restart local v26    # "Speed":D
    goto :goto_5

    .line 2416
    :cond_6
    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 2427
    .end local v26    # "Speed":D
    :cond_7
    sget v22, Lcom/chartcross/gpstest/GPSTest$SpeedView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v22    # "textColour":I
    goto/16 :goto_2

    .line 2438
    :cond_8
    const/4 v15, 0x4

    .line 2439
    .restart local v15    # "Alignment":I
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v4

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_3

    .line 2454
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    move-object v14, v0

    const/16 v16, 0x6

    const/16 v17, 0x4

    const/16 v18, 0x1

    const-wide v19, 0x3fd55553ef6b5d46L    # 0.333333

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v21

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    invoke-virtual/range {v11 .. v25}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIIDIIZZZ)V

    goto/16 :goto_4

    .line 2459
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    move-object v14, v0

    const/16 v16, 0x6

    const/16 v17, 0x4

    const/16 v18, 0x1

    const-wide v19, 0x3fd55553ef6b5d46L    # 0.333333

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v21

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    invoke-virtual/range {v11 .. v25}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIIDIIZZZ)V

    goto/16 :goto_4

    .line 2464
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_d

    .line 2466
    const/4 v3, 0x1

    move/from16 v0, p8

    move v1, v3

    if-ne v0, v1, :cond_c

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    move-object v14, v0

    const/16 v16, 0x2

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v17, v22

    invoke-virtual/range {v11 .. v18}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V

    goto/16 :goto_4

    .line 2472
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    move-object v14, v0

    const/16 v16, 0x3

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v17, v22

    invoke-virtual/range {v11 .. v18}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V

    goto/16 :goto_4

    .line 2477
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mValue:Ljava/lang/String;

    move-object v14, v0

    const/16 v16, 0x3

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v17, v22

    invoke-virtual/range {v11 .. v18}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V

    goto/16 :goto_4

    .line 2358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2395
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 2690
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onAttachedToWindow()V

    .line 2691
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2696
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onDetachedFromWindow()V

    .line 2697
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2129
    invoke-super/range {p0 .. p1}, Lcom/chartcross/gpstest/RootView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2131
    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .line 2133
    .local v31, "rcBounds":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2134
    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->getWidth()I

    move-result v3

    move v0, v3

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2135
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2136
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$SpeedView;->MX_COLOUR_BACK:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2145
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2147
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2148
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2149
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2154
    :cond_0
    move-object/from16 v5, v31

    .line 2155
    .local v5, "rcGrid":Landroid/graphics/Rect;
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 2169
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$17()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2171
    const/4 v7, 0x0

    .line 2172
    .local v7, "PRow":I
    const/4 v8, 0x0

    .line 2173
    .local v8, "PCol":I
    const/16 v9, 0x9

    .line 2174
    .local v9, "PRowSpan":I
    const/4 v10, 0x4

    .line 2175
    .local v10, "PColSpan":I
    const/4 v15, 0x0

    .line 2176
    .local v15, "LRow":I
    const/16 v16, 0x0

    .line 2177
    .local v16, "LCol":I
    const/16 v17, 0x5

    .line 2178
    .local v17, "LRowSpan":I
    const/16 v18, 0x32

    .line 2192
    .local v18, "LColSpan":I
    :goto_0
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2228
    :goto_1
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$17()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2233
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 2272
    :goto_2
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 2309
    :cond_1
    :goto_3
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$17()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_f

    .line 2316
    const/16 v20, 0x4

    const/16 v23, 0xd

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v3

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v28

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v28}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniStatusCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIZLandroid/location/Location;)V

    .line 2317
    const/16 v20, 0x5

    const/16 v23, 0xd

    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v27

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniSatellitesCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/GpsStatus;)V

    .line 2318
    const/16 v20, 0x6

    const/16 v23, 0xd

    const/16 v24, 0x2

    const/16 v25, 0x3

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v27

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniMapCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/Location;)V

    .line 2319
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2321
    const/16 v20, 0x7

    const/16 v23, 0xd

    const/16 v24, 0x3

    const/16 v25, 0x3

    const/16 v26, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v28

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v29

    sget v30, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mFieldTextColour:I

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v30}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 2344
    :cond_2
    :goto_4
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2346
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2348
    :cond_3
    return-void

    .line 2182
    .end local v7    # "PRow":I
    .end local v8    # "PCol":I
    .end local v9    # "PRowSpan":I
    .end local v10    # "PColSpan":I
    .end local v15    # "LRow":I
    .end local v16    # "LCol":I
    .end local v17    # "LRowSpan":I
    .end local v18    # "LColSpan":I
    :cond_4
    const/4 v7, 0x0

    .line 2183
    .restart local v7    # "PRow":I
    const/4 v8, 0x0

    .line 2184
    .restart local v8    # "PCol":I
    const/16 v9, 0x10

    .line 2185
    .restart local v9    # "PRowSpan":I
    const/4 v10, 0x4

    .line 2186
    .restart local v10    # "PColSpan":I
    const/4 v15, 0x0

    .line 2187
    .restart local v15    # "LRow":I
    const/16 v16, 0x0

    .line 2188
    .restart local v16    # "LCol":I
    const/16 v17, 0x8

    .line 2189
    .restart local v17    # "LRowSpan":I
    const/16 v18, 0x40

    .restart local v18    # "LColSpan":I
    goto/16 :goto_0

    .line 2195
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_5

    .line 2197
    const/4 v4, 0x1

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v11}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawSpeedCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_1

    .line 2201
    :cond_5
    const/4 v12, 0x1

    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object v13, v5

    move-object/from16 v14, p1

    invoke-direct/range {v11 .. v19}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawSpeedCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_1

    .line 2206
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_6

    .line 2208
    const/4 v4, 0x1

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v11}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawAltitudeCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_1

    .line 2212
    :cond_6
    const/4 v12, 0x1

    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object v13, v5

    move-object/from16 v14, p1

    invoke-direct/range {v11 .. v19}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawAltitudeCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_1

    .line 2217
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_7

    .line 2219
    const/4 v4, 0x1

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v11}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawHeadingCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_1

    .line 2223
    :cond_7
    const/4 v12, 0x1

    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object v13, v5

    move-object/from16 v14, p1

    invoke-direct/range {v11 .. v19}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawHeadingCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_1

    .line 2236
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 2238
    const/16 v20, 0x2

    const/16 v23, 0x9

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawSpeedCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_2

    .line 2242
    :cond_8
    const/16 v20, 0x2

    const/16 v23, 0x5

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x19

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawSpeedCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_2

    .line 2247
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_9

    .line 2249
    const/16 v20, 0x2

    const/16 v23, 0x9

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawAltitudeCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_2

    .line 2253
    :cond_9
    const/16 v20, 0x2

    const/16 v23, 0x5

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x19

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawAltitudeCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_2

    .line 2258
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_a

    .line 2260
    const/16 v20, 0x2

    const/16 v23, 0x9

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawHeadingCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_2

    .line 2264
    :cond_a
    const/16 v20, 0x2

    const/16 v23, 0x5

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x19

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawHeadingCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_2

    .line 2275
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_b

    .line 2277
    const/16 v20, 0x3

    const/16 v23, 0x9

    const/16 v24, 0x2

    const/16 v25, 0x4

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawSpeedCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_3

    .line 2281
    :cond_b
    const/16 v20, 0x3

    const/16 v23, 0x5

    const/16 v24, 0x19

    const/16 v25, 0x3

    const/16 v26, 0x19

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawSpeedCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_3

    .line 2286
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_c

    .line 2288
    const/16 v20, 0x3

    const/16 v23, 0x9

    const/16 v24, 0x2

    const/16 v25, 0x4

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawAltitudeCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_3

    .line 2292
    :cond_c
    const/16 v20, 0x3

    const/16 v23, 0x5

    const/16 v24, 0x19

    const/16 v25, 0x3

    const/16 v26, 0x19

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawAltitudeCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_3

    .line 2297
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_d

    .line 2299
    const/16 v20, 0x3

    const/16 v23, 0x9

    const/16 v24, 0x2

    const/16 v25, 0x4

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawHeadingCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_3

    .line 2303
    :cond_d
    const/16 v20, 0x3

    const/16 v23, 0x5

    const/16 v24, 0x19

    const/16 v25, 0x3

    const/16 v26, 0x19

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v5

    move-object/from16 v22, p1

    invoke-direct/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawHeadingCell(ILandroid/graphics/Rect;Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_3

    .line 2325
    :cond_e
    const/16 v20, 0x7

    const/16 v23, 0xd

    const/16 v24, 0x3

    const/16 v25, 0x3

    const/16 v26, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v28

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v29

    sget v30, Lcom/chartcross/gpstest/GPSTest$SpeedView;->MX_COLOUR_DISABLED:I

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v30}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_4

    .line 2330
    :cond_f
    const/16 v20, 0x4

    const/16 v23, 0x0

    const/16 v24, 0x32

    const/16 v25, 0x2

    const/16 v26, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v3

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v28

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v28}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniStatusCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIZLandroid/location/Location;)V

    .line 2331
    const/16 v20, 0x5

    const/16 v23, 0x2

    const/16 v24, 0x32

    const/16 v25, 0x2

    const/16 v26, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v27

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniSatellitesCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/GpsStatus;)V

    .line 2332
    const/16 v20, 0x6

    const/16 v23, 0x4

    const/16 v24, 0x32

    const/16 v25, 0x2

    const/16 v26, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v27

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniMapCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/Location;)V

    .line 2333
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2335
    const/16 v20, 0x7

    const/16 v23, 0x6

    const/16 v24, 0x32

    const/16 v25, 0x2

    const/16 v26, 0xe

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v28

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v29

    sget v30, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mFieldTextColour:I

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v30}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_4

    .line 2339
    :cond_10
    const/16 v20, 0x7

    const/16 v23, 0x6

    const/16 v24, 0x32

    const/16 v25, 0x2

    const/16 v26, 0xe

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->GetDip(I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v28

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v29

    sget v30, Lcom/chartcross/gpstest/GPSTest$SpeedView;->MX_COLOUR_DISABLED:I

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    invoke-virtual/range {v19 .. v30}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_4

    .line 2192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2233
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2272
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 2028
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2029
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2031
    .local v2, "y":F
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2033
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v3, v2

    .line 2036
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2123
    :goto_0
    return v6

    .line 2039
    :pswitch_0
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->HitTestButton(II)I

    move-result v3

    iput v3, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonHit:I

    .line 2040
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->invalidate()V

    goto :goto_0

    .line 2044
    :pswitch_1
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->HitTestButton(II)I

    move-result v0

    .line 2045
    .local v0, "ButtonHit":I
    iget v3, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonHit:I

    if-ne v0, v3, :cond_1

    .line 2047
    packed-switch v0, :pswitch_data_1

    .line 2119
    :cond_1
    :goto_1
    iput v7, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->mButtonHit:I

    .line 2120
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->invalidate()V

    goto :goto_0

    .line 2050
    :pswitch_2
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$17()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2052
    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest;->access$18(Z)V

    goto :goto_1

    .line 2056
    :cond_2
    invoke-static {v7}, Lcom/chartcross/gpstest/GPSTest;->access$18(Z)V

    goto :goto_1

    .line 2061
    :pswitch_3
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_2

    .line 2065
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v4

    aget v4, v4, v5

    aput v4, v3, v7

    .line 2066
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    aput v7, v3, v5

    goto :goto_1

    .line 2070
    :pswitch_4
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v4

    aget v4, v4, v5

    aput v4, v3, v7

    .line 2071
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    aput v6, v3, v5

    goto :goto_1

    .line 2075
    :pswitch_5
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v4

    aget v4, v4, v5

    aput v4, v3, v7

    .line 2076
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    aput v5, v3, v5

    goto :goto_1

    .line 2082
    :pswitch_6
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_3

    .line 2086
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v4

    aget v4, v4, v5

    aput v4, v3, v6

    .line 2087
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    aput v7, v3, v5

    goto :goto_1

    .line 2091
    :pswitch_7
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v4

    aget v4, v4, v5

    aput v4, v3, v6

    .line 2092
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    aput v6, v3, v5

    goto/16 :goto_1

    .line 2096
    :pswitch_8
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v4

    aget v4, v4, v5

    aput v4, v3, v6

    .line 2097
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$19()[I

    move-result-object v3

    aput v5, v3, v5

    goto/16 :goto_1

    .line 2103
    :pswitch_9
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-virtual {v3, v6}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto/16 :goto_1

    .line 2107
    :pswitch_a
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-virtual {v3, v5}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto/16 :goto_1

    .line 2111
    :pswitch_b
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto/16 :goto_1

    .line 2115
    :pswitch_c
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$SpeedView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto/16 :goto_1

    .line 2036
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2047
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 2061
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2082
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
