.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$8;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->setupMoreOptions(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;)V
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
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$8;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$8;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lstats/StatsTracker;->getInstance(Landroid/content/Context;)Lstats/StatsTracker;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fla_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$8;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lstats/StatsTracker;->trackNoDouble(Ljava/lang/String;)V

    .line 258
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$8;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "blurb"

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$8;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$8;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 261
    return-void
.end method
