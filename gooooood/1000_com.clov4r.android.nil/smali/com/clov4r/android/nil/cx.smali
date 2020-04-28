.class public Lcom/clov4r/android/nil/cx;
.super Ljava/util/TimerTask;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/widget/PopupWindow;

.field c:Landroid/view/View;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/PopupWindow;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/clov4r/android/nil/cx;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/clov4r/android/nil/cx;->b:Landroid/widget/PopupWindow;

    iput-boolean p4, p0, Lcom/clov4r/android/nil/cx;->d:Z

    iput-object p3, p0, Lcom/clov4r/android/nil/cx;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/cx;->a:Landroid/app/Activity;

    new-instance v1, Lcom/clov4r/android/nil/eu;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/eu;-><init>(Lcom/clov4r/android/nil/cx;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
