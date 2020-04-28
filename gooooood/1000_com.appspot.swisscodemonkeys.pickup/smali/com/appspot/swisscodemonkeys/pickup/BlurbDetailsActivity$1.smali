.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$1;
.super Ljava/lang/Object;
.source "BlurbDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->showOfferWall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

.field private final synthetic val$everyXDays:I


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

    iput p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$1;->val$everyXDays:I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 80
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    const-string v1, "bda"

    const-string v2, "react_offer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$1;->val$everyXDays:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

    const-class v3, Lcom/appspot/swisscodemonkeys/featured/OfferWall;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
