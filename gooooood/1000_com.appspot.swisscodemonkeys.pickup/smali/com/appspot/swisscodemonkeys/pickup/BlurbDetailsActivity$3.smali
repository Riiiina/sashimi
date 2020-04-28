.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$3;
.super Ljava/lang/Object;
.source "BlurbDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->setupCommentSection(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

.field private final synthetic val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$3;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

    const-class v2, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "blurb"

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$3;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;

    invoke-virtual {v1, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    return-void
.end method
