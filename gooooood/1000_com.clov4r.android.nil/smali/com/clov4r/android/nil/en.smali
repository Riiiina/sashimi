.class Lcom/clov4r/android/nil/en;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/en;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/en;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->c(Lcom/clov4r/android/nil/CMPlayer;)V

    const/4 v0, 0x1

    return v0
.end method
