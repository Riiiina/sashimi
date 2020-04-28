.class Lvw/AnimationHelper$SwapViews$1;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/AnimationHelper$SwapViews;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvw/AnimationHelper$SwapViews;


# direct methods
.method constructor <init>(Lvw/AnimationHelper$SwapViews;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/AnimationHelper$SwapViews$1;->this$1:Lvw/AnimationHelper$SwapViews;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 174
    iget-object v0, p0, Lvw/AnimationHelper$SwapViews$1;->this$1:Lvw/AnimationHelper$SwapViews;

    invoke-static {v0}, Lvw/AnimationHelper$SwapViews;->access$1(Lvw/AnimationHelper$SwapViews;)Lvw/AnimationHelper;

    move-result-object v0

    invoke-static {v0}, Lvw/AnimationHelper;->access$0(Lvw/AnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lvw/AnimationHelper$SwapViews$1;->this$1:Lvw/AnimationHelper$SwapViews;

    invoke-static {v1}, Lvw/AnimationHelper$SwapViews;->access$0(Lvw/AnimationHelper$SwapViews;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 178
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 169
    return-void
.end method
