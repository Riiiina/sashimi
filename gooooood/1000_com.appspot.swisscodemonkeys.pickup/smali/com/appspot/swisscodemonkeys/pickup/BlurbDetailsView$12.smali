.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->saveFavorites(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

.field private final synthetic val$favorited:Z


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iput-boolean p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->val$favorited:Z

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$3(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/RatingsService;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    iget-boolean v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->val$favorited:Z

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->updateFavorites(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)Z

    .line 383
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$4(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;

    iget-boolean v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;->val$favorited:Z

    invoke-direct {v1, p0, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$12;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void
.end method
