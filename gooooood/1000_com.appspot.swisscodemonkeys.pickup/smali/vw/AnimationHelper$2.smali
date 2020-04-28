.class Lvw/AnimationHelper$2;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/AnimationHelper;->applyMoveAnim(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvw/AnimationHelper;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lvw/AnimationHelper;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/AnimationHelper$2;->this$0:Lvw/AnimationHelper;

    iput-object p2, p0, Lvw/AnimationHelper$2;->val$view:Landroid/view/View;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lvw/AnimationHelper$2;)Lvw/AnimationHelper;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lvw/AnimationHelper$2;->this$0:Lvw/AnimationHelper;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 100
    iget-object v0, p0, Lvw/AnimationHelper$2;->this$0:Lvw/AnimationHelper;

    invoke-static {v0}, Lvw/AnimationHelper;->access$0(Lvw/AnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lvw/AnimationHelper$2$1;

    iget-object v2, p0, Lvw/AnimationHelper$2;->val$view:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lvw/AnimationHelper$2$1;-><init>(Lvw/AnimationHelper$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 110
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 96
    return-void
.end method
