.class Lcom/chartcross/gpstest/GPSTest$3;
.super Ljava/lang/Object;
.source "GPSTest.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartcross/gpstest/GPSTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartcross/gpstest/GPSTest;


# direct methods
.method constructor <init>(Lcom/chartcross/gpstest/GPSTest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest$3;->this$0:Lcom/chartcross/gpstest/GPSTest;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$3;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$4(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$5()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$6(Z)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$3;->this$0:Lcom/chartcross/gpstest/GPSTest;

    iget-object v1, p0, Lcom/chartcross/gpstest/GPSTest$3;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v1}, Lcom/chartcross/gpstest/GPSTest;->access$7(Lcom/chartcross/gpstest/GPSTest;)Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartcross/gpstest/GPSTest;->access$8(Lcom/chartcross/gpstest/GPSTest;Landroid/location/GpsStatus;)V

    .line 170
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$3;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$3(Lcom/chartcross/gpstest/GPSTest;)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
