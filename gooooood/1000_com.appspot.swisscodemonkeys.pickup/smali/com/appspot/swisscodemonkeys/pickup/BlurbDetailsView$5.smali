.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$5;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->initialize(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 3
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromTouch"    # Z

    .prologue
    .line 192
    if-eqz p3, :cond_0

    .line 193
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lstats/StatsTracker;->getInstance(Landroid/content/Context;)Lstats/StatsTracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vot_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstats/StatsTracker;->trackNoDouble(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->showVoteDialog()V

    .line 196
    :cond_0
    return-void
.end method
