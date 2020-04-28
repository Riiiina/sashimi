.class Lcom/appspot/swisscodemonkeys/pickup/Pickup$6;
.super Ljava/lang/Object;
.source "Pickup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/Pickup;->createTabs(Landroid/widget/ViewFlipper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 245
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .end local p1    # "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getBlurbList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 246
    .local v0, "blurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    invoke-static {v1, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->startDetailsActivity(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 247
    return-void
.end method
