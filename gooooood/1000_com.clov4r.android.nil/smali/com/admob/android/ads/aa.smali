.class final Lcom/admob/android/ads/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/admob/android/ads/m;


# static fields
.field private static a:Lcom/admob/android/ads/aa;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/Thread;

.field private static d:Ljava/lang/String;


# instance fields
.field private e:Ljava/util/Properties;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/aa;->a:Lcom/admob/android/ads/aa;

    sput-object v0, Lcom/admob/android/ads/aa;->b:Landroid/content/Context;

    sput-object v0, Lcom/admob/android/ads/aa;->c:Ljava/lang/Thread;

    sput-object v0, Lcom/admob/android/ads/aa;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/admob/android/ads/aa;->f:Landroid/content/Context;

    iput-object v4, p0, Lcom/admob/android/ads/aa;->e:Ljava/util/Properties;

    invoke-static {}, Lcom/admob/android/ads/aa;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/aa;->d:Ljava/lang/String;

    sget-object v0, Lcom/admob/android/ads/aa;->a:Lcom/admob/android/ads/aa;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/admob/android/ads/aa;->a:Lcom/admob/android/ads/aa;

    iput-object v4, v0, Lcom/admob/android/ads/aa;->e:Ljava/util/Properties;

    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/aa;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/admob/android/ads/aa;->c:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://mm.admob.com/static/android/i18n/20100527"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/admob/android/ads/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/admob/android/ads/aa;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/admob/android/ads/aj;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v4, v2, p0, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;I)Lcom/admob/android/ads/ab;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/admob/android/ads/aa;->c:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "admob_cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "20100527"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/admob/android/ads/aa;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/aa;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "en"

    sput-object v0, Lcom/admob/android/ads/aa;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/admob/android/ads/aa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/admob/android/ads/aa;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/aa;->b:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/admob/android/ads/aa;->a:Lcom/admob/android/ads/aa;

    if-nez v0, :cond_1

    new-instance v0, Lcom/admob/android/ads/aa;

    sget-object v1, Lcom/admob/android/ads/aa;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/admob/android/ads/aa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/admob/android/ads/aa;->a:Lcom/admob/android/ads/aa;

    :cond_1
    return-void
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lcom/admob/android/ads/aa;->e:Ljava/util/Properties;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Lcom/admob/android/ads/aa;->f:Landroid/content/Context;

    sget-object v2, Lcom/admob/android/ads/aa;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/admob/android/ads/aa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/admob/android/ads/aa;->e:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/admob/android/ads/aa;->e:Ljava/util/Properties;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/aa;->e:Ljava/util/Properties;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/admob/android/ads/ab;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/admob/android/ads/ab;->d()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/admob/android/ads/aa;->f:Landroid/content/Context;

    sget-object v2, Lcom/admob/android/ads/aa;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/admob/android/ads/aa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v1, "Could not store localized strings to cache file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lcom/admob/android/ads/ab;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v1, "Could not get localized strings from the AdMob servers."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
