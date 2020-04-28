.class Lcom/clov4r/android/nil/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/SystemPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/cd;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/cd;->a:Lcom/clov4r/android/nil/SystemPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->a(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/cd;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/SystemPlayer;->finish()V

    return-void
.end method
