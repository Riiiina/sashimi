.class Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$2;
.super Ljava/lang/Object;
.source "AboutAuthorWithBlurbsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->inflate(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .end local p1    # "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getBlurbList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 72
    .local v0, "blurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "blurb"

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 74
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
