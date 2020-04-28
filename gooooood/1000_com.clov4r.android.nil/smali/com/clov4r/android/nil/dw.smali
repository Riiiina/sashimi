.class Lcom/clov4r/android/nil/dw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/dw;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/clov4r/android/nil/ec;->t:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/clov4r/android/nil/ec;->t:I

    sget-object v1, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/dw;->a:Lcom/clov4r/android/nil/CMPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->a(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/dw;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/CMPlayer;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/dw;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v1, p0, Lcom/clov4r/android/nil/dw;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->a(Lcom/clov4r/android/nil/CMPlayer;Ljava/lang/String;)V

    goto :goto_0
.end method
