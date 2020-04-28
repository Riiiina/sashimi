.class public Lcom/chartcross/gpstest/GPSTest;
.super Landroid/app/Activity;
.source "GPSTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartcross/gpstest/GPSTest$GpsSatView;,
        Lcom/chartcross/gpstest/GPSTest$GpsSnrView;,
        Lcom/chartcross/gpstest/GPSTest$MapView;,
        Lcom/chartcross/gpstest/GPSTest$MyLocationListener;,
        Lcom/chartcross/gpstest/GPSTest$SpeedView;,
        Lcom/chartcross/gpstest/GPSTest$TimeView;
    }
.end annotation


# static fields
.field private static final FIELD_ALTITUDE:I = 0x1

.field private static final FIELD_HEADING:I = 0x2

.field private static final FIELD_SPEED:I = 0x0

.field private static final GRID_CH1903:I = 0x9

.field private static final GRID_LL_DDDDDD:I = 0x2

.field private static final GRID_LL_DDMMMM:I = 0x1

.field private static final GRID_LL_DDMMSS:I = 0x0

.field private static final GRID_MAIDENHEAD:I = 0x8

.field private static final GRID_MGRS:I = 0x4

.field private static final GRID_OSGB:I = 0x6

.field private static final GRID_OSGB_GR:I = 0x7

.field private static final GRID_USNG:I = 0x5

.field private static final GRID_UTM:I = 0x3

.field private static final MSG_HEADING_CHANGE:I = 0x1

.field private static final MSG_STOP_SPLASH:I = 0x0

.field private static final REQUEST_SETTINGS:I = 0x1

.field private static final RESTART_TIME:I = 0x493e0

.field private static final SPLASH_TIME:J = 0xfa0L

.field public static final UNITS_IMPERIAL:I = 0x0

.field public static final UNITS_METRIC:I = 0x1

.field public static final UNITS_NAUTICAL:I = 0x2

.field private static final VIEW_MAP:I = 0x4

.field private static final VIEW_SAT:I = 0x2

.field private static final VIEW_SNR:I = 0x1

.field private static final VIEW_SPEED:I = 0x3

.field private static final VIEW_START:I = 0x0

.field private static final VIEW_TIME:I = 0x5

.field private static mColourScheme:I

.field private static mCurrentView:I

.field private static mDateFormat:I

.field private static mDatum:I

.field private static mDisplayTenths:Z

.field private static mField:[I

.field private static mGrid:I

.field private static mGridPrecision:I

.field private static mHideSplash:Z

.field private static mHudMode:Z

.field private static mLLFormat:I

.field private static mLastLocationMillis:J

.field private static mLocationValid:Z

.field private static mSingleField:Z

.field private static mTimeFormat:I

.field private static mUseGeoid:Z


# instance fields
.field private mAltitudeUnits:I

.field private mContext:Landroid/content/Context;

.field private mCoordConverter:Lcom/chartcross/location/MxCoordConverter;

.field private mGeoid:Lcom/chartcross/location/MxGeoid;

.field private mGpsStatus:Landroid/location/GpsStatus;

.field private mHeadingUnits:I

.field private mLocListener:Landroid/location/LocationListener;

.field private mLocManager:Landroid/location/LocationManager;

.field private mLocation:Landroid/location/Location;

.field private mMapView:Lcom/chartcross/gpstest/GPSTest$MapView;

.field private mSatView:Lcom/chartcross/gpstest/GPSTest$GpsSatView;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValues:[F

.field private mSnrView:Lcom/chartcross/gpstest/GPSTest$GpsSnrView;

.field private mSpeedUnits:I

.field private mSpeedView:Lcom/chartcross/gpstest/GPSTest$SpeedView;

.field private mTimeView:Lcom/chartcross/gpstest/GPSTest$TimeView;

.field private msgHandler:Landroid/os/Handler;

.field private final onGpsStatusChange:Landroid/location/GpsStatus$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    sput v2, Lcom/chartcross/gpstest/GPSTest;->mTimeFormat:I

    .line 97
    sput v2, Lcom/chartcross/gpstest/GPSTest;->mDateFormat:I

    .line 98
    const/4 v0, 0x2

    sput v0, Lcom/chartcross/gpstest/GPSTest;->mLLFormat:I

    .line 99
    sput v2, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 100
    sput v2, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    .line 101
    sput v2, Lcom/chartcross/gpstest/GPSTest;->mGridPrecision:I

    .line 102
    sput v2, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    .line 103
    sput v2, Lcom/chartcross/gpstest/GPSTest;->mColourScheme:I

    .line 104
    sput-boolean v1, Lcom/chartcross/gpstest/GPSTest;->mUseGeoid:Z

    .line 106
    sput-boolean v1, Lcom/chartcross/gpstest/GPSTest;->mDisplayTenths:Z

    .line 107
    sput-boolean v2, Lcom/chartcross/gpstest/GPSTest;->mHideSplash:Z

    .line 108
    sput-boolean v2, Lcom/chartcross/gpstest/GPSTest;->mHudMode:Z

    .line 109
    sput-boolean v2, Lcom/chartcross/gpstest/GPSTest;->mLocationValid:Z

    .line 110
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/chartcross/gpstest/GPSTest;->mLastLocationMillis:J

    .line 112
    sput-boolean v2, Lcom/chartcross/gpstest/GPSTest;->mSingleField:Z

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/chartcross/gpstest/GPSTest;->mField:[I

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/chartcross/location/MxCoordConverter;

    invoke-direct {v0}, Lcom/chartcross/location/MxCoordConverter;-><init>()V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mCoordConverter:Lcom/chartcross/location/MxCoordConverter;

    .line 93
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    .line 94
    iput v1, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartcross/gpstest/GPSTest;->mHeadingUnits:I

    .line 105
    new-instance v0, Lcom/chartcross/location/MxGeoid;

    invoke-direct {v0}, Lcom/chartcross/location/MxGeoid;-><init>()V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mGeoid:Lcom/chartcross/location/MxGeoid;

    .line 115
    new-instance v0, Lcom/chartcross/gpstest/GPSTest$1;

    invoke-direct {v0, p0}, Lcom/chartcross/gpstest/GPSTest$1;-><init>(Lcom/chartcross/gpstest/GPSTest;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 135
    new-instance v0, Lcom/chartcross/gpstest/GPSTest$2;

    invoke-direct {v0, p0}, Lcom/chartcross/gpstest/GPSTest$2;-><init>(Lcom/chartcross/gpstest/GPSTest;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->msgHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/chartcross/gpstest/GPSTest$3;

    invoke-direct {v0, p0}, Lcom/chartcross/gpstest/GPSTest$3;-><init>(Lcom/chartcross/gpstest/GPSTest;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->onGpsStatusChange:Landroid/location/GpsStatus$Listener;

    .line 45
    return-void
.end method

.method private InvalidateViews()V
    .locals 1

    .prologue
    .line 439
    sget v0, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    packed-switch v0, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 442
    :pswitch_0
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSnrView:Lcom/chartcross/gpstest/GPSTest$GpsSnrView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSnrView:Lcom/chartcross/gpstest/GPSTest$GpsSnrView;

    invoke-virtual {v0}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->invalidate()V

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSatView:Lcom/chartcross/gpstest/GPSTest$GpsSatView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSatView:Lcom/chartcross/gpstest/GPSTest$GpsSatView;

    invoke-virtual {v0}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->invalidate()V

    goto :goto_0

    .line 450
    :pswitch_2
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedView:Lcom/chartcross/gpstest/GPSTest$SpeedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedView:Lcom/chartcross/gpstest/GPSTest$SpeedView;

    invoke-virtual {v0}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->invalidate()V

    goto :goto_0

    .line 454
    :pswitch_3
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mMapView:Lcom/chartcross/gpstest/GPSTest$MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mMapView:Lcom/chartcross/gpstest/GPSTest$MapView;

    invoke-virtual {v0}, Lcom/chartcross/gpstest/GPSTest$MapView;->invalidate()V

    goto :goto_0

    .line 458
    :pswitch_4
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mTimeView:Lcom/chartcross/gpstest/GPSTest$TimeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mTimeView:Lcom/chartcross/gpstest/GPSTest$TimeView;

    invoke-virtual {v0}, Lcom/chartcross/gpstest/GPSTest$TimeView;->invalidate()V

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private KeepBacklightOn(Z)V
    .locals 1
    .param p1, "KeepOn"    # Z

    .prologue
    .line 421
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSnrView:Lcom/chartcross/gpstest/GPSTest$GpsSnrView;

    invoke-virtual {v0, p1}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->setKeepScreenOn(Z)V

    .line 422
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSatView:Lcom/chartcross/gpstest/GPSTest$GpsSatView;

    invoke-virtual {v0, p1}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->setKeepScreenOn(Z)V

    .line 423
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedView:Lcom/chartcross/gpstest/GPSTest$SpeedView;

    invoke-virtual {v0, p1}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->setKeepScreenOn(Z)V

    .line 424
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mMapView:Lcom/chartcross/gpstest/GPSTest$MapView;

    invoke-virtual {v0, p1}, Lcom/chartcross/gpstest/GPSTest$MapView;->setKeepScreenOn(Z)V

    .line 425
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mTimeView:Lcom/chartcross/gpstest/GPSTest$TimeView;

    invoke-virtual {v0, p1}, Lcom/chartcross/gpstest/GPSTest$TimeView;->setKeepScreenOn(Z)V

    .line 426
    return-void
.end method

.method private LoadSettings()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 660
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 665
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    const-string v6, "grid_type"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 667
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mGridPrecision:I

    .line 668
    const-string v6, "grid_type"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "sField":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 673
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 674
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    .line 675
    sput v11, Lcom/chartcross/gpstest/GPSTest;->mLLFormat:I

    .line 751
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 752
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    sget v8, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 753
    const-string v6, "grid"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    sget v8, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 755
    const-string v6, "datum"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 756
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    sget v8, Lcom/chartcross/gpstest/GPSTest;->mGridPrecision:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 757
    const-string v6, "precision"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 758
    const-string v6, "grid_type"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 759
    const-string v6, "ll_format"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 760
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 838
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    const-string v6, "units"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 840
    const-string v6, "units"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 841
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 845
    iput v9, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    .line 846
    iput v9, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    .line 857
    :goto_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 858
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 859
    const-string v6, "speed_units"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 860
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 861
    const-string v6, "altitude_units"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 862
    const-string v6, "units"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 863
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 909
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_3
    const-string v6, "heading_units"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_2

    .line 920
    :pswitch_0
    iput v9, p0, Lcom/chartcross/gpstest/GPSTest;->mHeadingUnits:I

    .line 930
    :goto_4
    const-string v6, "heading_device"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 931
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_3

    .line 941
    :pswitch_1
    sput v9, Lcom/chartcross/gpstest/RootView;->mHeadingDevice:I

    .line 951
    :goto_5
    const-string v6, "north_reference"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 952
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_4

    .line 962
    :pswitch_2
    sput v9, Lcom/chartcross/gpstest/RootView;->mNorthReference:I

    .line 969
    :goto_6
    const-string v6, "colour_scheme"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 970
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mColourScheme:I

    .line 971
    sget v6, Lcom/chartcross/gpstest/GPSTest;->mColourScheme:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 973
    sput v13, Lcom/chartcross/gpstest/GPSTest;->mColourScheme:I

    .line 974
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 975
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    sget v8, Lcom/chartcross/gpstest/GPSTest;->mColourScheme:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 976
    const-string v6, "colour_scheme"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 977
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 979
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    sget v6, Lcom/chartcross/gpstest/GPSTest;->mColourScheme:I

    invoke-static {v6}, Lcom/chartcross/view/MxCellView;->SetColourScheme(I)V

    .line 981
    const-string v6, "field_text_colour"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_5

    .line 993
    :pswitch_3
    sget v6, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    sput v6, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    .line 1018
    :goto_7
    const-string v6, "time_format"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1019
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_6

    .line 1030
    :pswitch_4
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mTimeFormat:I

    .line 1037
    :goto_8
    const-string v6, "date_format"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1038
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_7

    .line 1049
    :pswitch_5
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDateFormat:I

    .line 1059
    :goto_9
    new-array v6, v12, [I

    sput-object v6, Lcom/chartcross/gpstest/GPSTest;->mField:[I

    .line 1060
    sget-object v6, Lcom/chartcross/gpstest/GPSTest;->mField:[I

    const-string v7, "field_one"

    invoke-interface {v4, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v9

    .line 1061
    sget-object v6, Lcom/chartcross/gpstest/GPSTest;->mField:[I

    const-string v7, "field_two"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v10

    .line 1062
    sget-object v6, Lcom/chartcross/gpstest/GPSTest;->mField:[I

    const-string v7, "field_three"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v11

    .line 1063
    const-string v6, "single_field"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/chartcross/gpstest/GPSTest;->mSingleField:Z

    .line 1068
    const-string v6, "usegeoid"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/chartcross/gpstest/GPSTest;->mUseGeoid:Z

    .line 1069
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1070
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "usegeoid"

    sget-boolean v7, Lcom/chartcross/gpstest/GPSTest;->mUseGeoid:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1072
    const-string v6, "backlight"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1073
    .local v2, "nBackLight":Z
    invoke-direct {p0, v2}, Lcom/chartcross/gpstest/GPSTest;->KeepBacklightOn(Z)V

    .line 1075
    const-string v6, "hidesplash"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/chartcross/gpstest/GPSTest;->mHideSplash:Z

    .line 1076
    const-string v6, "hidesplash"

    sget-boolean v7, Lcom/chartcross/gpstest/GPSTest;->mHideSplash:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1078
    const-string v6, "tenths"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/chartcross/gpstest/GPSTest;->mDisplayTenths:Z

    .line 1079
    const-string v6, "tenths"

    sget-boolean v7, Lcom/chartcross/gpstest/GPSTest;->mDisplayTenths:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1081
    const-string v6, "fullscreen"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1082
    .local v0, "FullScreen":Z
    const-string v6, "fullscreen"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1083
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 1084
    .local v5, "win":Landroid/view/Window;
    if-eqz v0, :cond_4

    .line 1086
    const/16 v6, 0x400

    const/16 v7, 0x400

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFlags(II)V

    .line 1093
    :goto_a
    const-string v6, "orientation"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1094
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_8

    .line 1102
    :pswitch_6
    invoke-virtual {p0, v13}, Lcom/chartcross/gpstest/GPSTest;->setRequestedOrientation(I)V

    .line 1114
    :goto_b
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1115
    return-void

    .line 678
    .end local v0    # "FullScreen":Z
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "nBackLight":Z
    .end local v5    # "win":Landroid/view/Window;
    :pswitch_7
    const-string v6, "ll_format"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_9

    .line 683
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 684
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    .line 685
    sput v11, Lcom/chartcross/gpstest/GPSTest;->mLLFormat:I

    goto/16 :goto_0

    .line 688
    :pswitch_8
    sput v10, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 689
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    .line 690
    sput v10, Lcom/chartcross/gpstest/GPSTest;->mLLFormat:I

    goto/16 :goto_0

    .line 693
    :pswitch_9
    sput v11, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 694
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    .line 695
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mLLFormat:I

    goto/16 :goto_0

    .line 700
    :pswitch_a
    const/4 v6, 0x6

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 701
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 704
    :pswitch_b
    const/4 v6, 0x7

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 705
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 708
    :pswitch_c
    sput v12, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 709
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 712
    :pswitch_d
    sput v12, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 713
    sput v12, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 716
    :pswitch_e
    sput v12, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 717
    sput v11, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 720
    :pswitch_f
    const/16 v6, 0x8

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    goto/16 :goto_0

    .line 723
    :pswitch_10
    sput v13, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 724
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 727
    :pswitch_11
    sput v13, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 728
    sput v12, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 731
    :pswitch_12
    sput v13, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 732
    sput v11, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 735
    :pswitch_13
    const/4 v6, 0x5

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 736
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 739
    :pswitch_14
    const/4 v6, 0x5

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 740
    sput v12, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 743
    :pswitch_15
    const/4 v6, 0x5

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 744
    sput v11, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto/16 :goto_0

    .line 747
    :pswitch_16
    const/16 v6, 0x9

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    goto/16 :goto_0

    .line 764
    .end local v3    # "sField":Ljava/lang/String;
    :cond_2
    const-string v6, "grid"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 765
    .restart local v3    # "sField":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    .line 766
    sget v6, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    packed-switch v6, :pswitch_data_a

    .line 776
    :pswitch_17
    sput v11, Lcom/chartcross/gpstest/GPSTest;->mLLFormat:I

    .line 788
    :goto_c
    const-string v6, "datum"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 789
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_b

    .line 793
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 794
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "datum"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 795
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 796
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    .line 824
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_d
    const-string v6, "precision"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 825
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mGridPrecision:I

    .line 826
    sget v6, Lcom/chartcross/gpstest/GPSTest;->mGridPrecision:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 828
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 829
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "precision"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 830
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 831
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mGridPrecision:I

    goto/16 :goto_1

    .line 769
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_18
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 770
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "grid"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 771
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    .line 780
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_19
    sput v10, Lcom/chartcross/gpstest/GPSTest;->mLLFormat:I

    goto :goto_c

    .line 784
    :pswitch_1a
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mLLFormat:I

    goto :goto_c

    .line 799
    :pswitch_1b
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto :goto_d

    .line 802
    :pswitch_1c
    sput v12, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto :goto_d

    .line 805
    :pswitch_1d
    sput v11, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto :goto_d

    .line 808
    :pswitch_1e
    const/4 v6, 0x5

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto :goto_d

    .line 811
    :pswitch_1f
    const/4 v6, 0x6

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto :goto_d

    .line 814
    :pswitch_20
    const/4 v6, 0x7

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto :goto_d

    .line 817
    :pswitch_21
    const/16 v6, 0x8

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto :goto_d

    .line 820
    :pswitch_22
    const/16 v6, 0x9

    sput v6, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    goto :goto_d

    .line 849
    :pswitch_23
    iput v10, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    .line 850
    iput v10, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    goto/16 :goto_2

    .line 853
    :pswitch_24
    iput v11, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    .line 854
    iput v11, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    goto/16 :goto_2

    .line 867
    :cond_3
    const-string v6, "speed_units"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 868
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_c

    .line 879
    :pswitch_25
    iput v9, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    .line 889
    :goto_e
    const-string v6, "altitude_units"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 890
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_d

    .line 901
    :pswitch_26
    iput v9, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    goto/16 :goto_3

    .line 871
    :pswitch_27
    iput v9, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    .line 872
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 873
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 874
    const-string v6, "speed_units"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 875
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_e

    .line 882
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_28
    iput v10, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    goto :goto_e

    .line 885
    :pswitch_29
    iput v11, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    goto :goto_e

    .line 893
    :pswitch_2a
    iput v9, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    .line 894
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 895
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 896
    const-string v6, "altitude_units"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 897
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 904
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_2b
    iput v10, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    goto/16 :goto_3

    .line 913
    :pswitch_2c
    iput v9, p0, Lcom/chartcross/gpstest/GPSTest;->mHeadingUnits:I

    .line 914
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 915
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "heading_units"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 916
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 923
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_2d
    iput v10, p0, Lcom/chartcross/gpstest/GPSTest;->mHeadingUnits:I

    goto/16 :goto_4

    .line 926
    :pswitch_2e
    iput v11, p0, Lcom/chartcross/gpstest/GPSTest;->mHeadingUnits:I

    goto/16 :goto_4

    .line 934
    :pswitch_2f
    sput v9, Lcom/chartcross/gpstest/RootView;->mHeadingDevice:I

    .line 935
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 936
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "heading_device"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 937
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5

    .line 944
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_30
    sput v10, Lcom/chartcross/gpstest/RootView;->mHeadingDevice:I

    goto/16 :goto_5

    .line 947
    :pswitch_31
    sput v11, Lcom/chartcross/gpstest/RootView;->mHeadingDevice:I

    goto/16 :goto_5

    .line 955
    :pswitch_32
    sput v9, Lcom/chartcross/gpstest/RootView;->mNorthReference:I

    .line 956
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 957
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "north_reference"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 958
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_6

    .line 965
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_33
    sput v10, Lcom/chartcross/gpstest/RootView;->mNorthReference:I

    goto/16 :goto_6

    .line 985
    :pswitch_34
    sget v6, Lcom/chartcross/view/MxCellView;->MX_COLOUR_FIELD_FORE:I

    sput v6, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    .line 986
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 987
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "speed_view_text_colour"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 988
    const-string v6, "field_text_colour"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 989
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_7

    .line 996
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_35
    const/high16 v6, -0x10000

    sput v6, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    goto/16 :goto_7

    .line 999
    :pswitch_36
    const v6, -0xff0100

    sput v6, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    goto/16 :goto_7

    .line 1002
    :pswitch_37
    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xd7

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sput v6, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    goto/16 :goto_7

    .line 1005
    :pswitch_38
    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v6, v9, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sput v6, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    goto/16 :goto_7

    .line 1008
    :pswitch_39
    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0x6f

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sput v6, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    goto/16 :goto_7

    .line 1011
    :pswitch_3a
    const v6, -0xff0001

    sput v6, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    goto/16 :goto_7

    .line 1014
    :pswitch_3b
    const/16 v6, -0x100

    sput v6, Lcom/chartcross/gpstest/RootView;->mFieldTextColour:I

    goto/16 :goto_7

    .line 1022
    :pswitch_3c
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mTimeFormat:I

    .line 1023
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1024
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1025
    const-string v6, "time_format"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1026
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_8

    .line 1033
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_3d
    sput v10, Lcom/chartcross/gpstest/GPSTest;->mTimeFormat:I

    goto/16 :goto_8

    .line 1041
    :pswitch_3e
    sput v9, Lcom/chartcross/gpstest/GPSTest;->mDateFormat:I

    .line 1042
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1043
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1044
    const-string v6, "date_format"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1045
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_9

    .line 1052
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_3f
    sput v10, Lcom/chartcross/gpstest/GPSTest;->mDateFormat:I

    goto/16 :goto_9

    .line 1055
    :pswitch_40
    sput v11, Lcom/chartcross/gpstest/GPSTest;->mDateFormat:I

    goto/16 :goto_9

    .line 1090
    .restart local v0    # "FullScreen":Z
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "nBackLight":Z
    .restart local v5    # "win":Landroid/view/Window;
    :cond_4
    const/16 v6, -0x401

    const/16 v7, 0x400

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_a

    .line 1097
    :pswitch_41
    const-string v6, "orientation"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1098
    invoke-virtual {p0, v13}, Lcom/chartcross/gpstest/GPSTest;->setRequestedOrientation(I)V

    goto/16 :goto_b

    .line 1106
    :pswitch_42
    invoke-virtual {p0, v10}, Lcom/chartcross/gpstest/GPSTest;->setRequestedOrientation(I)V

    goto/16 :goto_b

    .line 1110
    :pswitch_43
    invoke-virtual {p0, v9}, Lcom/chartcross/gpstest/GPSTest;->setRequestedOrientation(I)V

    goto/16 :goto_b

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 841
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 910
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_2c
        :pswitch_0
        :pswitch_2d
        :pswitch_2e
    .end packed-switch

    .line 931
    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_2f
        :pswitch_1
        :pswitch_30
        :pswitch_31
    .end packed-switch

    .line 952
    :pswitch_data_4
    .packed-switch -0x1
        :pswitch_32
        :pswitch_2
        :pswitch_33
    .end packed-switch

    .line 982
    :pswitch_data_5
    .packed-switch -0x1
        :pswitch_34
        :pswitch_3
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch

    .line 1019
    :pswitch_data_6
    .packed-switch -0x1
        :pswitch_3c
        :pswitch_4
        :pswitch_3d
    .end packed-switch

    .line 1038
    :pswitch_data_7
    .packed-switch -0x1
        :pswitch_3e
        :pswitch_5
        :pswitch_3f
        :pswitch_40
    .end packed-switch

    .line 1094
    :pswitch_data_8
    .packed-switch -0x1
        :pswitch_41
        :pswitch_6
        :pswitch_42
        :pswitch_43
    .end packed-switch

    .line 679
    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 766
    :pswitch_data_a
    .packed-switch -0x1
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 789
    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch

    .line 868
    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_27
        :pswitch_25
        :pswitch_28
        :pswitch_29
    .end packed-switch

    .line 890
    :pswitch_data_d
    .packed-switch -0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_2b
    .end packed-switch
.end method

.method private LoadViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    new-instance v0, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;

    invoke-direct {v0, p0, p0}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;-><init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSnrView:Lcom/chartcross/gpstest/GPSTest$GpsSnrView;

    .line 431
    new-instance v0, Lcom/chartcross/gpstest/GPSTest$GpsSatView;

    invoke-direct {v0, p0, p0}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;-><init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSatView:Lcom/chartcross/gpstest/GPSTest$GpsSatView;

    .line 432
    new-instance v0, Lcom/chartcross/gpstest/GPSTest$SpeedView;

    invoke-direct {v0, p0, p0}, Lcom/chartcross/gpstest/GPSTest$SpeedView;-><init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedView:Lcom/chartcross/gpstest/GPSTest$SpeedView;

    .line 433
    new-instance v0, Lcom/chartcross/gpstest/GPSTest$MapView;

    invoke-direct {v0, p0, p0}, Lcom/chartcross/gpstest/GPSTest$MapView;-><init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mMapView:Lcom/chartcross/gpstest/GPSTest$MapView;

    .line 434
    new-instance v0, Lcom/chartcross/gpstest/GPSTest$TimeView;

    invoke-direct {v0, p0, p0}, Lcom/chartcross/gpstest/GPSTest$TimeView;-><init>(Lcom/chartcross/gpstest/GPSTest;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mTimeView:Lcom/chartcross/gpstest/GPSTest$TimeView;

    .line 435
    return-void
.end method

.method private ResetDataFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/chartcross/gpstest/RootView;->mAccuracy:D

    .line 342
    sput v2, Lcom/chartcross/gpstest/RootView;->mCourse:F

    .line 343
    sput v2, Lcom/chartcross/gpstest/RootView;->mHeading:F

    .line 344
    sput v2, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    .line 345
    sput v2, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    .line 346
    const/4 v0, 0x0

    sput v0, Lcom/chartcross/gpstest/RootView;->mHeadingSource:I

    .line 363
    return-void
.end method

.method private RestartGPS()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 179
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->onGpsStatusChange:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 180
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 181
    iput-object v2, p0, Lcom/chartcross/gpstest/GPSTest;->mGpsStatus:Landroid/location/GpsStatus;

    .line 182
    iput-object v2, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    .line 183
    iput-object v2, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorValues:[F

    .line 185
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->onGpsStatusChange:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 186
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    .line 187
    const-string v1, "gps"

    .line 188
    const-wide/16 v2, 0x0

    .line 189
    const/4 v4, 0x0

    .line 190
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mLocListener:Landroid/location/LocationListener;

    .line 186
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 192
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 193
    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 194
    const/4 v3, 0x2

    .line 192
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 195
    return-void
.end method

.method private SetHeading()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    const-wide v7, 0x4076800000000000L    # 360.0

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "newHeading":F
    sget v3, Lcom/chartcross/gpstest/RootView;->mHeading:F

    .line 202
    .local v3, "oldHeading":F
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorValues:[F

    if-nez v5, :cond_6

    .line 204
    sput v9, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    .line 205
    sput v9, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    .line 232
    :goto_0
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    if-nez v5, :cond_7

    .line 234
    sput v9, Lcom/chartcross/gpstest/RootView;->mCourse:F

    .line 241
    :goto_1
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    float-to-double v5, v5

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_0

    .line 243
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    float-to-double v5, v5

    sub-double/2addr v5, v7

    double-to-float v5, v5

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    .line 245
    :cond_0
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_1

    .line 247
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-float v5, v5

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    .line 250
    :cond_1
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    float-to-double v5, v5

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_2

    .line 252
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    float-to-double v5, v5

    sub-double/2addr v5, v7

    double-to-float v5, v5

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    .line 254
    :cond_2
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_3

    .line 256
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-float v5, v5

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    .line 259
    :cond_3
    sget v5, Lcom/chartcross/gpstest/RootView;->mCourse:F

    float-to-double v5, v5

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_4

    .line 261
    sget v5, Lcom/chartcross/gpstest/RootView;->mCourse:F

    float-to-double v5, v5

    sub-double/2addr v5, v7

    double-to-float v5, v5

    sput v5, Lcom/chartcross/gpstest/RootView;->mCourse:F

    .line 263
    :cond_4
    sget v5, Lcom/chartcross/gpstest/RootView;->mCourse:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_5

    .line 265
    sget v5, Lcom/chartcross/gpstest/RootView;->mCourse:F

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-float v5, v5

    sput v5, Lcom/chartcross/gpstest/RootView;->mCourse:F

    .line 268
    :cond_5
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorValues:[F

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    if-nez v5, :cond_8

    .line 270
    sput v11, Lcom/chartcross/gpstest/RootView;->mHeadingSource:I

    .line 336
    :goto_2
    sput v2, Lcom/chartcross/gpstest/RootView;->mHeading:F

    .line 337
    return-void

    .line 209
    :cond_6
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 210
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v4

    .line 211
    .local v4, "rotation":I
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorValues:[F

    aget v5, v5, v11

    sget v6, Lcom/chartcross/gpstest/RootView;->mDeclination:F

    add-float/2addr v5, v6

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    .line 212
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorValues:[F

    aget v5, v5, v11

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    .line 213
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 216
    :pswitch_0
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    add-float/2addr v5, v10

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    .line 217
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    add-float/2addr v5, v10

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    goto/16 :goto_0

    .line 221
    :pswitch_1
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    const/high16 v6, 0x43340000    # 180.0f

    add-float/2addr v5, v6

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    .line 222
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    const/high16 v6, 0x43340000    # 180.0f

    add-float/2addr v5, v6

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    goto/16 :goto_0

    .line 226
    :pswitch_2
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    sub-float/2addr v5, v10

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    .line 227
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    sub-float/2addr v5, v10

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    goto/16 :goto_0

    .line 238
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "rotation":I
    :cond_7
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v5

    sput v5, Lcom/chartcross/gpstest/RootView;->mCourse:F

    goto/16 :goto_1

    .line 275
    :cond_8
    sget v5, Lcom/chartcross/gpstest/RootView;->mNorthReference:I

    packed-switch v5, :pswitch_data_1

    .line 279
    sget v1, Lcom/chartcross/gpstest/RootView;->mHeadingTrue:F

    .line 288
    .local v1, "heading":F
    :goto_3
    sget v5, Lcom/chartcross/gpstest/RootView;->mHeadingDevice:I

    packed-switch v5, :pswitch_data_2

    .line 292
    const/4 v5, 0x2

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingSource:I

    .line 293
    sget v2, Lcom/chartcross/gpstest/RootView;->mCourse:F

    .line 294
    goto :goto_2

    .line 283
    .end local v1    # "heading":F
    :pswitch_3
    sget v1, Lcom/chartcross/gpstest/RootView;->mHeadingMagnetic:F

    .restart local v1    # "heading":F
    goto :goto_3

    .line 297
    :pswitch_4
    sput v12, Lcom/chartcross/gpstest/RootView;->mHeadingSource:I

    .line 298
    move v2, v1

    .line 299
    goto :goto_2

    .line 302
    :pswitch_5
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    if-nez v5, :cond_9

    .line 304
    move v2, v1

    .line 305
    sput v12, Lcom/chartcross/gpstest/RootView;->mHeadingSource:I

    goto :goto_2

    .line 314
    :cond_9
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getSpeed()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x4002000000000000L    # 2.25

    cmpl-double v5, v5, v7

    if-lez v5, :cond_a

    .line 316
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v2

    .line 317
    const/4 v5, 0x2

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingSource:I

    goto/16 :goto_2

    .line 321
    :cond_a
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorValues:[F

    if-nez v5, :cond_b

    .line 323
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v2

    .line 324
    const/4 v5, 0x2

    sput v5, Lcom/chartcross/gpstest/RootView;->mHeadingSource:I

    goto/16 :goto_2

    .line 328
    :cond_b
    move v2, v1

    .line 329
    sput v12, Lcom/chartcross/gpstest/RootView;->mHeadingSource:I

    goto/16 :goto_2

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 275
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 288
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private UpdateDataFields()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, Lcom/chartcross/gpstest/RootView;->mAccuracy:D

    .line 417
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/chartcross/gpstest/GPSTest;[F)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorValues:[F

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    return v0
.end method

.method static synthetic access$10(Lcom/chartcross/gpstest/GPSTest;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/chartcross/gpstest/GPSTest;->mAltitudeUnits:I

    return v0
.end method

.method static synthetic access$11()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/chartcross/gpstest/GPSTest;->mLocationValid:Z

    return v0
.end method

.method static synthetic access$12(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/GpsStatus;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mGpsStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic access$13(Lcom/chartcross/gpstest/GPSTest;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedUnits:I

    return v0
.end method

.method static synthetic access$14()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/chartcross/gpstest/GPSTest;->mTimeFormat:I

    return v0
.end method

.method static synthetic access$15(Lcom/chartcross/gpstest/GPSTest;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/chartcross/gpstest/GPSTest;->mHeadingUnits:I

    return v0
.end method

.method static synthetic access$16(Lcom/chartcross/gpstest/GPSTest;)[F
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorValues:[F

    return-object v0
.end method

.method static synthetic access$17()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/chartcross/gpstest/GPSTest;->mSingleField:Z

    return v0
.end method

.method static synthetic access$18(Z)V
    .locals 0

    .prologue
    .line 112
    sput-boolean p0, Lcom/chartcross/gpstest/GPSTest;->mSingleField:Z

    return-void
.end method

.method static synthetic access$19()[I
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/chartcross/gpstest/GPSTest;->mField:[I

    return-object v0
.end method

.method static synthetic access$2(Lcom/chartcross/gpstest/GPSTest;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/chartcross/gpstest/GPSTest;->SetHeading()V

    return-void
.end method

.method static synthetic access$20()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/chartcross/gpstest/GPSTest;->mDisplayTenths:Z

    return v0
.end method

.method static synthetic access$21(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxGeoid;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mGeoid:Lcom/chartcross/location/MxGeoid;

    return-object v0
.end method

.method static synthetic access$22()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/chartcross/gpstest/GPSTest;->mUseGeoid:Z

    return v0
.end method

.method static synthetic access$23()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/chartcross/gpstest/GPSTest;->mGrid:I

    return v0
.end method

.method static synthetic access$24()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/chartcross/gpstest/GPSTest;->mDatum:I

    return v0
.end method

.method static synthetic access$25()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/chartcross/gpstest/GPSTest;->mLLFormat:I

    return v0
.end method

.method static synthetic access$26(Lcom/chartcross/gpstest/GPSTest;)Lcom/chartcross/location/MxCoordConverter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mCoordConverter:Lcom/chartcross/location/MxCoordConverter;

    return-object v0
.end method

.method static synthetic access$27()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/chartcross/gpstest/GPSTest;->mGridPrecision:I

    return v0
.end method

.method static synthetic access$28()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/chartcross/gpstest/GPSTest;->mDateFormat:I

    return v0
.end method

.method static synthetic access$29(Lcom/chartcross/gpstest/GPSTest;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$3(Lcom/chartcross/gpstest/GPSTest;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/chartcross/gpstest/GPSTest;->InvalidateViews()V

    return-void
.end method

.method static synthetic access$30(Lcom/chartcross/gpstest/GPSTest;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/chartcross/gpstest/GPSTest;->UpdateDataFields()V

    return-void
.end method

.method static synthetic access$31(J)V
    .locals 0

    .prologue
    .line 110
    sput-wide p0, Lcom/chartcross/gpstest/GPSTest;->mLastLocationMillis:J

    return-void
.end method

.method static synthetic access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$5()J
    .locals 2

    .prologue
    .line 110
    sget-wide v0, Lcom/chartcross/gpstest/GPSTest;->mLastLocationMillis:J

    return-wide v0
.end method

.method static synthetic access$6(Z)V
    .locals 0

    .prologue
    .line 109
    sput-boolean p0, Lcom/chartcross/gpstest/GPSTest;->mLocationValid:Z

    return-void
.end method

.method static synthetic access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/chartcross/gpstest/GPSTest;Landroid/location/GpsStatus;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest;->mGpsStatus:Landroid/location/GpsStatus;

    return-void
.end method

.method static synthetic access$9()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/chartcross/gpstest/GPSTest;->mHudMode:Z

    return v0
.end method


# virtual methods
.method public SetCurrentView(I)Z
    .locals 3
    .param p1, "ViewNumber"    # I

    .prologue
    const/high16 v2, 0x7f060000

    .line 465
    sput p1, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    .line 468
    sget v1, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    packed-switch v1, :pswitch_data_0

    .line 510
    :goto_0
    invoke-direct {p0}, Lcom/chartcross/gpstest/GPSTest;->InvalidateViews()V

    .line 511
    const/4 v1, 0x1

    return v1

    .line 471
    :pswitch_0
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/chartcross/gpstest/GPSTest;->setContentView(I)V

    goto :goto_0

    .line 475
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/chartcross/gpstest/GPSTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 476
    .local v0, "fr":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 477
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSnrView:Lcom/chartcross/gpstest/GPSTest$GpsSnrView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 478
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSnrView:Lcom/chartcross/gpstest/GPSTest$GpsSnrView;

    invoke-virtual {v1}, Lcom/chartcross/gpstest/GPSTest$GpsSnrView;->requestFocus()Z

    goto :goto_0

    .line 482
    .end local v0    # "fr":Landroid/widget/FrameLayout;
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/chartcross/gpstest/GPSTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 483
    .restart local v0    # "fr":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 484
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSatView:Lcom/chartcross/gpstest/GPSTest$GpsSatView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 485
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSatView:Lcom/chartcross/gpstest/GPSTest$GpsSatView;

    invoke-virtual {v1}, Lcom/chartcross/gpstest/GPSTest$GpsSatView;->requestFocus()Z

    goto :goto_0

    .line 489
    .end local v0    # "fr":Landroid/widget/FrameLayout;
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/chartcross/gpstest/GPSTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 490
    .restart local v0    # "fr":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 491
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedView:Lcom/chartcross/gpstest/GPSTest$SpeedView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 492
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSpeedView:Lcom/chartcross/gpstest/GPSTest$SpeedView;

    invoke-virtual {v1}, Lcom/chartcross/gpstest/GPSTest$SpeedView;->requestFocus()Z

    goto :goto_0

    .line 496
    .end local v0    # "fr":Landroid/widget/FrameLayout;
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/chartcross/gpstest/GPSTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 497
    .restart local v0    # "fr":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 498
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mMapView:Lcom/chartcross/gpstest/GPSTest$MapView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 499
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mMapView:Lcom/chartcross/gpstest/GPSTest$MapView;

    invoke-virtual {v1}, Lcom/chartcross/gpstest/GPSTest$MapView;->requestFocus()Z

    goto :goto_0

    .line 503
    .end local v0    # "fr":Landroid/widget/FrameLayout;
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/chartcross/gpstest/GPSTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 504
    .restart local v0    # "fr":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 505
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mTimeView:Lcom/chartcross/gpstest/GPSTest$TimeView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 506
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mTimeView:Lcom/chartcross/gpstest/GPSTest$TimeView;

    invoke-virtual {v1}, Lcom/chartcross/gpstest/GPSTest$TimeView;->requestFocus()Z

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 650
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 651
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/chartcross/gpstest/GPSTest;->LoadSettings()V

    .line 655
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f030002

    const/4 v6, 0x1

    const/high16 v5, 0x43a00000    # 320.0f

    .line 517
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 519
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v4

    .line 520
    .local v2, "screenHeight":F
    invoke-virtual {p0}, Lcom/chartcross/gpstest/GPSTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v4

    .line 522
    .local v3, "screenWidth":F
    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    .line 524
    div-float v0, v2, v5

    .line 530
    .local v0, "density":F
    :goto_0
    invoke-static {v0}, Lcom/chartcross/view/MxCellView;->SetDensity(F)V

    .line 532
    const/high16 v4, 0x41280000    # 10.5f

    invoke-static {v4}, Lcom/chartcross/view/MxCellView;->GetDipF(F)F

    move-result v4

    sput v4, Lcom/chartcross/view/MxCellView;->mCornerRadius:F

    .line 533
    invoke-virtual {p0, v6}, Lcom/chartcross/gpstest/GPSTest;->requestWindowFeature(I)Z

    .line 534
    invoke-direct {p0, p0}, Lcom/chartcross/gpstest/GPSTest;->LoadViews(Landroid/content/Context;)V

    .line 535
    invoke-direct {p0}, Lcom/chartcross/gpstest/GPSTest;->LoadSettings()V

    .line 537
    const v4, 0x7f02000d

    invoke-static {p0, v4}, Lcom/chartcross/view/MxGpsView;->InitialiseWorldMap(Landroid/content/Context;I)V

    .line 539
    iput-object p0, p0, Lcom/chartcross/gpstest/GPSTest;->mContext:Landroid/content/Context;

    .line 540
    sget v4, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    if-nez v4, :cond_2

    .line 542
    sget-boolean v4, Lcom/chartcross/gpstest/GPSTest;->mHideSplash:Z

    if-eqz v4, :cond_1

    .line 544
    sput v6, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    .line 545
    invoke-virtual {p0, v7}, Lcom/chartcross/gpstest/GPSTest;->setContentView(I)V

    .line 546
    sget v4, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    invoke-virtual {p0, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    .line 555
    :goto_1
    invoke-direct {p0}, Lcom/chartcross/gpstest/GPSTest;->ResetDataFields()V

    .line 563
    :goto_2
    const-string v4, "sensor"

    invoke-virtual {p0, v4}, Lcom/chartcross/gpstest/GPSTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 564
    const-string v4, "location"

    invoke-virtual {p0, v4}, Lcom/chartcross/gpstest/GPSTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    .line 565
    new-instance v4, Lcom/chartcross/gpstest/GPSTest$MyLocationListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/chartcross/gpstest/GPSTest$MyLocationListener;-><init>(Lcom/chartcross/gpstest/GPSTest;Lcom/chartcross/gpstest/GPSTest$MyLocationListener;)V

    iput-object v4, p0, Lcom/chartcross/gpstest/GPSTest;->mLocListener:Landroid/location/LocationListener;

    .line 566
    return-void

    .line 528
    .end local v0    # "density":F
    :cond_0
    div-float v0, v3, v5

    .restart local v0    # "density":F
    goto :goto_0

    .line 550
    :cond_1
    sget v4, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    invoke-virtual {p0, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    .line 551
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 552
    .local v1, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v1, Landroid/os/Message;->what:I

    .line 553
    iget-object v4, p0, Lcom/chartcross/gpstest/GPSTest;->msgHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xfa0

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 559
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/chartcross/gpstest/GPSTest;->setContentView(I)V

    .line 560
    sget v4, Lcom/chartcross/gpstest/GPSTest;->mCurrentView:I

    invoke-virtual {p0, v4}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 612
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 614
    const-string v1, "About"

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 615
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 616
    const/4 v1, 0x2

    const-string v2, "Help"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 617
    const v1, 0x1080040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 618
    const/4 v1, 0x3

    const-string v2, "Settings"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 619
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 620
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    .line 626
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 644
    :goto_0
    return v5

    .line 629
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/chartcross/gpstest/About;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 630
    .local v0, "AboutIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/chartcross/gpstest/GPSTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 634
    .end local v0    # "AboutIntent":Landroid/content/Intent;
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/chartcross/gpstest/Help;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 635
    .local v1, "HelpIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/chartcross/gpstest/GPSTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 639
    .end local v1    # "HelpIntent":Landroid/content/Intent;
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/chartcross/gpstest/AppSettings;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 640
    .local v2, "SettingIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2, v5}, Lcom/chartcross/gpstest/GPSTest;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 589
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 590
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "field_one"

    sget-object v2, Lcom/chartcross/gpstest/GPSTest;->mField:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 591
    const-string v1, "field_two"

    sget-object v2, Lcom/chartcross/gpstest/GPSTest;->mField:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 592
    const-string v1, "field_three"

    sget-object v2, Lcom/chartcross/gpstest/GPSTest;->mField:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 593
    const-string v1, "single_field"

    sget-boolean v2, Lcom/chartcross/gpstest/GPSTest;->mSingleField:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 594
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/chartcross/gpstest/GPSTest;->mLocationValid:Z

    if-eqz v1, :cond_0

    .line 596
    const-string v1, "declination"

    sget v2, Lcom/chartcross/gpstest/RootView;->mDeclination:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 598
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 599
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 600
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest;->onGpsStatusChange:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 601
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 602
    iput-object v4, p0, Lcom/chartcross/gpstest/GPSTest;->mGpsStatus:Landroid/location/GpsStatus;

    .line 603
    iput-object v4, p0, Lcom/chartcross/gpstest/GPSTest;->mLocation:Landroid/location/Location;

    .line 604
    iput-object v4, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorValues:[F

    .line 605
    sput-boolean v5, Lcom/chartcross/gpstest/GPSTest;->mLocationValid:Z

    .line 606
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 607
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 571
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartcross/gpstest/GPSTest;->mLocationValid:Z

    .line 572
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->onGpsStatusChange:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 573
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mLocManager:Landroid/location/LocationManager;

    .line 574
    const-string v1, "gps"

    .line 575
    const-wide/16 v2, 0x0

    .line 576
    const/4 v4, 0x0

    .line 577
    iget-object v5, p0, Lcom/chartcross/gpstest/GPSTest;->mLocListener:Landroid/location/LocationListener;

    .line 573
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 579
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 580
    iget-object v2, p0, Lcom/chartcross/gpstest/GPSTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 581
    const/4 v3, 0x2

    .line 579
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 583
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 584
    return-void
.end method
