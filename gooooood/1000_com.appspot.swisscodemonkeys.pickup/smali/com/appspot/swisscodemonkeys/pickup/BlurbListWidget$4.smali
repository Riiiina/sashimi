.class Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$4;
.super Ljava/lang/Object;
.source "BlurbListWidget.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
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
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private final synthetic val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$4;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
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
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->headerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 429
    if-nez p3, :cond_0

    move v0, v2

    .line 448
    :goto_0
    return v0

    .line 432
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_2

    move v0, v2

    .line 435
    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 438
    .local v6, "b":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIsHtml()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    .line 440
    goto :goto_0

    .line 442
    :cond_4
    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "irc://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$4;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v2

    .line 448
    goto :goto_0
.end method
