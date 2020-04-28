.class Lcom/chartcross/gpstest/GPSTest$1;
.super Ljava/lang/Object;
.source "GPSTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest$1;->this$0:Lcom/chartcross/gpstest/GPSTest;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$1;->this$0:Lcom/chartcross/gpstest/GPSTest;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Lcom/chartcross/gpstest/GPSTest;->access$0(Lcom/chartcross/gpstest/GPSTest;[F)V

    .line 120
    invoke-static {}, Lcom/chartcross/gpstest/GPSTest;->access$1()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$1;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$2(Lcom/chartcross/gpstest/GPSTest;)V

    .line 125
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$1;->this$0:Lcom/chartcross/gpstest/GPSTest;

    invoke-static {v0}, Lcom/chartcross/gpstest/GPSTest;->access$3(Lcom/chartcross/gpstest/GPSTest;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
