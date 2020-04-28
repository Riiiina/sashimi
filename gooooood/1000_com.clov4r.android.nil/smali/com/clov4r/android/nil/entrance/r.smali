.class Lcom/clov4r/android/nil/entrance/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/clov4r/android/nil/entrance/p;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/p;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/r;->b:Lcom/clov4r/android/nil/entrance/p;

    iput-object p2, p0, Lcom/clov4r/android/nil/entrance/r;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/r;->b:Lcom/clov4r/android/nil/entrance/p;

    invoke-static {v0}, Lcom/clov4r/android/nil/entrance/p;->a(Lcom/clov4r/android/nil/entrance/p;)Lcom/clov4r/android/nil/entrance/af;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/r;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/clov4r/android/nil/entrance/af;->a(Ljava/lang/Object;)V

    return-void
.end method
