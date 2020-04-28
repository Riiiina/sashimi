.class Lcom/clov4r/android/nil/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/SensorActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/SensorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ad;->a:Lcom/clov4r/android/nil/SensorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/ad;->a:Lcom/clov4r/android/nil/SensorActivity;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/SensorActivity;->a(Lcom/clov4r/android/nil/SensorActivity;F)F

    iget-object v0, p0, Lcom/clov4r/android/nil/ad;->a:Lcom/clov4r/android/nil/SensorActivity;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/SensorActivity;->b(Lcom/clov4r/android/nil/SensorActivity;F)F

    iget-object v0, p0, Lcom/clov4r/android/nil/ad;->a:Lcom/clov4r/android/nil/SensorActivity;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/SensorActivity;->c(Lcom/clov4r/android/nil/SensorActivity;F)F

    iget-object v0, p0, Lcom/clov4r/android/nil/ad;->a:Lcom/clov4r/android/nil/SensorActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/ad;->a:Lcom/clov4r/android/nil/SensorActivity;

    invoke-static {v2}, Lcom/clov4r/android/nil/SensorActivity;->a(Lcom/clov4r/android/nil/SensorActivity;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/ad;->a:Lcom/clov4r/android/nil/SensorActivity;

    invoke-static {v2}, Lcom/clov4r/android/nil/SensorActivity;->b(Lcom/clov4r/android/nil/SensorActivity;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/ad;->a:Lcom/clov4r/android/nil/SensorActivity;

    invoke-static {v2}, Lcom/clov4r/android/nil/SensorActivity;->c(Lcom/clov4r/android/nil/SensorActivity;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/SensorActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ad;->a:Lcom/clov4r/android/nil/SensorActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/SensorActivity;->a(Lcom/clov4r/android/nil/SensorActivity;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_0
    return-void
.end method
