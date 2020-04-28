.class Lcom/clov4r/android/nil/entrance/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/UserHelpActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/UserHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/ai;->a:Lcom/clov4r/android/nil/entrance/UserHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/ai;->a:Lcom/clov4r/android/nil/entrance/UserHelpActivity;

    const/4 v2, -0x1

    const-string v3, "show_tips"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/ai;->a:Lcom/clov4r/android/nil/entrance/UserHelpActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->finish()V

    return-void
.end method
