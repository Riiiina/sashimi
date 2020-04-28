.class Lcom/clov4r/android/nil/cr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/cr;->a:Lcom/clov4r/android/nil/MainPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/clov4r/android/nil/MainPlayer;->nativeGetFPS()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/clov4r/android/nil/cr;->a:Lcom/clov4r/android/nil/MainPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/MainPlayer;->b(Lcom/clov4r/android/nil/MainPlayer;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "FPS:%d.%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, v0, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
