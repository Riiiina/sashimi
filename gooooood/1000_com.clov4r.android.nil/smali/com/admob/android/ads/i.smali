.class final Lcom/admob/android/ads/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/admob/android/ads/k;

.field private synthetic b:Lcom/admob/android/ads/AdView;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    .locals 0

    iput-object p1, p0, Lcom/admob/android/ads/i;->b:Lcom/admob/android/ads/AdView;

    iput-object p2, p0, Lcom/admob/android/ads/i;->a:Lcom/admob/android/ads/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/admob/android/ads/i;->b:Lcom/admob/android/ads/AdView;

    new-instance v1, Lcom/admob/android/ads/b;

    iget-object v2, p0, Lcom/admob/android/ads/i;->a:Lcom/admob/android/ads/k;

    iget-object v3, p0, Lcom/admob/android/ads/i;->b:Lcom/admob/android/ads/AdView;

    invoke-direct {v1, v2, v3}, Lcom/admob/android/ads/b;-><init>(Lcom/admob/android/ads/k;Lcom/admob/android/ads/AdView;)V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->post(Ljava/lang/Runnable;)Z

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
