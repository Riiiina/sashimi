.class public abstract Lcom/admob/android/ads/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static m:Ljava/util/concurrent/Executor;

.field private static n:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/lang/Exception;

.field protected d:Ljava/util/Map;

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Lcom/admob/android/ads/m;

.field protected i:Ljava/net/URL;

.field protected j:[B

.field protected k:Z

.field protected l:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/ab;->m:Ljava/util/concurrent/Executor;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;ILjava/util/Map;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/admob/android/ads/ab;->c:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/admob/android/ads/ab;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/admob/android/ads/ab;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/admob/android/ads/ab;->h:Lcom/admob/android/ads/m;

    iput p4, p0, Lcom/admob/android/ads/ab;->b:I

    iput-object p5, p0, Lcom/admob/android/ads/ab;->d:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/ab;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/admob/android/ads/ab;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/admob/android/ads/ab;->f:I

    if-eqz p6, :cond_0

    iput-object p6, p0, Lcom/admob/android/ads/ab;->l:Ljava/lang/String;

    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/admob/android/ads/ab;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/admob/android/ads/ab;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/admob/android/ads/ab;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/admob/android/ads/ab;->n:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, " Build/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2 (AdMob-ANDROID-%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "20100527"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/ab;->n:Ljava/lang/String;

    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone\'s user-agent is:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/admob/android/ads/ab;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/admob/android/ads/ab;->n:Ljava/lang/String;

    return-object v0

    :cond_4
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_5
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/admob/android/ads/ab;->f:I

    return-void
.end method

.method public a(Lcom/admob/android/ads/m;)V
    .locals 0

    iput-object p1, p0, Lcom/admob/android/ads/ab;->h:Lcom/admob/android/ads/m;

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/admob/android/ads/ab;->a:Ljava/lang/String;

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract b()V
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/ab;->j:[B

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/ab;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/ab;->i:Ljava/net/URL;

    return-object v0
.end method

.method public final g()V
    .locals 1

    sget-object v0, Lcom/admob/android/ads/ab;->m:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/ab;->m:Ljava/util/concurrent/Executor;

    :cond_0
    sget-object v0, Lcom/admob/android/ads/ab;->m:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
