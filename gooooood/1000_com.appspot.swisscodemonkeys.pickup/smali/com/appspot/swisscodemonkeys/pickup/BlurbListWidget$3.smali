.class Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;
.super Ljava/lang/Object;
.source "BlurbListWidget.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
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
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private final synthetic val$listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 384
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->headerView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 385
    if-nez p3, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 394
    .local v6, "b":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIsHtml()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 400
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "className":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    goto :goto_0

    .line 407
    .end local v7    # "className":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "irc://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 409
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 411
    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 414
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_0
.end method
