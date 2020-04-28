.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->sendRating(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private final synthetic val$rating:I

.field private final synthetic val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iput p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;->val$rating:I

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;->val$activity:Landroid/app/Activity;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;->val$rating:I

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->voteMessage(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)Z

    .line 403
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13$1;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$13;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method
