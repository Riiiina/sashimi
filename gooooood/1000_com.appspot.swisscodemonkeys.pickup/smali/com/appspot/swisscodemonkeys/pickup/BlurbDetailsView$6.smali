.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$6;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lstats/StatsTracker;->getInstance(Landroid/content/Context;)Lstats/StatsTracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vot_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstats/StatsTracker;->trackNoDouble(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->showVoteDialog()V

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
