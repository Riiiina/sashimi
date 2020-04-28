.class public Lcom/tat/livewallpaper/dandelion/Dandelion;
.super Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;
.source "Dandelion.java"


# static fields
.field private static mRefCount:I


# instance fields
.field isRunning:Z

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field final runnable:Ljava/lang/Runnable;

.field final workerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mRefCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->isRunning:Z

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->workerHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/tat/livewallpaper/dandelion/Dandelion$1;

    invoke-direct {v0, p0}, Lcom/tat/livewallpaper/dandelion/Dandelion$1;-><init>(Lcom/tat/livewallpaper/dandelion/Dandelion;)V

    iput-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->runnable:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/tat/livewallpaper/dandelion/Dandelion$2;

    invoke-direct {v0, p0}, Lcom/tat/livewallpaper/dandelion/Dandelion$2;-><init>(Lcom/tat/livewallpaper/dandelion/Dandelion;)V

    iput-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public calLogTest()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const-string v12, "attr1.a"

    .line 42
    invoke-virtual {p0}, Lcom/tat/livewallpaper/dandelion/Dandelion;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 54
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 56
    .local v10, "typeColumn":I
    const-string v0, "new"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 62
    .local v9, "isNewColumn":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 68
    .local v7, "callType":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 70
    .local v8, "isNew":I
    const/4 v0, 0x3

    if-ne v7, v0, :cond_1

    .line 71
    if-ne v8, v11, :cond_1

    .line 74
    const-string v0, "attr1.a"

    invoke-virtual {p0, v12, v11}, Lcom/tat/livewallpaper/dandelion/Dandelion;->setProperty(Ljava/lang/String;I)V

    .line 89
    .end local v7    # "callType":I
    .end local v8    # "isNew":I
    .end local v9    # "isNewColumn":I
    .end local v10    # "typeColumn":I
    :goto_0
    return-void

    .line 78
    .restart local v7    # "callType":I
    .restart local v8    # "isNew":I
    .restart local v9    # "isNewColumn":I
    .restart local v10    # "typeColumn":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    .end local v7    # "callType":I
    .end local v8    # "isNew":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    const/4 v6, 0x0

    .line 82
    goto :goto_0

    .line 85
    .end local v9    # "isNewColumn":I
    .end local v10    # "typeColumn":I
    :cond_3
    const-string v0, "attr1.a"

    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/tat/livewallpaper/dandelion/Dandelion;->setProperty(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public init(Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;)V
    .locals 1
    .param p1, "config"    # Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;

    .prologue
    .line 128
    sget v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->GL2:I

    iput v0, p1, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->renderType:I

    .line 129
    const/16 v0, 0x19

    iput v0, p1, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->minDelay:I

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tat/cascadeswallpaper/android/CascadesWallpaperService$Config;->logFramerate:Z

    .line 140
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 144
    sget v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mRefCount:I

    .line 147
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->workerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    sget v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mRefCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tat/livewallpaper/dandelion/Dandelion;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 158
    sget v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mRefCount:I

    .line 161
    sget v0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mRefCount:I

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tat/livewallpaper/dandelion/Dandelion;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->workerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tat/livewallpaper/dandelion/Dandelion;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public test()V
    .locals 5

    .prologue
    const-string v4, "attr0.a"

    .line 93
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/tat/livewallpaper/dandelion/Dandelion;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 94
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    const-string v2, "attr0.a"

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/tat/livewallpaper/dandelion/Dandelion;->setProperty(Ljava/lang/String;I)V

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 99
    .local v0, "wInfo":Landroid/net/wifi/WifiInfo;
    const-string v2, "attr0.a"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/tat/livewallpaper/dandelion/Dandelion;->setProperty(Ljava/lang/String;I)V

    .line 103
    const/4 v1, 0x0

    .line 105
    goto :goto_0
.end method
