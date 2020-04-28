.class public Lcom/andoop/android/common/RemoteImageView;
.super Landroid/widget/ImageView;
.source "RemoteImageView.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLocal:Ljava/lang/String;

.field private mRemote:Ljava/lang/String;

.field private mThread:Lcom/andoop/android/common/HTTPThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/andoop/android/common/RemoteImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andoop/android/common/RemoteImageView;->mThread:Lcom/andoop/android/common/HTTPThread;

    .line 95
    new-instance v0, Lcom/andoop/android/common/RemoteImageView$1;

    invoke-direct {v0, p0}, Lcom/andoop/android/common/RemoteImageView$1;-><init>(Lcom/andoop/android/common/RemoteImageView;)V

    iput-object v0, p0, Lcom/andoop/android/common/RemoteImageView;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/andoop/android/common/RemoteImageView;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/andoop/android/common/RemoteImageView;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/andoop/android/common/RemoteImageView;->setFromLocal()V

    return-void
.end method

.method private static final createIcon(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v0, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    return-object v1
.end method

.method private static final getGameIconPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p1}, Lcom/andoop/android/common/Constant;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "md5":Ljava/lang/String;
    const-string v1, "%s/Andoop/GameIcon/%s_%s.png"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private queue()V
    .locals 6

    .prologue
    const/16 v5, 0x24

    .line 79
    iget-object v1, p0, Lcom/andoop/android/common/RemoteImageView;->mThread:Lcom/andoop/android/common/HTTPThread;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/andoop/android/common/HTTPThread;

    iget-object v2, p0, Lcom/andoop/android/common/RemoteImageView;->mRemote:Ljava/lang/String;

    iget-object v3, p0, Lcom/andoop/android/common/RemoteImageView;->mLocal:Ljava/lang/String;

    iget-object v4, p0, Lcom/andoop/android/common/RemoteImageView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4}, Lcom/andoop/android/common/HTTPThread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/andoop/android/common/RemoteImageView;->mThread:Lcom/andoop/android/common/HTTPThread;

    .line 81
    invoke-static {}, Lcom/andoop/android/common/HTTPQueue;->getInstance()Lcom/andoop/android/common/HTTPQueue;

    move-result-object v0

    .line 82
    .local v0, "queue":Lcom/andoop/android/common/HTTPQueue;
    iget-object v1, p0, Lcom/andoop/android/common/RemoteImageView;->mThread:Lcom/andoop/android/common/HTTPThread;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/common/HTTPQueue;->enqueue(Lcom/andoop/android/common/HTTPThread;I)V

    .line 84
    .end local v0    # "queue":Lcom/andoop/android/common/HTTPQueue;
    :cond_0
    iget-object v1, p0, Lcom/andoop/android/common/RemoteImageView;->mContext:Landroid/content/Context;

    const v2, 0x7f020001

    invoke-static {v1, v2, v5, v5}, Lcom/andoop/android/common/RemoteImageView;->createIcon(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/andoop/android/common/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method private setFromLocal()V
    .locals 2

    .prologue
    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/andoop/android/common/RemoteImageView;->mThread:Lcom/andoop/android/common/HTTPThread;

    .line 89
    iget-object v1, p0, Lcom/andoop/android/common/RemoteImageView;->mLocal:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/andoop/android/common/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/andoop/android/common/RemoteImageView;->mThread:Lcom/andoop/android/common/HTTPThread;

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lcom/andoop/android/common/HTTPQueue;->getInstance()Lcom/andoop/android/common/HTTPQueue;

    move-result-object v0

    .line 74
    .local v0, "queue":Lcom/andoop/android/common/HTTPQueue;
    iget-object v1, p0, Lcom/andoop/android/common/RemoteImageView;->mThread:Lcom/andoop/android/common/HTTPThread;

    invoke-virtual {v0, v1}, Lcom/andoop/android/common/HTTPQueue;->dequeue(Lcom/andoop/android/common/HTTPThread;)V

    .line 76
    .end local v0    # "queue":Lcom/andoop/android/common/HTTPQueue;
    :cond_0
    return-void
.end method

.method public loadImage(Lcom/andoop/android/common/GameData;)V
    .locals 8
    .param p1, "app"    # Lcom/andoop/android/common/GameData;

    .prologue
    const v7, 0x7f020001

    const/16 v6, 0x24

    .line 38
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/andoop/android/common/RemoteImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 45
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p1, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 46
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Lcom/andoop/android/common/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/andoop/android/common/RemoteImageView;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v6, v6}, Lcom/andoop/android/common/RemoteImageView;->createIcon(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/andoop/android/common/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v4, p1, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    iget-object v5, p1, Lcom/andoop/android/common/GameData;->icon_url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/andoop/android/common/RemoteImageView;->getGameIconPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/andoop/android/common/RemoteImageView;->mLocal:Ljava/lang/String;

    .line 58
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/andoop/android/common/RemoteImageView;->mLocal:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "local":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/andoop/android/common/RemoteImageView;->setFromLocal()V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v4, p1, Lcom/andoop/android/common/GameData;->icon_url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    iget-object v4, p0, Lcom/andoop/android/common/RemoteImageView;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v6, v6}, Lcom/andoop/android/common/RemoteImageView;->createIcon(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/andoop/android/common/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 64
    :cond_3
    iget-object v4, p1, Lcom/andoop/android/common/GameData;->icon_url:Ljava/lang/String;

    iput-object v4, p0, Lcom/andoop/android/common/RemoteImageView;->mRemote:Ljava/lang/String;

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 66
    invoke-direct {p0}, Lcom/andoop/android/common/RemoteImageView;->queue()V

    goto :goto_0

    .line 47
    .end local v2    # "local":Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
