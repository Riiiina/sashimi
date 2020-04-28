.class Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$2;
.super Ljava/lang/Object;
.source "FeaturedAppProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$2;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$2;->val$response:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$2;->val$response:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->reportSelectedApp(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)V

    .line 330
    return-void
.end method
