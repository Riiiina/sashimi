.class final Lcom/admob/android/ads/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/admob/android/ads/k;

.field private synthetic b:Lcom/admob/android/ads/AdView;

.field private synthetic c:Lcom/admob/android/ads/k;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/b;Lcom/admob/android/ads/k;Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    .locals 0

    iput-object p2, p0, Lcom/admob/android/ads/as;->a:Lcom/admob/android/ads/k;

    iput-object p3, p0, Lcom/admob/android/ads/as;->b:Lcom/admob/android/ads/AdView;

    iput-object p4, p0, Lcom/admob/android/ads/as;->c:Lcom/admob/android/ads/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/admob/android/ads/as;->a:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/as;->b:Lcom/admob/android/ads/AdView;

    iget-object v1, p0, Lcom/admob/android/ads/as;->a:Lcom/admob/android/ads/k;

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/as;->b:Lcom/admob/android/ads/AdView;

    iget-object v1, p0, Lcom/admob/android/ads/as;->c:Lcom/admob/android/ads/k;

    invoke-static {v0, v1}, Lcom/admob/android/ads/AdView;->c(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)Lcom/admob/android/ads/k;

    iget-object v0, p0, Lcom/admob/android/ads/as;->a:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/as;->a:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->c()V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
