.class Lcom/clov4r/android/nil/eu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/cx;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v0, v0, Lcom/clov4r/android/nil/cx;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v0, v0, Lcom/clov4r/android/nil/cx;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-boolean v0, v0, Lcom/clov4r/android/nil/cx;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v0, v0, Lcom/clov4r/android/nil/cx;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v1, v1, Lcom/clov4r/android/nil/cx;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v1, v1, Lcom/clov4r/android/nil/cx;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v1, v1, Lcom/clov4r/android/nil/cx;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v2, v2, Lcom/clov4r/android/nil/cx;->c:Landroid/view/View;

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v2, v2, Lcom/clov4r/android/nil/cx;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v3, v3, Lcom/clov4r/android/nil/cx;->b:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v4, v4, Lcom/clov4r/android/nil/cx;->c:Landroid/view/View;

    aget v5, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    const/4 v5, 0x1

    aget v0, v0, v5

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v3, v4, v6, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v0, v0, Lcom/clov4r/android/nil/cx;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/eu;->a:Lcom/clov4r/android/nil/cx;

    iget-object v0, v0, Lcom/clov4r/android/nil/cx;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method
