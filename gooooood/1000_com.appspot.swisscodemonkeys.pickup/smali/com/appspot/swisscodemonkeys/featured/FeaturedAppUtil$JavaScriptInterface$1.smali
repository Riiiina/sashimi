.class Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;
.super Ljava/lang/Object;
.source "FeaturedAppUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->reportSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;

.field private final synthetic val$allApps:Ljava/lang/String;

.field private final synthetic val$selectParams:Ljava/lang/String;

.field private final synthetic val$selectedApps:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;->this$1:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;->val$allApps:Ljava/lang/String;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;->val$selectedApps:Ljava/lang/String;

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;->val$selectParams:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 132
    new-instance v5, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    invoke-direct {v5}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;-><init>()V

    .line 133
    .local v5, "response":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;->val$allApps:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "apps":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v6, :cond_0

    .line 140
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;->val$selectedApps:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 141
    array-length v6, v0

    new-array v6, v6, [Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    iput-object v6, v5, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .line 142
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v0

    if-lt v3, v6, :cond_1

    .line 148
    :try_start_0
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;->this$1:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;

    invoke-static {v6}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->access$0(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcmn/AppProperties;->get(Landroid/content/Context;)Lcmn/AppProperties;

    move-result-object v6

    invoke-static {v6}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->createUrlParameters(Lcmn/AppProperties;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->extraUrlParameters:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_2
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;->val$selectParams:Ljava/lang/String;

    iput-object v6, v5, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selectParams:Ljava/lang/String;

    .line 153
    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->reportSelectedApp(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)V

    .line 154
    return-void

    .line 134
    .end local v3    # "i":I
    :cond_0
    aget-object v4, v0, v7

    .line 135
    .local v4, "pkg":Ljava/lang/String;
    new-instance v2, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    invoke-direct {v2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;-><init>()V

    .line 136
    .local v2, "featuredApp":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    iget-object v8, v5, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->apps:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v2, v4}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->setPackageName(Ljava/lang/String;)V

    .line 138
    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface$1;->this$1:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;

    invoke-static {v8}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;->access$0(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil$JavaScriptInterface;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v2, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->installed:Z

    .line 134
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "featuredApp":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    .end local v4    # "pkg":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_1
    new-instance v2, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    invoke-direct {v2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;-><init>()V

    .line 144
    .restart local v2    # "featuredApp":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    iget-object v6, v5, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    aput-object v2, v6, v3

    .line 145
    aget-object v6, v0, v3

    invoke-virtual {v2, v6}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->setPackageName(Ljava/lang/String;)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "featuredApp":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 150
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, ""

    iput-object v6, v5, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->extraUrlParameters:Ljava/lang/String;

    goto :goto_2
.end method
