.class Lcom/clov4r/android/nil/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/Setting;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/Setting;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/f;->a:Lcom/clov4r/android/nil/Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/clov4r/android/nil/f;->a:Lcom/clov4r/android/nil/Setting;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/f;->a:Lcom/clov4r/android/nil/Setting;

    const-class v3, Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Lcom/clov4r/android/nil/Setting;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/Setting;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
