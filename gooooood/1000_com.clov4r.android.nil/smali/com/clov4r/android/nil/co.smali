.class Lcom/clov4r/android/nil/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/e;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/e;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/co;->a:Lcom/clov4r/android/nil/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->aj:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/co;->a:Lcom/clov4r/android/nil/e;

    iget-object v0, v0, Lcom/clov4r/android/nil/e;->a:Lcom/clov4r/android/nil/Setting;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/Setting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
