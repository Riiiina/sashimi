.class Lcom/chartcross/gpstest/GPSTest$TimeView;
.super Lcom/chartcross/gpstest/RootView;
.source "GPSTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartcross/gpstest/GPSTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartcross/gpstest/GPSTest;


# direct methods
.method public constructor <init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x40

    const/4 v0, 0x4

    .line 3476
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    .line 3471
    invoke-direct {p0, p2}, Lcom/chartcross/gpstest/RootView;-><init>(Landroid/content/Context;)V

    .line 3472
    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mColsP:I

    .line 3473
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mRowsP:I

    .line 3474
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mColsL:I

    .line 3475
    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mRowsL:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 4004
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onAttachedToWindow()V

    .line 4005
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 4010
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onDetachedFromWindow()V

    .line 4011
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 54
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3529
    invoke-super/range {p0 .. p1}, Lcom/chartcross/gpstest/RootView;->onDraw(Landroid/graphics/Canvas;)V

    .line 3531
    new-instance v49, Landroid/graphics/Rect;

    invoke-direct/range {v49 .. v49}, Landroid/graphics/Rect;-><init>()V

    .line 3535
    .local v49, "rcBounds":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v49

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3536
    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$TimeView;->getWidth()I

    move-result v3

    move v0, v3

    move-object/from16 v1, v49

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3537
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v49

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3538
    move-object/from16 v0, v49

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$TimeView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v49

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/chartcross/gpstest/GPSTest$TimeView;->MX_COLOUR_BACK:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3547
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3549
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3550
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$TimeView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3551
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3556
    :cond_0
    const-wide/16 v44, 0x0

    .line 3557
    .local v44, "gpsTime":J
    const-wide/16 v52, 0x0

    .line 3558
    .local v52, "sysTime":J
    const-wide/16 v47, 0x0

    .line 3559
    .local v47, "offset":J
    new-instance v43, Landroid/text/format/Time;

    invoke-direct/range {v43 .. v43}, Landroid/text/format/Time;-><init>()V

    .line 3560
    .local v43, "UTime":Landroid/text/format/Time;
    new-instance v39, Landroid/text/format/Time;

    invoke-direct/range {v39 .. v39}, Landroid/text/format/Time;-><init>()V

    .line 3561
    .local v39, "LTime":Landroid/text/format/Time;
    new-instance v38, Landroid/text/format/Time;

    invoke-direct/range {v38 .. v38}, Landroid/text/format/Time;-><init>()V

    .line 3563
    .local v38, "GTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v44

    .line 3566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    .line 3568
    const-string v3, "UTC"

    move-object/from16 v0, v38

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3569
    move-object/from16 v0, v38

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3574
    move-object/from16 v0, v38

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v3, v0

    const/16 v4, 0x7db

    if-ge v3, v4, :cond_d

    .line 3576
    const-string v3, "UTC"

    move-object/from16 v0, v43

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3577
    move-object/from16 v0, v43

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3578
    move-object/from16 v0, v39

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3588
    :cond_1
    :goto_0
    new-instance v37, Lcom/chartcross/time/MxTime;

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/chartcross/time/MxTime;-><init>(Landroid/text/format/Time;)V

    .line 3589
    .local v37, "CurrentTime":Lcom/chartcross/time/MxTime;
    new-instance v40, Lcom/chartcross/time/MxSunMoon;

    invoke-direct/range {v40 .. v40}, Lcom/chartcross/time/MxSunMoon;-><init>()V

    .line 3594
    .local v40, "SunMoon":Lcom/chartcross/time/MxSunMoon;
    new-instance v50, Landroid/graphics/Rect;

    invoke-direct/range {v50 .. v50}, Landroid/graphics/Rect;-><init>()V

    .line 3595
    .local v50, "rcText":Landroid/graphics/Rect;
    move-object/from16 v5, v49

    .line 3596
    .local v5, "rcGrid":Landroid/graphics/Rect;
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3597
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_e

    .line 3599
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x2

    const-string v10, "UTC Date"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    .line 3605
    .local v8, "rcCell":Landroid/graphics/Rect;
    :goto_1
    if-eqz v8, :cond_2

    .line 3607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_f

    .line 3609
    const-string v9, "00-00-00"

    .line 3629
    .local v9, "sField":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_10

    .line 3631
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3639
    :goto_3
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3641
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->mFieldTextColour:I

    .line 3647
    .local v12, "textColour":I
    :goto_4
    const/4 v10, 0x7

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v13}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V

    .line 3653
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    :cond_2
    const-string v20, "UTC Time"

    .line 3654
    .local v20, "CaptionL":Ljava/lang/String;
    const-string v21, ""

    .line 3655
    .local v21, "CaptionR":Ljava/lang/String;
    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v46, v0

    .line 3656
    .local v46, "hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3658
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 3660
    const/16 v3, 0xc

    move/from16 v0, v46

    move v1, v3

    if-le v0, v1, :cond_12

    .line 3662
    add-int/lit8 v46, v46, -0xc

    .line 3663
    const-string v21, "pm"

    .line 3673
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_14

    .line 3675
    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0xd

    const/16 v19, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    .line 3681
    :goto_6
    if-eqz v8, :cond_4

    .line 3683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_15

    .line 3685
    const-string v9, "00:0000"

    .line 3691
    .restart local v9    # "sField":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_16

    .line 3693
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3701
    :goto_8
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3703
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->mFieldTextColour:I

    .line 3709
    .restart local v12    # "textColour":I
    :goto_9
    const/16 v26, 0x7

    const/16 v27, 0x6

    const/16 v28, 0x1

    const/16 v29, 0x2

    const-wide v30, 0x3fe3333333333333L    # 0.6

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v32

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v33, v12

    invoke-virtual/range {v22 .. v36}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIIDIIZZZ)V

    .line 3715
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_18

    .line 3717
    const/16 v25, 0xd

    const/16 v26, 0x0

    const/16 v27, 0xd

    const/16 v28, 0x2

    const-string v29, "Local Date"

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v5

    invoke-virtual/range {v22 .. v29}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    .line 3723
    :goto_a
    if-eqz v8, :cond_5

    .line 3725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_19

    .line 3727
    const-string v9, "00-00-00"

    .line 3747
    .restart local v9    # "sField":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_1a

    .line 3749
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3756
    :goto_c
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3758
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->mFieldTextColour:I

    .line 3764
    .restart local v12    # "textColour":I
    :goto_d
    const/4 v10, 0x7

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v13}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V

    .line 3770
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    :cond_5
    const-string v20, "Local Time"

    .line 3771
    const-string v21, ""

    .line 3772
    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v46, v0

    .line 3773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3775
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 3777
    const/16 v3, 0xc

    move/from16 v0, v46

    move v1, v3

    if-le v0, v1, :cond_1c

    .line 3779
    add-int/lit8 v46, v46, -0xc

    .line 3780
    const-string v21, "pm"

    .line 3790
    :cond_6
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_1e

    .line 3792
    const/16 v16, 0xd

    const/16 v17, 0x2

    const/16 v18, 0xd

    const/16 v19, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    .line 3798
    :goto_f
    if-eqz v8, :cond_7

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_1f

    .line 3802
    const-string v9, "00:0000"

    .line 3808
    .restart local v9    # "sField":Ljava/lang/String;
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_20

    .line 3810
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3818
    :goto_11
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3820
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->mFieldTextColour:I

    .line 3826
    .restart local v12    # "textColour":I
    :goto_12
    const/16 v26, 0x7

    const/16 v27, 0x6

    const/16 v28, 0x1

    const/16 v29, 0x2

    const-wide v30, 0x3fe3333333333333L    # 0.6

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v32

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v33, v12

    invoke-virtual/range {v22 .. v36}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIIDIIZZZ)V

    .line 3832
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    :cond_7
    const-string v20, "Sunrise"

    .line 3833
    const-string v21, ""

    .line 3834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-object/from16 v13, v40

    move-object/from16 v18, v37

    invoke-virtual/range {v13 .. v18}, Lcom/chartcross/time/MxSunMoon;->GetSunrise(DDLcom/chartcross/time/MxTime;)Lcom/chartcross/time/MxTime;

    move-result-object v41

    .line 3837
    .local v41, "SunriseTime":Lcom/chartcross/time/MxTime;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v51

    .line 3838
    .local v51, "sTZ":Ljava/lang/String;
    const-string v3, "UTC"

    move-object/from16 v0, v39

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3839
    invoke-virtual/range {v41 .. v41}, Lcom/chartcross/time/MxTime;->GetSecond()I

    move-result v14

    invoke-virtual/range {v41 .. v41}, Lcom/chartcross/time/MxTime;->GetMinute()I

    move-result v15

    invoke-virtual/range {v41 .. v41}, Lcom/chartcross/time/MxTime;->GetHour()I

    move-result v16

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move-object/from16 v13, v39

    invoke-virtual/range {v13 .. v19}, Landroid/text/format/Time;->set(IIIIII)V

    .line 3840
    move-object/from16 v0, v39

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3841
    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v46, v0

    .line 3842
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 3844
    const/16 v3, 0xc

    move/from16 v0, v46

    move v1, v3

    if-le v0, v1, :cond_22

    .line 3846
    add-int/lit8 v46, v46, -0xc

    .line 3847
    const-string v21, "pm"

    .line 3857
    .end local v41    # "SunriseTime":Lcom/chartcross/time/MxTime;
    .end local v51    # "sTZ":Ljava/lang/String;
    :cond_8
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_24

    .line 3859
    const/16 v16, 0x1a

    const/16 v17, 0x0

    const/16 v18, 0xd

    const/16 v19, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    .line 3865
    :goto_14
    if-eqz v8, :cond_9

    .line 3867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_25

    .line 3869
    const-string v9, "00:0000"

    .line 3875
    .restart local v9    # "sField":Ljava/lang/String;
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_26

    .line 3877
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3885
    :goto_16
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 3887
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->mFieldTextColour:I

    .line 3893
    .restart local v12    # "textColour":I
    :goto_17
    const/16 v26, 0x7

    const/16 v27, 0x6

    const/16 v28, 0x1

    const/16 v29, 0x2

    const-wide v30, 0x3fe3333333333333L    # 0.6

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v32

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v33, v12

    invoke-virtual/range {v22 .. v36}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIIDIIZZZ)V

    .line 3899
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    :cond_9
    const-string v20, "Sunset"

    .line 3900
    const-string v21, ""

    .line 3901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 3903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-object/from16 v13, v40

    move-object/from16 v18, v37

    invoke-virtual/range {v13 .. v18}, Lcom/chartcross/time/MxSunMoon;->GetSunset(DDLcom/chartcross/time/MxTime;)Lcom/chartcross/time/MxTime;

    move-result-object v42

    .line 3904
    .local v42, "SunsetTime":Lcom/chartcross/time/MxTime;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v51

    .line 3905
    .restart local v51    # "sTZ":Ljava/lang/String;
    const-string v3, "UTC"

    move-object/from16 v0, v39

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3906
    invoke-virtual/range {v42 .. v42}, Lcom/chartcross/time/MxTime;->GetSecond()I

    move-result v14

    invoke-virtual/range {v42 .. v42}, Lcom/chartcross/time/MxTime;->GetMinute()I

    move-result v15

    invoke-virtual/range {v42 .. v42}, Lcom/chartcross/time/MxTime;->GetHour()I

    move-result v16

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move-object/from16 v13, v39

    invoke-virtual/range {v13 .. v19}, Landroid/text/format/Time;->set(IIIIII)V

    .line 3907
    move-object/from16 v0, v39

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3908
    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v46, v0

    .line 3909
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 3911
    const/16 v3, 0xc

    move/from16 v0, v46

    move v1, v3

    if-le v0, v1, :cond_28

    .line 3913
    add-int/lit8 v46, v46, -0xc

    .line 3914
    const-string v21, "pm"

    .line 3924
    .end local v42    # "SunsetTime":Lcom/chartcross/time/MxTime;
    .end local v51    # "sTZ":Ljava/lang/String;
    :cond_a
    :goto_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_2a

    .line 3926
    const/16 v16, 0x1a

    const/16 v17, 0x2

    const/16 v18, 0xd

    const/16 v19, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    .line 3932
    :goto_19
    if-eqz v8, :cond_b

    .line 3934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_2b

    .line 3936
    const-string v9, "00:0000"

    .line 3942
    .restart local v9    # "sField":Ljava/lang/String;
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_2c

    .line 3944
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3952
    :goto_1b
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3954
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->mFieldTextColour:I

    .line 3960
    .restart local v12    # "textColour":I
    :goto_1c
    const/16 v26, 0x7

    const/16 v27, 0x6

    const/16 v28, 0x1

    const/16 v29, 0x2

    const-wide v30, 0x3fe3333333333333L    # 0.6

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v32

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v33, v12

    invoke-virtual/range {v22 .. v36}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIIDIIZZZ)V

    .line 3966
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mIsPortrate:Z

    move v3, v0

    if-eqz v3, :cond_2f

    .line 3968
    const/16 v23, 0x1

    const/16 v26, 0x34

    const/16 v27, 0x0

    const/16 v28, 0xc

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v3

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v31}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniStatusCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIZLandroid/location/Location;)V

    .line 3969
    const/16 v23, 0x2

    const/16 v26, 0x34

    const/16 v27, 0x1

    const/16 v28, 0xc

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v30

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v30}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniSatellitesCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/GpsStatus;)V

    .line 3970
    const/16 v23, 0x3

    const/16 v26, 0x34

    const/16 v27, 0x2

    const/16 v28, 0xc

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v30

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v30}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniMapCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/Location;)V

    .line 3971
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3973
    const/16 v23, 0x4

    const/16 v26, 0x34

    const/16 v27, 0x3

    const/16 v28, 0xc

    const/16 v29, 0x1

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$TimeView;->mFieldTextColour:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 3995
    :goto_1d
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3997
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3999
    :cond_c
    return-void

    .line 3582
    .end local v5    # "rcGrid":Landroid/graphics/Rect;
    .end local v8    # "rcCell":Landroid/graphics/Rect;
    .end local v20    # "CaptionL":Ljava/lang/String;
    .end local v21    # "CaptionR":Ljava/lang/String;
    .end local v37    # "CurrentTime":Lcom/chartcross/time/MxTime;
    .end local v40    # "SunMoon":Lcom/chartcross/time/MxSunMoon;
    .end local v46    # "hour":I
    .end local v50    # "rcText":Landroid/graphics/Rect;
    :cond_d
    const-string v3, "UTC"

    move-object/from16 v0, v43

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3583
    invoke-virtual/range {v43 .. v45}, Landroid/text/format/Time;->set(J)V

    .line 3584
    move-object/from16 v0, v39

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_0

    .line 3603
    .restart local v5    # "rcGrid":Landroid/graphics/Rect;
    .restart local v37    # "CurrentTime":Lcom/chartcross/time/MxTime;
    .restart local v40    # "SunMoon":Lcom/chartcross/time/MxSunMoon;
    .restart local v50    # "rcText":Landroid/graphics/Rect;
    :cond_e
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x19

    const-string v10, "UTC Date"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    .restart local v8    # "rcCell":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 3613
    :cond_f
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$28()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3617
    const-string v3, "%02d-%02d-%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v7, v0

    const/16 v9, 0x7d0

    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3618
    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_2

    .line 3621
    .end local v9    # "sField":Ljava/lang/String;
    :pswitch_0
    const-string v3, "%02d-%02d-%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v7, v0

    const/16 v9, 0x7d0

    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3622
    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_2

    .line 3625
    .end local v9    # "sField":Ljava/lang/String;
    :pswitch_1
    const-string v3, "%02d-%02d-%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v7, v0

    const/16 v9, 0x7d0

    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_2

    .line 3635
    :cond_10
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_3

    .line 3645
    :cond_11
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v12    # "textColour":I
    goto/16 :goto_4

    .line 3667
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    .restart local v20    # "CaptionL":Ljava/lang/String;
    .restart local v21    # "CaptionR":Ljava/lang/String;
    .restart local v46    # "hour":I
    :cond_12
    if-nez v46, :cond_13

    const/16 v46, 0xc

    .line 3668
    :cond_13
    const-string v21, "am"

    goto/16 :goto_5

    .line 3679
    :cond_14
    const/16 v16, 0x0

    const/16 v17, 0x19

    const/16 v18, 0x1

    const/16 v19, 0x19

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    goto/16 :goto_6

    .line 3689
    :cond_15
    const-string v3, "%02d:%02d%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v43

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_7

    .line 3697
    :cond_16
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_8

    .line 3707
    :cond_17
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v12    # "textColour":I
    goto/16 :goto_9

    .line 3721
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    :cond_18
    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x19

    const-string v29, "Local Date"

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v5

    invoke-virtual/range {v22 .. v29}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    goto/16 :goto_a

    .line 3731
    :cond_19
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$28()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 3735
    const-string v3, "%02d-%02d-%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v7, v0

    const/16 v9, 0x7d0

    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3736
    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_b

    .line 3739
    .end local v9    # "sField":Ljava/lang/String;
    :pswitch_2
    const-string v3, "%02d-%02d-%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v7, v0

    const/16 v9, 0x7d0

    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3740
    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_b

    .line 3743
    .end local v9    # "sField":Ljava/lang/String;
    :pswitch_3
    const-string v3, "%02d-%02d-%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v7, v0

    const/16 v9, 0x7d0

    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_b

    .line 3753
    :cond_1a
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_c

    .line 3762
    :cond_1b
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v12    # "textColour":I
    goto/16 :goto_d

    .line 3784
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    :cond_1c
    if-nez v46, :cond_1d

    const/16 v46, 0xc

    .line 3785
    :cond_1d
    const-string v21, "am"

    goto/16 :goto_e

    .line 3796
    :cond_1e
    const/16 v16, 0x1

    const/16 v17, 0x19

    const/16 v18, 0x1

    const/16 v19, 0x19

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    goto/16 :goto_f

    .line 3806
    :cond_1f
    const-string v3, "%02d:%02d%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_10

    .line 3814
    :cond_20
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_11

    .line 3824
    :cond_21
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v12    # "textColour":I
    goto/16 :goto_12

    .line 3851
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    .restart local v41    # "SunriseTime":Lcom/chartcross/time/MxTime;
    .restart local v51    # "sTZ":Ljava/lang/String;
    :cond_22
    if-nez v46, :cond_23

    const/16 v46, 0xc

    .line 3852
    :cond_23
    const-string v21, "am"

    goto/16 :goto_13

    .line 3863
    .end local v41    # "SunriseTime":Lcom/chartcross/time/MxTime;
    .end local v51    # "sTZ":Ljava/lang/String;
    :cond_24
    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x19

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    goto/16 :goto_14

    .line 3873
    :cond_25
    const-string v3, "%02d:%02d%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_15

    .line 3881
    :cond_26
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_16

    .line 3891
    :cond_27
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v12    # "textColour":I
    goto/16 :goto_17

    .line 3918
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    .restart local v42    # "SunsetTime":Lcom/chartcross/time/MxTime;
    .restart local v51    # "sTZ":Ljava/lang/String;
    :cond_28
    if-nez v46, :cond_29

    const/16 v46, 0xc

    .line 3919
    :cond_29
    const-string v21, "am"

    goto/16 :goto_18

    .line 3930
    .end local v42    # "SunsetTime":Lcom/chartcross/time/MxTime;
    .end local v51    # "sTZ":Ljava/lang/String;
    :cond_2a
    const/16 v16, 0x2

    const/16 v17, 0x19

    const/16 v18, 0x1

    const/16 v19, 0x19

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    invoke-virtual/range {v13 .. v21}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    goto/16 :goto_19

    .line 3940
    :cond_2b
    const-string v3, "%02d:%02d%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "sField":Ljava/lang/String;
    goto/16 :goto_1a

    .line 3948
    :cond_2c
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_1b

    .line 3958
    :cond_2d
    sget v12, Lcom/chartcross/gpstest/GPSTest$TimeView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v12    # "textColour":I
    goto/16 :goto_1c

    .line 3977
    .end local v9    # "sField":Ljava/lang/String;
    .end local v12    # "textColour":I
    :cond_2e
    const/16 v23, 0x4

    const/16 v26, 0x34

    const/16 v27, 0x3

    const/16 v28, 0xc

    const/16 v29, 0x1

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$TimeView;->MX_COLOUR_DISABLED:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_1d

    .line 3982
    :cond_2f
    const/16 v23, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v3

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v31}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniStatusCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIZLandroid/location/Location;)V

    .line 3983
    const/16 v23, 0x2

    const/16 v26, 0x1

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v30

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v30}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniSatellitesCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/GpsStatus;)V

    .line 3984
    const/16 v23, 0x3

    const/16 v26, 0x2

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v30

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v30}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniMapCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/Location;)V

    .line 3985
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3987
    const/16 v23, 0x4

    const/16 v26, 0x3

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$TimeView;->mFieldTextColour:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_1d

    .line 3991
    :cond_30
    const/16 v23, 0x4

    const/16 v26, 0x3

    const/16 v27, 0x32

    const/16 v28, 0x1

    const/16 v29, 0xe

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest$TimeView;->GetDip(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v3, v0

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v32

    sget v33, Lcom/chartcross/gpstest/GPSTest$TimeView;->MX_COLOUR_DISABLED:I

    move-object/from16 v22, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-virtual/range {v22 .. v33}, Lcom/chartcross/gpstest/GPSTest$TimeView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_1d

    .line 3613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3731
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 3481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 3482
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 3484
    .local v2, "y":F
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3486
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$TimeView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v3, v2

    .line 3489
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3523
    :goto_0
    return v5

    .line 3492
    :pswitch_0
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->HitTestButton(II)I

    move-result v3

    iput v3, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mButtonHit:I

    .line 3493
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$TimeView;->invalidate()V

    goto :goto_0

    .line 3497
    :pswitch_1
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/chartcross/gpstest/GPSTest$TimeView;->HitTestButton(II)I

    move-result v0

    .line 3498
    .local v0, "ButtonHit":I
    iget v3, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mButtonHit:I

    if-ne v0, v3, :cond_1

    .line 3500
    packed-switch v0, :pswitch_data_1

    .line 3519
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->mButtonHit:I

    .line 3520
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$TimeView;->invalidate()V

    goto :goto_0

    .line 3503
    :pswitch_2
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-virtual {v3, v5}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 3507
    :pswitch_3
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 3511
    :pswitch_4
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 3515
    :pswitch_5
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$TimeView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 3489
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3500
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
