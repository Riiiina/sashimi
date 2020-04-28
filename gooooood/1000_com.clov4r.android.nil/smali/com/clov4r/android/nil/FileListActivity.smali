.class public Lcom/clov4r/android/nil/FileListActivity;
.super Landroid/app/Activity;


# static fields
.field static a:Ljava/lang/String;

.field public static i:Landroid/graphics/drawable/Drawable;

.field public static j:Z

.field static k:Ljava/util/HashMap;


# instance fields
.field b:Landroid/widget/ListView;

.field c:Lcom/clov4r/android/nil/m;

.field d:[Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:Landroid/os/Handler;

.field h:Z

.field l:Landroid/content/SharedPreferences;

.field private m:Ljava/io/File;

.field private n:Lcom/admob/android/ads/AdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/sdcard"

    sput-object v0, Lcom/clov4r/android/nil/FileListActivity;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/clov4r/android/nil/FileListActivity;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/clov4r/android/nil/FileListActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "avi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rmvb"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dat"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wmv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mov"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mkv"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flv"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3gpp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mpg"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mlv"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "m2v"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "vob"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "tp"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ts"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "asf"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ra"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ram"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "hlv"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ogg"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->d:[Ljava/lang/String;

    new-instance v0, Lcom/clov4r/android/nil/ag;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ag;-><init>(Lcom/clov4r/android/nil/FileListActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/FileListActivity;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/clov4r/android/nil/FileListActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    return-object p1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x400

    const/4 v0, 0x0

    cmp-long v1, p0, v4

    if-ltz v1, :cond_3

    const-string v0, "K"

    div-long v1, p0, v4

    cmp-long v3, v1, v4

    if-ltz v3, :cond_0

    const-string v0, "M"

    div-long/2addr v1, v4

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    :goto_1
    if-lez v1, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x3

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-wide v1, p0

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/m;->a()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/clov4r/android/nil/FileListActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/clov4r/android/nil/ab;

    invoke-direct {v0}, Lcom/clov4r/android/nil/ab;-><init>()V

    const-string v1, ".."

    iput-object v1, v0, Lcom/clov4r/android/nil/ab;->a:Ljava/lang/String;

    iput v8, v0, Lcom/clov4r/android/nil/ab;->b:I

    iget-object v1, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/m;->a(Lcom/clov4r/android/nil/ab;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/clov4r/android/nil/dn;->a(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    sget-boolean v4, Lcom/clov4r/android/nil/Setting;->k:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/clov4r/android/nil/ab;

    invoke-direct {v4}, Lcom/clov4r/android/nil/ab;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/clov4r/android/nil/ab;->a:Ljava/lang/String;

    iput v8, v4, Lcom/clov4r/android/nil/ab;->b:I

    iget-object v3, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    invoke-virtual {v3, v4}, Lcom/clov4r/android/nil/m;->a(Lcom/clov4r/android/nil/ab;)V

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/clov4r/android/nil/ab;

    invoke-direct {v4}, Lcom/clov4r/android/nil/ab;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/clov4r/android/nil/ab;->a:Ljava/lang/String;

    iput v7, v4, Lcom/clov4r/android/nil/ab;->b:I

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/clov4r/android/nil/ab;->c:J

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/clov4r/android/nil/ab;->d:Ljava/lang/String;

    sget-boolean v3, Lcom/clov4r/android/nil/Setting;->f:Z

    if-eqz v3, :cond_4

    iget-object v3, v4, Lcom/clov4r/android/nil/ab;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v4, Lcom/clov4r/android/nil/ab;->a:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/clov4r/android/nil/FileListActivity;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    invoke-virtual {v3, v4}, Lcom/clov4r/android/nil/m;->a(Lcom/clov4r/android/nil/ab;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    invoke-virtual {v3, v4}, Lcom/clov4r/android/nil/m;->a(Lcom/clov4r/android/nil/ab;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->postInvalidate()V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v7, v7}, Landroid/widget/ListView;->scrollBy(II)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/clov4r/android/nil/FileListActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/db;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    iget-wide v0, v0, Lcom/clov4r/android/nil/db;->b:J

    :goto_1
    if-eqz p3, :cond_1

    :cond_1
    if-eqz p3, :cond_3

    invoke-static {p1}, Lcom/clov4r/android/nil/SystemPlayer;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, v0, v1, p1}, Lcom/clov4r/android/nil/SystemPlayer;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {p1}, Lcom/clov4r/android/nil/SystemPlayer;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0, v0, v1, p1}, Lcom/clov4r/android/nil/SystemPlayer;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, ""

    invoke-static {p0, v0, v1, p1, v2}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-wide v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/clov4r/android/nil/FileListActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/FileListActivity;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "player.ser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Lcom/clov4r/android/nil/FileListActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_4
    const-string v3, "tag"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "tag"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "tag"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catch_5
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1
.end method

.method static synthetic b(Lcom/clov4r/android/nil/FileListActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/FileListActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/clov4r/android/nil/FileListActivity;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/clov4r/android/nil/FileListActivity;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/FileListActivity;->d:[Ljava/lang/String;

    array-length v2, v1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, ""

    iput-boolean v4, p0, Lcom/clov4r/android/nil/FileListActivity;->h:Z

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/clov4r/android/nil/FileListActivity;->h:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-boolean v0, p0, Lcom/clov4r/android/nil/FileListActivity;->h:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/clov4r/android/nil/FileListActivity;->e()V

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "r.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "r.png"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/clov4r/android/nil/FileListActivity;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-static {v0}, Lcom/clov4r/android/nil/dn;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/FileListActivity;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_LAST_PLAYED_PATH"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.moboplayer.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/FileListActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->finish()V

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/m;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->l:Landroid/content/SharedPreferences;

    const-string v1, "KEY_LAST_PLAYED_PATH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_LAST_PATH"

    iget-object v2, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->l:Landroid/content/SharedPreferences;

    const-string v1, "KEY_LAST_PATH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/app/Activity;)Lcom/admob/android/ads/AdView;
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->n:Lcom/admob/android/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->n:Lcom/admob/android/ads/AdView;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/admob/android/ads/AdView;

    invoke-direct {v0, p1}, Lcom/admob/android/ads/AdView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->n:Lcom/admob/android/ads/AdView;

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->n:Lcom/admob/android/ads/AdView;

    const-string v1, "moive music video"

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->n:Lcom/admob/android/ads/AdView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->a(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->n:Lcom/admob/android/ads/AdView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->n:Lcom/admob/android/ads/AdView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->d(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->n:Lcom/admob/android/ads/AdView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->c(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->n:Lcom/admob/android/ads/AdView;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "12345"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/clov4r/android/nil/af;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/af;-><init>(Lcom/clov4r/android/nil/FileListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected a(Lcom/clov4r/android/nil/ab;)V
    .locals 3

    iget-object v0, p1, Lcom/clov4r/android/nil/ab;->d:Ljava/lang/String;

    const/4 v1, 0x1

    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->h:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/clov4r/android/nil/FileListActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xb80

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->finish()V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/clov4r/android/nil/MainPlayer;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/clov4r/android/nil/FileListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/clov4r/android/nil/MainPlayer;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v5, p0, Lcom/clov4r/android/nil/FileListActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/clov4r/android/nil/dy;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v5

    :goto_0
    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->f:Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09003c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f03000a

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0b0071

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09003e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/clov4r/android/nil/ac;

    invoke-direct {v4, p0, v1}, Lcom/clov4r/android/nil/ac;-><init>(Lcom/clov4r/android/nil/FileListActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090039

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/clov4r/android/nil/aj;

    invoke-direct {v4, p0, v1, v2}, Lcom/clov4r/android/nil/aj;-><init>(Lcom/clov4r/android/nil/FileListActivity;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/clov4r/android/nil/ai;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/ai;-><init>(Lcom/clov4r/android/nil/FileListActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/clov4r/android/nil/FileListActivity;->j:Z

    goto/16 :goto_0
.end method

.method c()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "player.ser"

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/FileListActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    sput-object p0, Lcom/clov4r/android/nil/FileListActivity;->k:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/clov4r/android/nil/FileListActivity;->k:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/clov4r/android/nil/FileListActivity;->k:Ljava/util/HashMap;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_4
    const-string v3, "tag"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "tag"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "tag"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catch_5
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    const-string v0, "EXT_FILE_PATH"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXT_START_TIME"

    invoke-virtual {p3, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "EXT_TOTAL_TIME"

    invoke-virtual {p3, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    if-eqz v0, :cond_2

    cmp-long v5, v1, v7

    if-nez v5, :cond_0

    cmp-long v5, v1, v7

    if-eqz v5, :cond_2

    :cond_0
    const-wide/16 v5, 0x1388

    add-long/2addr v5, v1

    cmp-long v5, v5, v3

    if-lez v5, :cond_1

    move-wide v1, v7

    :cond_1
    new-instance v5, Lcom/clov4r/android/nil/db;

    invoke-direct {v5}, Lcom/clov4r/android/nil/db;-><init>()V

    iput-wide v1, v5, Lcom/clov4r/android/nil/db;->b:J

    iput-wide v3, v5, Lcom/clov4r/android/nil/db;->a:J

    sget-object v6, Lcom/clov4r/android/nil/FileListActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!!!get player info!!!! current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",durationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/FileListActivity;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/clov4r/android/nil/FileListActivity;->f()V

    :cond_3
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/m;->a(I)Lcom/clov4r/android/nil/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/clov4r/android/nil/ab;->d:Ljava/lang/String;

    const/4 v1, 0x0

    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->h:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/clov4r/android/nil/FileListActivity;->a(Ljava/lang/String;ZZ)V

    :cond_0
    :goto_0
    move v0, v3

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_2

    const-string v0, "I AM NOT A FILE MANAGER!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v1, 0x7

    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/m;->a(I)Lcom/clov4r/android/nil/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/clov4r/android/nil/ab;->d:Ljava/lang/String;

    const/4 v1, 0x1

    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->h:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lcom/clov4r/android/nil/FileListActivity;->a(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "MoboPlayer"

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/FileListActivity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/FileListActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->c()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/FileListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->l:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/clov4r/android/nil/m;

    invoke-direct {v0, p0, p0}, Lcom/clov4r/android/nil/m;-><init>(Lcom/clov4r/android/nil/FileListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/FileListActivity;->registerForContextMenu(Landroid/view/View;)V

    new-instance v0, Lcom/clov4r/android/nil/ah;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ah;-><init>(Lcom/clov4r/android/nil/FileListActivity;)V

    invoke-direct {p0}, Lcom/clov4r/android/nil/FileListActivity;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    :cond_0
    iget-object v1, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/clov4r/android/nil/FileListActivity;->d()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->b()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->b:Landroid/widget/ListView;

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->c:Lcom/clov4r/android/nil/m;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/m;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "tag"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/clov4r/android/nil/FileListActivity;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/clov4r/android/nil/FileListActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/FileListActivity;->a(Ljava/io/File;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/clov4r/android/nil/FileListActivity;->g()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/clov4r/android/nil/Setting;->h:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/clov4r/android/nil/FileListActivity;->a(Ljava/lang/String;ZZ)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->finish()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->b()V

    goto :goto_1

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/Setting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/FileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-direct {p0}, Lcom/clov4r/android/nil/FileListActivity;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/FileListActivity;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->e:Ljava/lang/String;

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->e:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->m:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/FileListActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/clov4r/android/nil/dx;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/FileListActivity;->g:Landroid/os/Handler;

    sput-object v0, Lcom/clov4r/android/nil/dx;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-direct {p0}, Lcom/clov4r/android/nil/FileListActivity;->h()V

    return-void
.end method
