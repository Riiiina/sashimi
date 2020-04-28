.class Lcom/clov4r/android/nil/entrance/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/UserHelpActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/UserHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/ah;->a:Lcom/clov4r/android/nil/entrance/UserHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "http://moboplayer.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/ah;->a:Lcom/clov4r/android/nil/entrance/UserHelpActivity;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
