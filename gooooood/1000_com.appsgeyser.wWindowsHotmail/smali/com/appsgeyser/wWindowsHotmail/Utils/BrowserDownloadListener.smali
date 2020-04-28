.class public Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserDownloadListener;
.super Ljava/lang/Object;
.source "BrowserDownloadListener.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private _webController:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;)V
    .locals 0
    .param p1, "webController"    # Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/BrowserDownloadListener;->_webController:Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    .line 21
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    const-string v6, "android.intent.action.VIEW"

    .line 27
    :try_start_0
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v3

    .line 28
    .local v3, "mainActivity":Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 31
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 32
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_0

    .line 34
    invoke-virtual {v3, v1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "mainActivity":Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-void

    .line 37
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "mainActivity":Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "intview":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v3, v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intview":Landroid/content/Intent;
    .end local v3    # "mainActivity":Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 44
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "ActivityNotFoundException"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDownloadStart :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
