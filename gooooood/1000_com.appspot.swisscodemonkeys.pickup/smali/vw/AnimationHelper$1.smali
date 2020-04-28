.class Lvw/AnimationHelper$1;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/AnimationHelper;->applyRotation(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvw/AnimationHelper;

.field private final synthetic val$view:Landroid/view/View;

.field private final synthetic val$viewNew:Landroid/view/View;


# direct methods
.method constructor <init>(Lvw/AnimationHelper;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/AnimationHelper$1;->this$0:Lvw/AnimationHelper;

    iput-object p2, p0, Lvw/AnimationHelper$1;->val$viewNew:Landroid/view/View;

    iput-object p3, p0, Lvw/AnimationHelper$1;->val$view:Landroid/view/View;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 80
    iget-object v0, p0, Lvw/AnimationHelper$1;->this$0:Lvw/AnimationHelper;

    iget-object v1, p0, Lvw/AnimationHelper$1;->val$viewNew:Landroid/view/View;

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 81
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 80
    invoke-static/range {v0 .. v5}, Lvw/AnimationHelper;->access$1(Lvw/AnimationHelper;Landroid/view/View;FFZLandroid/view/animation/Interpolator;)Lvw/AnimationHelper$Rotate3dAnimation;

    move-result-object v6

    .line 82
    .local v6, "anim":Landroid/view/animation/Animation;
    iget-object v0, p0, Lvw/AnimationHelper$1;->this$0:Lvw/AnimationHelper;

    invoke-static {v0}, Lvw/AnimationHelper;->access$0(Lvw/AnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lvw/AnimationHelper$SwapViews;

    iget-object v2, p0, Lvw/AnimationHelper$1;->this$0:Lvw/AnimationHelper;

    iget-object v3, p0, Lvw/AnimationHelper$1;->val$view:Landroid/view/View;

    iget-object v4, p0, Lvw/AnimationHelper$1;->val$viewNew:Landroid/view/View;

    invoke-direct {v1, v2, v3, v4, v6}, Lvw/AnimationHelper$SwapViews;-><init>(Lvw/AnimationHelper;Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 86
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 75
    return-void
.end method
