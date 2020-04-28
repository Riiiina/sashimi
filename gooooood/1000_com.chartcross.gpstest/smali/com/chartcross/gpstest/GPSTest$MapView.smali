.class Lcom/chartcross/gpstest/GPSTest$MapView;
.super Lcom/chartcross/gpstest/RootView;
.source "GPSTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartcross/gpstest/GPSTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapView"
.end annotation


# instance fields
.field mLLConvertX:Lcom/chartcross/location/MxLLConvert;

.field mLLConvertY:Lcom/chartcross/location/MxLLConvert;

.field mLocationX:Ljava/lang/String;

.field mLocationY:Ljava/lang/String;

.field final synthetic this$0:Lcom/chartcross/gpstest/GPSTest;


# direct methods
.method public constructor <init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x4

    .line 2714
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    .line 2709
    invoke-direct {p0, p2}, Lcom/chartcross/gpstest/RootView;-><init>(Landroid/content/Context;)V

    .line 2702
    new-instance v0, Lcom/chartcross/location/MxLLConvert;

    invoke-direct {v0}, Lcom/chartcross/location/MxLLConvert;-><init>()V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    .line 2703
    new-instance v0, Lcom/chartcross/location/MxLLConvert;

    invoke-direct {v0}, Lcom/chartcross/location/MxLLConvert;-><init>()V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    .line 2704
    const-string v0, ""

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 2705
    const-string v0, ""

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    .line 2710
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mColsP:I

    .line 2711
    const/16 v0, 0x10

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mRowsP:I

    .line 2712
    const/16 v0, 0x40

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mColsL:I

    .line 2713
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mRowsL:I

    return-void
.end method

.method private GetformattedLocation()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3187
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$23()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3193
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3197
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/chartcross/location/MxLLConvert;->mDecimal:D

    .line 3198
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/chartcross/location/MxLLConvert;->mDecimal:D

    .line 3199
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    invoke-virtual {v0}, Lcom/chartcross/location/MxLLConvert;->decimalToDMS()V

    .line 3200
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    invoke-virtual {v0}, Lcom/chartcross/location/MxLLConvert;->decimalToDMS()V

    .line 3202
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$25()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 3206
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.7f"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    .line 3207
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.7f"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3452
    :cond_0
    :goto_0
    return-void

    .line 3210
    :pswitch_0
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v0, v0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 3212
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.0f\u00b0%2.5f\'N"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDecimalMinutes:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    .line 3218
    :goto_1
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v0, v0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 3220
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.0f\u00b0%08.5f\'E"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDecimalMinutes:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto :goto_0

    .line 3216
    :cond_1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.0f\u00b0%08.05f\'S"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDecimalMinutes:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto :goto_1

    .line 3224
    :cond_2
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.0f\u00b0%08.5f\'W"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDecimalMinutes:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3228
    :pswitch_1
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v0, v0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 3230
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.0f\u00b0%02.0f\'%06.3f\"N"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mSeconds:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    .line 3236
    :goto_2
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v0, v0, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    .line 3238
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.0f\u00b0%02.0f\'%06.3f\"E"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mSeconds:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3234
    :cond_3
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.0f\u00b0%02.0f\'%06.3f\"S"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertY:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mSeconds:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto :goto_2

    .line 3242
    :cond_4
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.0f\u00b0%02.0f\'%06.3f\"W"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mMinutes:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLLConvertX:Lcom/chartcross/location/MxLLConvert;

    iget-wide v3, v3, Lcom/chartcross/location/MxLLConvert;->mSeconds:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3249
    :cond_5
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$25()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 3253
    const-string v0, "000.0000000"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    .line 3254
    const-string v0, "000.0000000"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3257
    :pswitch_2
    const-string v0, "000\u00b000.00000\'"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    .line 3258
    const-string v0, "000\u00b000.00000\'"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3261
    :pswitch_3
    const-string v0, "000\u00b000\'00.000\"N"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    .line 3262
    const-string v0, "000\u00b000\'00.000\"E"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3269
    :pswitch_4
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3273
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/location/MxCoordConverter;->LLToOSGB(DD)I

    move-result v0

    if-nez v0, :cond_6

    .line 3275
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v3

    iget-wide v3, v3, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3276
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v3

    iget-wide v3, v3, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto/16 :goto_0

    .line 3280
    :cond_6
    const-string v0, "######"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3281
    const-string v0, "######"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto/16 :goto_0

    .line 3286
    :cond_7
    const-string v0, "000000.0"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3287
    const-string v0, "000000.0"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto/16 :goto_0

    .line 3292
    :pswitch_5
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3296
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/location/MxCoordConverter;->LLToOSGB(DD)I

    move-result v0

    if-nez v0, :cond_8

    .line 3298
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v1

    iget-wide v1, v1, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v3

    iget-wide v3, v3, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$27()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/chartcross/location/MxCoordConverter;->OSGBRefToLetter(DDI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3299
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 3301
    const-string v0, "######"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3306
    :cond_8
    const-string v0, "######"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3312
    :cond_9
    const-string v0, "000000"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3317
    :pswitch_6
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3320
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v0

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$24()I

    move-result v1

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/chartcross/location/MxCoordConverter;->LLToUTM(IDD)I

    move-result v0

    if-nez v0, :cond_a

    .line 3322
    const-string v0, "%d%s %07.0f"

    new-array v1, v12, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-wide v2, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3324
    const-string v0, "%07.0f"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-wide v2, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto/16 :goto_0

    .line 3328
    :cond_a
    const-string v0, "#######"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3329
    const-string v0, "#######"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto/16 :goto_0

    .line 3334
    :cond_b
    const-string v0, "0000000"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3335
    const-string v0, "0000000"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto/16 :goto_0

    .line 3340
    :pswitch_7
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3342
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/location/MxCoordConverter;->LLToMaidenhead(DD)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3348
    :cond_c
    const-string v0, "0"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3353
    :pswitch_8
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3356
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v0

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$24()I

    move-result v1

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x5

    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/location/MxCoordConverter;->LLToMGRS(IDDI)I

    move-result v0

    if-nez v0, :cond_d

    .line 3358
    const-string v0, "%05.0f"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-wide v2, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3359
    .local v7, "Easting":Ljava/lang/String;
    const-string v0, "%05.0f"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-wide v2, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3360
    .local v8, "Northing":Ljava/lang/String;
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$27()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 3363
    :pswitch_9
    const-string v0, "%d%s%.5s%.5s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3366
    :pswitch_a
    const-string v0, "%d%s%.4s%.4s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3369
    :pswitch_b
    const-string v0, "%d%s%.3s%.3s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3372
    :pswitch_c
    const-string v0, "%d%s%.2s%.2s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3375
    :pswitch_d
    const-string v0, "%d%s%.1s%.1s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3381
    .end local v7    # "Easting":Ljava/lang/String;
    .end local v8    # "Northing":Ljava/lang/String;
    :cond_d
    const-string v0, "#####"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3386
    :cond_e
    const-string v0, "00000"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3391
    :pswitch_e
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 3393
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v0

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$24()I

    move-result v1

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v4}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x5

    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/location/MxCoordConverter;->LLToUSNG(IDDI)I

    move-result v0

    if-nez v0, :cond_f

    .line 3396
    const-string v0, "%05.0f"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-wide v2, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3397
    .restart local v7    # "Easting":Ljava/lang/String;
    const-string v0, "%05.0f"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-wide v2, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3398
    .restart local v8    # "Northing":Ljava/lang/String;
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$27()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 3401
    :pswitch_f
    const-string v0, "%d %s %.5s %.5s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3404
    :pswitch_10
    const-string v0, "%d %s %.4s %.4s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3407
    :pswitch_11
    const-string v0, "%d %s %.3s %.3s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3410
    :pswitch_12
    const-string v0, "%d %s %.2s %.2s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3413
    :pswitch_13
    const-string v0, "%d %s %.1s %.1s"

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-object v2, v2, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    aput-object v2, v1, v10

    aput-object v7, v1, v11

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3419
    .end local v7    # "Easting":Ljava/lang/String;
    .end local v8    # "Northing":Ljava/lang/String;
    :cond_f
    const-string v0, "#####"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3424
    :cond_10
    const-string v0, "00000"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    goto/16 :goto_0

    .line 3429
    :pswitch_14
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3434
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v3}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/location/MxCoordConverter;->LLToCH1903(DD)I

    move-result v0

    if-nez v0, :cond_11

    .line 3436
    const-string v0, "%.0f"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-wide v2, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3437
    const-string v0, "%.0f"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v2}, Lcom/chartcross/gpstest/GPSTest;->access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;

    move-result-object v2

    iget-wide v2, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto/16 :goto_0

    .line 3441
    :cond_11
    const-string v0, "#####"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3442
    const-string v0, "#####"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto/16 :goto_0

    .line 3447
    :cond_12
    const-string v0, "00000"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    .line 3448
    const-string v0, "00000"

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    goto/16 :goto_0

    .line 3187
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_8
        :pswitch_e
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_14
    .end packed-switch

    .line 3202
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3249
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3360
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 3398
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 3457
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onAttachedToWindow()V

    .line 3458
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 3463
    invoke-super {p0}, Lcom/chartcross/gpstest/RootView;->onDetachedFromWindow()V

    .line 3464
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 54
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2767
    invoke-super/range {p0 .. p1}, Lcom/chartcross/gpstest/RootView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2771
    new-instance v48, Landroid/graphics/Rect;

    invoke-direct/range {v48 .. v48}, Landroid/graphics/Rect;-><init>()V

    .line 2772
    .local v48, "rcBounds":Landroid/graphics/Rect;
    const-string v26, ""

    .line 2773
    .local v26, "sGridCaption":Ljava/lang/String;
    const-string v51, ""

    .line 2774
    .local v51, "sXCaption":Ljava/lang/String;
    const-string v52, ""

    .line 2776
    .local v52, "sYCaption":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$MapView;->getWidth()I

    move-result v47

    .line 2777
    .local v47, "Width":I
    if-gtz v47, :cond_1

    .line 3183
    :cond_0
    :goto_0
    return-void

    .line 2782
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$MapView;->getHeight()I

    move-result v5

    const/16 v6, 0x1e

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    sub-int v41, v5, v6

    .line 2783
    .local v41, "Height":I
    if-lez v41, :cond_0

    .line 2788
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v48

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2789
    move/from16 v0, v47

    move-object/from16 v1, v48

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2790
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v48

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2791
    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$MapView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v48

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_BACK:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2800
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2802
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2803
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$MapView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2804
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2812
    :cond_2
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 2813
    .local v17, "rcTextX":Landroid/graphics/Rect;
    new-instance v49, Landroid/graphics/Rect;

    invoke-direct/range {v49 .. v49}, Landroid/graphics/Rect;-><init>()V

    .line 2814
    .local v49, "rcTextY":Landroid/graphics/Rect;
    move-object/from16 v7, v48

    .line 2815
    .local v7, "rcGrid":Landroid/graphics/Rect;
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 2816
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 2818
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x4

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v10

    .line 2824
    .local v10, "rcCell":Landroid/graphics/Rect;
    :goto_1
    if-eqz v10, :cond_3

    .line 2826
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    iget v6, v10, Landroid/graphics/Rect;->top:I

    sub-int v39, v5, v6

    .line 2827
    .local v39, "CellHeight":I
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$23()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2833
    const-string v26, "Coordinate System : WGS84"

    .line 2834
    const-string v51, "Lon"

    .line 2835
    const-string v52, "Lat"

    move-object/from16 v50, v26

    .line 2986
    .end local v26    # "sGridCaption":Ljava/lang/String;
    .local v50, "sGridCaption":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_FIELD_FORE:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0xe

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v8

    move-object v0, v5

    move-object/from16 v1, v51

    move v2, v6

    move v3, v8

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2990
    iget v5, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v6, v39, 0x4

    add-int v45, v5, v6

    .line 2991
    .local v45, "TextY":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v45, v45, v5

    .line 2992
    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    move/from16 v0, v45

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    move v2, v5

    move v3, v6

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0xe

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v8

    move-object v0, v5

    move-object/from16 v1, v52

    move v2, v6

    move v3, v8

    move-object/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2997
    iget v5, v10, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v6, v39, 0x3

    div-int/lit8 v6, v6, 0x4

    add-int v45, v5, v6

    .line 2998
    move-object/from16 v0, v49

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v45, v45, v5

    .line 2999
    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    move/from16 v0, v45

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    move v2, v5

    move v3, v6

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3004
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_7

    .line 3006
    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/16 v6, 0xa

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    move-object/from16 v0, v49

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    sub-int/2addr v8, v9

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 3017
    :goto_3
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3019
    sget v14, Lcom/chartcross/gpstest/GPSTest$MapView;->mFieldTextColour:I

    .line 3025
    .local v14, "textColour":I
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetformattedLocation()V

    .line 3026
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$23()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 3049
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_a

    .line 3051
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 3058
    :goto_5
    iget v5, v10, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3059
    iget v5, v10, Landroid/graphics/Rect;->right:I

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3060
    iget v5, v10, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3061
    iget v5, v10, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    iget v8, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    invoke-virtual/range {v15 .. v20}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetFieldTextHeight(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IZ)I

    move-result v53

    .line 3063
    .local v53, "xHeight":I
    iget v5, v10, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v49

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3064
    iget v5, v10, Landroid/graphics/Rect;->right:I

    move v0, v5

    move-object/from16 v1, v49

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3065
    iget v5, v10, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    iget v8, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v49

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3066
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    move v0, v5

    move-object/from16 v1, v49

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v49

    invoke-virtual/range {v18 .. v23}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetFieldTextHeight(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IZ)I

    move-result v18

    .line 3069
    .local v18, "yHeight":I
    move/from16 v0, v53

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    .line 3071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    const/16 v21, 0x1

    const/16 v23, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v22, v14

    invoke-virtual/range {v15 .. v23}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILjava/lang/String;IIIZ)V

    .line 3072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    const/16 v25, 0x1

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v49

    move/from16 v22, v18

    move/from16 v26, v14

    invoke-virtual/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILjava/lang/String;IIIZ)V

    move-object/from16 v26, v50

    .line 3086
    .end local v14    # "textColour":I
    .end local v18    # "yHeight":I
    .end local v39    # "CellHeight":I
    .end local v45    # "TextY":I
    .end local v50    # "sGridCaption":Ljava/lang/String;
    .end local v53    # "xHeight":I
    .restart local v26    # "sGridCaption":Ljava/lang/String;
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_c

    .line 3088
    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x4

    sget v27, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_FIELD_FORE:I

    sget v28, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_WORLD_BACK:I

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v7

    invoke-virtual/range {v19 .. v28}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v10

    .line 3094
    :goto_7
    if-eqz v10, :cond_5

    .line 3096
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mIsPortrate:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 3098
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 3100
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawWorldMap(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    .line 3101
    .local v21, "rcMap":Landroid/graphics/Rect;
    if-eqz v21, :cond_5

    .line 3103
    new-instance v46, Landroid/text/format/Time;

    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    .line 3112
    .local v46, "UTime":Landroid/text/format/Time;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3113
    invoke-virtual/range {v46 .. v46}, Landroid/text/format/Time;->setToNow()V

    .line 3116
    new-instance v40, Lcom/chartcross/time/MxTime;

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/chartcross/time/MxTime;-><init>(Landroid/text/format/Time;)V

    .line 3117
    .local v40, "CurrentTime":Lcom/chartcross/time/MxTime;
    new-instance v44, Lcom/chartcross/time/MxSunMoon;

    invoke-direct/range {v44 .. v44}, Lcom/chartcross/time/MxSunMoon;-><init>()V

    .line 3118
    .local v44, "SunMoon":Lcom/chartcross/time/MxSunMoon;
    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/chartcross/time/MxSunMoon;->GetSolarDeclination(Lcom/chartcross/time/MxTime;)D

    move-result-wide v22

    .line 3119
    .local v22, "SolarDeclination":D
    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move v5, v0

    mul-int/lit8 v5, v5, 0x3c

    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v42, v0

    .line 3127
    .local v42, "MinutesSinceMidnight":D
    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double v5, v5, v42

    const-wide v8, 0x4066800000000000L    # 180.0

    sub-double/2addr v5, v8

    move-object/from16 v0, v46

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v8, v0

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    .end local v10    # "rcCell":Landroid/graphics/Rect;
    long-to-double v8, v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v10

    sub-double v24, v5, v8

    .local v24, "SolarHourAngle":D
    move-object/from16 v19, p0

    move-object/from16 v20, p1

    .line 3130
    invoke-virtual/range {v19 .. v25}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawDayNightTerminator(Landroid/graphics/Canvas;Landroid/graphics/Rect;DD)V

    .line 3138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v32

    const/4 v5, 0x7

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v34

    const/16 v35, 0x2

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v21

    invoke-virtual/range {v27 .. v35}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawPositionMarker(Landroid/graphics/Canvas;Landroid/graphics/Rect;DDII)V

    .line 3148
    .end local v21    # "rcMap":Landroid/graphics/Rect;
    .end local v22    # "SolarDeclination":D
    .end local v24    # "SolarHourAngle":D
    .end local v40    # "CurrentTime":Lcom/chartcross/time/MxTime;
    .end local v42    # "MinutesSinceMidnight":D
    .end local v44    # "SunMoon":Lcom/chartcross/time/MxSunMoon;
    .end local v46    # "UTime":Landroid/text/format/Time;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 3150
    const/16 v28, 0x1

    const/16 v31, 0xd

    const/16 v32, 0x0

    const/16 v33, 0x3

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v5

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v36}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniStatusCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIZLandroid/location/Location;)V

    .line 3151
    const/16 v28, 0x2

    const/16 v31, 0xd

    const/16 v32, 0x1

    const/16 v33, 0x3

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v35

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v35}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniSatellitesCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/GpsStatus;)V

    .line 3152
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3154
    const/16 v28, 0x3

    const/16 v31, 0xd

    const/16 v32, 0x2

    const/16 v33, 0x3

    const/16 v34, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v37

    sget v38, Lcom/chartcross/gpstest/GPSTest$MapView;->mFieldTextColour:I

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v38}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 3155
    const/16 v28, 0x4

    const/16 v31, 0xd

    const/16 v32, 0x3

    const/16 v33, 0x3

    const/16 v34, 0x1

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v37

    sget v38, Lcom/chartcross/gpstest/GPSTest$MapView;->mFieldTextColour:I

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v38}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 3179
    :goto_8
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3181
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 2822
    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x32

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v10

    .restart local v10    # "rcCell":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 2839
    .restart local v39    # "CellHeight":I
    :pswitch_1
    const-string v26, "Coordinate System : OSGB"

    .line 2840
    const-string v51, "Easting"

    .line 2841
    const-string v52, "Northing"

    move-object/from16 v50, v26

    .line 2842
    .end local v26    # "sGridCaption":Ljava/lang/String;
    .restart local v50    # "sGridCaption":Ljava/lang/String;
    goto/16 :goto_2

    .line 2845
    .end local v50    # "sGridCaption":Ljava/lang/String;
    .restart local v26    # "sGridCaption":Ljava/lang/String;
    :pswitch_2
    const-string v26, "Coordinate System : OSGB"

    .line 2846
    const-string v51, ""

    .line 2847
    const-string v52, ""

    move-object/from16 v50, v26

    .line 2848
    .end local v26    # "sGridCaption":Ljava/lang/String;
    .restart local v50    # "sGridCaption":Ljava/lang/String;
    goto/16 :goto_2

    .line 2851
    .end local v50    # "sGridCaption":Ljava/lang/String;
    .restart local v26    # "sGridCaption":Ljava/lang/String;
    :pswitch_3
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$24()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    .line 2855
    :pswitch_4
    const-string v26, "Coordinate System : UTM (WGS84)"

    .line 2886
    :goto_9
    const-string v51, "Easting"

    .line 2887
    const-string v52, "Northing"

    move-object/from16 v50, v26

    .line 2888
    .end local v26    # "sGridCaption":Ljava/lang/String;
    .restart local v50    # "sGridCaption":Ljava/lang/String;
    goto/16 :goto_2

    .line 2859
    .end local v50    # "sGridCaption":Ljava/lang/String;
    .restart local v26    # "sGridCaption":Ljava/lang/String;
    :pswitch_5
    const-string v26, "Coordinate System : UTM (NAD83)"

    .line 2860
    goto :goto_9

    .line 2863
    :pswitch_6
    const-string v26, "Coordinate System : UTM (NAD27)"

    .line 2864
    goto :goto_9

    .line 2867
    :pswitch_7
    const-string v26, "Coordinate System : UTM (ED50)"

    .line 2868
    goto :goto_9

    .line 2871
    :pswitch_8
    const-string v26, "Coordinate System : UTM (ED50 Spain)"

    .line 2872
    goto :goto_9

    .line 2875
    :pswitch_9
    const-string v26, "Coordinate System : UTM (AGD66)"

    .line 2876
    goto :goto_9

    .line 2879
    :pswitch_a
    const-string v26, "Coordinate System : UTM (AGD84)"

    .line 2880
    goto :goto_9

    .line 2883
    :pswitch_b
    const-string v26, "Coordinate System : UTM (SAD69)"

    goto :goto_9

    .line 2891
    :pswitch_c
    const-string v26, "Coordinate System : Maidenhead"

    .line 2892
    const-string v51, ""

    .line 2893
    const-string v52, ""

    move-object/from16 v50, v26

    .line 2894
    .end local v26    # "sGridCaption":Ljava/lang/String;
    .restart local v50    # "sGridCaption":Ljava/lang/String;
    goto/16 :goto_2

    .line 2897
    .end local v50    # "sGridCaption":Ljava/lang/String;
    .restart local v26    # "sGridCaption":Ljava/lang/String;
    :pswitch_d
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$24()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    .line 2901
    :pswitch_e
    const-string v26, "Coordinate System : MGRS (WGS84)"

    .line 2932
    :goto_a
    const-string v51, ""

    .line 2933
    const-string v52, ""

    move-object/from16 v50, v26

    .line 2934
    .end local v26    # "sGridCaption":Ljava/lang/String;
    .restart local v50    # "sGridCaption":Ljava/lang/String;
    goto/16 :goto_2

    .line 2905
    .end local v50    # "sGridCaption":Ljava/lang/String;
    .restart local v26    # "sGridCaption":Ljava/lang/String;
    :pswitch_f
    const-string v26, "Coordinate System : MGRS (NAD83)"

    .line 2906
    goto :goto_a

    .line 2909
    :pswitch_10
    const-string v26, "Coordinate System : MGRS (NAD27)"

    .line 2910
    goto :goto_a

    .line 2913
    :pswitch_11
    const-string v26, "Coordinate System : MGRS (ED50)"

    .line 2914
    goto :goto_a

    .line 2917
    :pswitch_12
    const-string v26, "Coordinate System : MGRS (ED50 Spain)"

    .line 2918
    goto :goto_a

    .line 2921
    :pswitch_13
    const-string v26, "Coordinate System : MGRS (AGD66)"

    .line 2922
    goto :goto_a

    .line 2925
    :pswitch_14
    const-string v26, "Coordinate System : MGRS (AGD84)"

    .line 2926
    goto :goto_a

    .line 2929
    :pswitch_15
    const-string v26, "Coordinate System : MGRS (SAD69)"

    goto :goto_a

    .line 2937
    :pswitch_16
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$24()I

    move-result v5

    packed-switch v5, :pswitch_data_4

    .line 2941
    :pswitch_17
    const-string v26, "Coordinate System : USNG (WGS84)"

    .line 2972
    :goto_b
    const-string v51, ""

    .line 2973
    const-string v52, ""

    move-object/from16 v50, v26

    .line 2974
    .end local v26    # "sGridCaption":Ljava/lang/String;
    .restart local v50    # "sGridCaption":Ljava/lang/String;
    goto/16 :goto_2

    .line 2945
    .end local v50    # "sGridCaption":Ljava/lang/String;
    .restart local v26    # "sGridCaption":Ljava/lang/String;
    :pswitch_18
    const-string v26, "Coordinate System : USNG (NAD83)"

    .line 2946
    goto :goto_b

    .line 2949
    :pswitch_19
    const-string v26, "Coordinate System : USNG (NAD27)"

    .line 2950
    goto :goto_b

    .line 2953
    :pswitch_1a
    const-string v26, "Coordinate System : USNG (ED50)"

    .line 2954
    goto :goto_b

    .line 2957
    :pswitch_1b
    const-string v26, "Coordinate System : USNG (ED50 Spain)"

    .line 2958
    goto :goto_b

    .line 2961
    :pswitch_1c
    const-string v26, "Coordinate System : USNG (AGD66)"

    .line 2962
    goto :goto_b

    .line 2965
    :pswitch_1d
    const-string v26, "Coordinate System : USNG (AGD84)"

    .line 2966
    goto :goto_b

    .line 2969
    :pswitch_1e
    const-string v26, "Coordinate System : USNG (SAD69)"

    goto :goto_b

    .line 2977
    :pswitch_1f
    const-string v26, "Coordinate System : CH1903"

    .line 2978
    const-string v51, "Easting"

    .line 2979
    const-string v52, "Northing"

    move-object/from16 v50, v26

    .end local v26    # "sGridCaption":Ljava/lang/String;
    .restart local v50    # "sGridCaption":Ljava/lang/String;
    goto/16 :goto_2

    .line 3010
    .restart local v45    # "TextY":I
    :cond_7
    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    move-object/from16 v0, v49

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    sub-int/2addr v8, v9

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    iput v5, v10, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    .line 3023
    :cond_8
    sget v14, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_DISABLED_DARK:I

    .restart local v14    # "textColour":I
    goto/16 :goto_4

    .line 3032
    :pswitch_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mIsPortrate:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 3034
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v5

    const/16 v6, 0xf

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 3040
    :goto_c
    iget v5, v10, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3041
    iget v5, v10, Landroid/graphics/Rect;->right:I

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3042
    iget v5, v10, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    iget v8, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    iget v8, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3043
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    iget v8, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;IIIZ)V

    move-object/from16 v26, v50

    .line 3046
    .end local v50    # "sGridCaption":Ljava/lang/String;
    .restart local v26    # "sGridCaption":Ljava/lang/String;
    goto/16 :goto_6

    .line 3038
    .end local v26    # "sGridCaption":Ljava/lang/String;
    .restart local v50    # "sGridCaption":Ljava/lang/String;
    :cond_9
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_c

    .line 3055
    :cond_a
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_5

    .line 3076
    .restart local v18    # "yHeight":I
    .restart local v53    # "xHeight":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationX:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    const/16 v25, 0x1

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v17

    move/from16 v22, v53

    move/from16 v26, v14

    invoke-virtual/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILjava/lang/String;IIIZ)V

    .line 3077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->mLocationY:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    const/16 v25, 0x1

    const/16 v27, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v49

    move/from16 v22, v53

    move/from16 v26, v14

    invoke-virtual/range {v19 .. v27}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawFieldText(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILjava/lang/String;IIIZ)V

    move-object/from16 v26, v50

    .end local v50    # "sGridCaption":Ljava/lang/String;
    .restart local v26    # "sGridCaption":Ljava/lang/String;
    goto/16 :goto_6

    .line 3092
    .end local v14    # "textColour":I
    .end local v18    # "yHeight":I
    .end local v39    # "CellHeight":I
    .end local v45    # "TextY":I
    .end local v53    # "xHeight":I
    :cond_c
    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x3

    const/16 v25, 0x32

    sget v27, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_FIELD_FORE:I

    sget v28, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_WORLD_BACK:I

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v7

    invoke-virtual/range {v19 .. v28}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawCell(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIILjava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v10

    goto/16 :goto_7

    .line 3159
    .end local v10    # "rcCell":Landroid/graphics/Rect;
    :cond_d
    const/16 v28, 0x3

    const/16 v31, 0xd

    const/16 v32, 0x2

    const/16 v33, 0x3

    const/16 v34, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v37

    sget v38, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_DISABLED:I

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v38}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 3160
    const/16 v28, 0x4

    const/16 v31, 0xd

    const/16 v32, 0x3

    const/16 v33, 0x3

    const/16 v34, 0x1

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v37

    sget v38, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_DISABLED:I

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v38}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_8

    .line 3165
    :cond_e
    const/16 v28, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x32

    const/16 v33, 0x1

    const/16 v34, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v5

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v36}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniStatusCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIZLandroid/location/Location;)V

    .line 3166
    const/16 v28, 0x2

    const/16 v31, 0x1

    const/16 v32, 0x32

    const/16 v33, 0x1

    const/16 v34, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;

    move-result-object v35

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v35}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniSatellitesCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIILandroid/location/GpsStatus;)V

    .line 3167
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$11()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3169
    const/16 v28, 0x3

    const/16 v31, 0x2

    const/16 v32, 0x32

    const/16 v33, 0x1

    const/16 v34, 0xe

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v37

    sget v38, Lcom/chartcross/gpstest/GPSTest$MapView;->mFieldTextColour:I

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v38}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 3170
    const/16 v28, 0x4

    const/16 v31, 0x3

    const/16 v32, 0x32

    const/16 v33, 0x1

    const/16 v34, 0xe

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v37

    sget v38, Lcom/chartcross/gpstest/GPSTest$MapView;->mFieldTextColour:I

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v38}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_8

    .line 3174
    :cond_f
    const/16 v28, 0x3

    const/16 v31, 0x2

    const/16 v32, 0x32

    const/16 v33, 0x1

    const/16 v34, 0xe

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$13(Lcom/chartcross/gpstest/GPSTest;)I

    move-result v37

    sget v38, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_DISABLED:I

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v38}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniSpeedCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    .line 3175
    const/16 v28, 0x4

    const/16 v31, 0x3

    const/16 v32, 0x32

    const/16 v33, 0x1

    const/16 v34, 0xe

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest$MapView;->GetDip(I)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    move-object v5, v0

    invoke-static {v5}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v36

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$14()I

    move-result v37

    sget v38, Lcom/chartcross/gpstest/GPSTest$MapView;->MX_COLOUR_DISABLED:I

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move-object/from16 v30, v7

    invoke-virtual/range {v27 .. v38}, Lcom/chartcross/gpstest/GPSTest$MapView;->DrawMiniTimeCell(ILandroid/graphics/Canvas;Landroid/graphics/Rect;IIIIILandroid/location/Location;II)V

    goto/16 :goto_8

    .line 2827
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_d
        :pswitch_16
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_1f
    .end packed-switch

    .line 3026
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_20
        :pswitch_20
        :pswitch_0
        :pswitch_20
        :pswitch_20
    .end packed-switch

    .line 2851
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2897
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 2937
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 2719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2720
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2722
    .local v2, "y":F
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$9()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2724
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$MapView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v3, v2

    .line 2727
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2761
    :goto_0
    return v5

    .line 2730
    :pswitch_0
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/chartcross/gpstest/GPSTest$MapView;->HitTestButton(II)I

    move-result v3

    iput v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mButtonHit:I

    .line 2731
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$MapView;->invalidate()V

    goto :goto_0

    .line 2735
    :pswitch_1
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/chartcross/gpstest/GPSTest$MapView;->HitTestButton(II)I

    move-result v0

    .line 2736
    .local v0, "ButtonHit":I
    iget v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mButtonHit:I

    if-ne v0, v3, :cond_1

    .line 2738
    packed-switch v0, :pswitch_data_1

    .line 2757
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->mButtonHit:I

    .line 2758
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest$MapView;->invalidate()V

    goto :goto_0

    .line 2741
    :pswitch_2
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-virtual {v3, v5}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 2745
    :pswitch_3
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 2749
    :pswitch_4
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 2753
    :pswitch_5
    iget-object v3, p0, Lcom/chartcross/gpstest/GPSTest$MapView;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_1

    .line 2727
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2738
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
