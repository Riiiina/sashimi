.class Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$1;
.super Ljava/lang/Object;
.source "FeaturedAppProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->createClickListener(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

.field private final synthetic val$app:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$1;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$1;->val$app:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$1;->val$app:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->clickUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$1;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->access$0(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$1;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$1;->val$app:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    invoke-static {v1, v2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->access$1(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V

    .line 204
    return-void
.end method
