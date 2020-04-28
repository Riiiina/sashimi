.class Lcom/clov4r/android/nil/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/SystemPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/cc;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/cc;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/SystemPlayer;->d(Lcom/clov4r/android/nil/SystemPlayer;)V

    const/4 v0, 0x1

    return v0
.end method
