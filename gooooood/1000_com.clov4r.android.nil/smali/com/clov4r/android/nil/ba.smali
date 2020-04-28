.class Lcom/clov4r/android/nil/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/ba;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/ba;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->aL:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/ba;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/PlayListActivity;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/ba;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
