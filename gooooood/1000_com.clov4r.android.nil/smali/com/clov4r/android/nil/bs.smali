.class Lcom/clov4r/android/nil/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/ThumbCreateActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/ThumbCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/bs;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/bs;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/ThumbCreateActivity;->setResult(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bs;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ThumbCreateActivity;->finish()V

    return-void
.end method
