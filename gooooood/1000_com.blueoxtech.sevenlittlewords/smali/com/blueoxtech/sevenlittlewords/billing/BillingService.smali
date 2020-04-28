.class public Lcom/blueoxtech/sevenlittlewords/billing/BillingService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lcom/android/vending/billing/IMarketBillingService;

.field private static b:Ljava/util/LinkedList;

.field private static c:Ljava/util/HashMap;


# instance fields
.field private d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    invoke-static {p2, p3}, Lcom/blueoxtech/sevenlittlewords/billing/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-object v7, v0

    iget-object v1, v7, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blueoxtech/sevenlittlewords/billing/b;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/billing/b;->a:Ljava/lang/String;

    const-string v4, "restore"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->j:[Ljava/lang/String;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    iget-object v8, v7, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    const/4 v9, -0x1

    invoke-interface {v8, v6, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v7, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blueoxtech/sevenlittlewords/billing/i;

    iget-object v2, v1, Lcom/blueoxtech/sevenlittlewords/billing/i;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/blueoxtech/sevenlittlewords/billing/i;->b:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, v7, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    iget-object v3, v1, Lcom/blueoxtech/sevenlittlewords/billing/i;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/blueoxtech/sevenlittlewords/billing/i;->a:Lcom/blueoxtech/sevenlittlewords/billing/o;

    invoke-virtual {v4}, Lcom/blueoxtech/sevenlittlewords/billing/o;->ordinal()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v1, Lcom/blueoxtech/sevenlittlewords/billing/i;->a:Lcom/blueoxtech/sevenlittlewords/billing/o;

    iget-object v3, v1, Lcom/blueoxtech/sevenlittlewords/billing/i;->c:Ljava/lang/String;

    iget-wide v4, v1, Lcom/blueoxtech/sevenlittlewords/billing/i;->d:J

    iget-object v6, v1, Lcom/blueoxtech/sevenlittlewords/billing/i;->e:Ljava/lang/String;

    new-instance v10, Ljava/lang/Thread;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/billing/p;

    invoke-direct/range {v1 .. v6}, Lcom/blueoxtech/sevenlittlewords/billing/p;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/o;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v10, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_6
    iget-object v1, v7, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/blueoxtech/sevenlittlewords/billing/n;

    invoke-direct {v2}, Lcom/blueoxtech/sevenlittlewords/billing/n;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a(I[Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/billing/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/blueoxtech/sevenlittlewords/billing/e;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/e;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic f()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method private h()Z
    .locals 4

    const/4 v2, 0x1

    :try_start_0
    const-string v0, "BillingService"

    const-string v1, "binding to Market billing service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "BillingService"

    const-string v1, "Could not bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/billing/g;

    invoke-direct {v0, p0}, Lcom/blueoxtech/sevenlittlewords/billing/g;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/g;->b()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/billing/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/blueoxtech/sevenlittlewords/billing/c;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/c;->b()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/billing/m;

    invoke-direct {v0, p0}, Lcom/blueoxtech/sevenlittlewords/billing/m;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/m;->b()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "BillingService"

    const-string v1, "Billing service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    const/4 v0, -0x1

    move v1, v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/billing/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/b;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/b;->a()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->h()Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ltz v1, :cond_2

    const-string v0, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopping service, startId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->stopSelf(I)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCommand() action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.blueoxtech.sevenlittlewords.billing.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a(I[Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.blueoxtech.sevenlittlewords.billing.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/billing/j;

    invoke-direct {v0, p0, p2, v1}, Lcom/blueoxtech/sevenlittlewords/billing/j;-><init>(Lcom/blueoxtech/sevenlittlewords/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/j;->b()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "response_code"

    sget-object v3, Lcom/blueoxtech/sevenlittlewords/billing/d;->b:Lcom/blueoxtech/sevenlittlewords/billing/d;

    invoke-virtual {v3}, Lcom/blueoxtech/sevenlittlewords/billing/d;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/blueoxtech/sevenlittlewords/billing/d;->a(I)Lcom/blueoxtech/sevenlittlewords/billing/d;

    move-result-object v2

    sget-object v3, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/blueoxtech/sevenlittlewords/billing/b;

    if-eqz p0, :cond_4

    const-string v3, "BillingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/blueoxtech/sevenlittlewords/billing/b;->a(Lcom/blueoxtech/sevenlittlewords/billing/d;)V

    :cond_4
    sget-object v2, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
