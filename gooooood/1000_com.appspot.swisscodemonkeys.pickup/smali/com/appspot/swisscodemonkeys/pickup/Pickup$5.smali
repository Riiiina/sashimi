.class Lcom/appspot/swisscodemonkeys/pickup/Pickup$5;
.super Ljava/lang/Object;
.source "Pickup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/Pickup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->access$1(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->access$1(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 200
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->access$1(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    if-eqz v3, :cond_1

    .line 202
    move-object v0, v2

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getBlurbList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 203
    check-cast v2, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->reload()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    instance-of v3, v2, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    if-eqz v3, :cond_0

    .line 205
    move-object v0, v2

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    move-object v1, v0

    .line 206
    .local v1, "authorView":Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->isDataLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    iget-object v3, v3, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
