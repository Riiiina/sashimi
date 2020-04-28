.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;
.super Ljava/lang/Object;
.source "BlurbDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private final synthetic val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 213
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;->val$blurbList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getBlurbList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 214
    .local v0, "blurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "Like comment (+1)"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Dislike comment (-1)"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 216
    const-string v4, "View authors\' profile"

    aput-object v4, v2, v3

    new-instance v3, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$4;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/app/Activity;)V

    .line 215
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 236
    return-void
.end method
