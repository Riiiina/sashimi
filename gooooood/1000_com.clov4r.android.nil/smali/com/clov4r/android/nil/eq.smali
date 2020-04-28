.class Lcom/clov4r/android/nil/eq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/eq;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/eq;->a:Lcom/clov4r/android/nil/CMPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->a(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/eq;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/CMPlayer;->finish()V

    return-void
.end method
