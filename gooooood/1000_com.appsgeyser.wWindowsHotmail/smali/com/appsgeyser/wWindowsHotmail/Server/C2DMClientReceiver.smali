.class public Lcom/appsgeyser/wWindowsHotmail/Server/C2DMClientReceiver;
.super Lcom/google/android/c2dm/C2DMBaseReceiver;
.source "C2DMClientReceiver.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "softotest@gmail.com"

    invoke-direct {p0, v0, p1}, Lcom/google/android/c2dm/C2DMBaseReceiver;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 52
    const-string v5, "url"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "url":Ljava/lang/String;
    const-string v5, "message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "message":Ljava/lang/String;
    const-string v5, "title"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "title":Ljava/lang/String;
    invoke-static {p1, v3, v4}, Lcom/appsgeyser/wWindowsHotmail/Utils/AppNotificationManager;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-static {p1, v2, v3, v1}, Lcom/appsgeyser/wWindowsHotmail/Utils/AppNotificationManager;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 61
    .end local v1    # "launchIntent":Landroid/content/Intent;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registration"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->getInstance(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendRegisteredId(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registration"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->getInstance(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendUnregisteredId(Ljava/lang/String;)V

    .line 39
    return-void
.end method
