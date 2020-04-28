.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;
.super Ljava/lang/Object;
.source "BlurbDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->setupCommentClickHandlers(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private final synthetic val$detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private final synthetic val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;->val$detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getBlurbList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 244
    .local v0, "blurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getOwnedByUser()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;->val$detailBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getOwnedByUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$5;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-static {v1, v0, v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->access$0(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 247
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
