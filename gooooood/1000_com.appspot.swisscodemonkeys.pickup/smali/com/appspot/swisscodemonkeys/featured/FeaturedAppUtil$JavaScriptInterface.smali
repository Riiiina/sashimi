.class Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;
.super Ljava/lang/Object;
.source "FeaturedAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field final app:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->app:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .line 108
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->context:Landroid/content/Context;

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public click()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->app:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->app:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->trackClick(Landroid/content/Context;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V

    .line 116
    :cond_0
    return-void
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reportSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "allApps"    # Ljava/lang/String;
    .param p2, "selectedApps"    # Ljava/lang/String;
    .param p3, "selectParams"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;-><init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    return-void
.end method

.method public trackClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installParams"    # Ljava/lang/String;
    .param p3, "clickParams"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->trackClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method
