.class Lcom/clov4r/android/nil/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/Setting;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/Setting;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/i;->a:Lcom/clov4r/android/nil/Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://t.sina.com/clov4r"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/i;->a:Lcom/clov4r/android/nil/Setting;

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/Setting;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
