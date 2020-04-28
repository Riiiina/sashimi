.class public Lcom/clov4r/android/nil/SensorActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/hardware/SensorEventListener;

.field private b:Landroid/hardware/SensorManager;

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/SensorActivity;)F
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/SensorActivity;->c:F

    return v0
.end method

.method static synthetic a(Lcom/clov4r/android/nil/SensorActivity;F)F
    .locals 0

    iput p1, p0, Lcom/clov4r/android/nil/SensorActivity;->c:F

    return p1
.end method

.method static synthetic b(Lcom/clov4r/android/nil/SensorActivity;)F
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/SensorActivity;->d:F

    return v0
.end method

.method static synthetic b(Lcom/clov4r/android/nil/SensorActivity;F)F
    .locals 0

    iput p1, p0, Lcom/clov4r/android/nil/SensorActivity;->d:F

    return p1
.end method

.method static synthetic c(Lcom/clov4r/android/nil/SensorActivity;)F
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/SensorActivity;->e:F

    return v0
.end method

.method static synthetic c(Lcom/clov4r/android/nil/SensorActivity;F)F
    .locals 0

    iput p1, p0, Lcom/clov4r/android/nil/SensorActivity;->e:F

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/SensorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/clov4r/android/nil/SensorActivity;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/clov4r/android/nil/SensorActivity;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    new-instance v1, Lcom/clov4r/android/nil/ad;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/ad;-><init>(Lcom/clov4r/android/nil/SensorActivity;)V

    iput-object v1, p0, Lcom/clov4r/android/nil/SensorActivity;->a:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/SensorActivity;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/clov4r/android/nil/SensorActivity;->a:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/SensorActivity;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/clov4r/android/nil/SensorActivity;->a:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
