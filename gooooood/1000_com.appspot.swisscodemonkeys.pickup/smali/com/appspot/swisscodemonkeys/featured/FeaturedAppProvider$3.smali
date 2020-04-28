.class Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;
.super Ljava/lang/Object;
.source "FeaturedAppProvider.java"

# interfaces
.implements Lvw/SCMView$ViewResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

.field private final synthetic val$response:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->val$response:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 2

    .prologue
    .line 335
    const-string v0, "thumbs"

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->val$response:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->val$response:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->access$2(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 337
    :cond_0
    const-string v0, "web"

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->val$response:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->access$0(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->val$response:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->createWebView(Landroid/content/Context;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;->val$response:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->access$3(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
