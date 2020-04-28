.class public Lcom/clov4r/android/nil/dj;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/clov4r/android/nil/dj;->b:I

    iput v0, p0, Lcom/clov4r/android/nil/dj;->c:I

    new-instance v0, Lcom/clov4r/android/nil/ez;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ez;-><init>(Lcom/clov4r/android/nil/dj;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/dj;->d:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/clov4r/android/nil/dj;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/dj;I)I
    .locals 0

    iput p1, p0, Lcom/clov4r/android/nil/dj;->b:I

    return p1
.end method

.method static synthetic b(Lcom/clov4r/android/nil/dj;I)I
    .locals 0

    iput p1, p0, Lcom/clov4r/android/nil/dj;->c:I

    return p1
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/clov4r/android/nil/dj;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/clov4r/android/nil/dj;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/dj;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/clov4r/android/nil/dj;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/dj;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/dj;->c:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/clov4r/android/nil/dj;->b:I

    if-lez v1, :cond_0

    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
