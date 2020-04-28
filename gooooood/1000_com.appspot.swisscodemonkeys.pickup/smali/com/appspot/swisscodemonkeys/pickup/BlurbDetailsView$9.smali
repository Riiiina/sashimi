.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->deleteBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

.field private final synthetic val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;)Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$3(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/RatingsService;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->deleteBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Z

    .line 272
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$4(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9$1;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method
