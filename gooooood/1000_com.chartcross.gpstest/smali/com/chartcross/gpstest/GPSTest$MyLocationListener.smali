.class Lcom/chartcross/gpstest/GPSTest$MyLocationListener;
.super Ljava/lang/Object;
.source "GPSTest.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartcross/gpstest/GPSTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartcross/gpstest/GPSTest;


# direct methods
.method private constructor <init>(Lcom/chartcross/gpstest/GPSTest;)V
    .locals 0

    .prologue
    .line 4014
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest$MyLocationListener;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartcross/gpstest/GPSTest;Lcom/chartcross/gpstest/GPSTest$MyLocationListener;)V
    .locals 0

    .prologue
    .line 4014
    invoke-direct {p0, p1}, Lcom/chartcross/gpstest/GPSTest$MyLocationListener;-><init>(Lcom/chartcross/gpstest/GPSTest;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 4018
    if-eqz p1, :cond_0

    .line 4020
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MyLocationListener;->this$0:Lcom/chartcross/gpstest/GPSTest;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v1, v2}, Lcom/chartcross/gpstest/GPSTest;->access$29(Lcom/chartcross/gpstest/GPSTest;Landroid/location/Location;)V

    .line 4021
    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 4022
    .local v0, "GeoField":Landroid/hardware/GeomagneticField;
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v1

    sput v1, Lcom/chartcross/gpstest/RootView;->mDeclination:F

    .line 4023
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MyLocationListener;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$2(Lcom/chartcross/gpstest/GPSTest;)V

    .line 4024
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MyLocationListener;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$30(Lcom/chartcross/gpstest/GPSTest;)V

    .line 4025
    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$MyLocationListener;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$3(Lcom/chartcross/gpstest/GPSTest;)V

    .line 4026
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/chartcross/gpstest/GPSTest;->access$31(J)V

    .line 4027
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$6(Z)V

    .line 4029
    .end local v0    # "GeoField":Landroid/hardware/GeomagneticField;
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 4033
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 4037
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4041
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 4043
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$MyLocationListener;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartcross/gpstest/GPSTest;->access$29(Lcom/chartcross/gpstest/GPSTest;Landroid/location/Location;)V

    .line 4045
    :cond_0
    return-void
.end method
