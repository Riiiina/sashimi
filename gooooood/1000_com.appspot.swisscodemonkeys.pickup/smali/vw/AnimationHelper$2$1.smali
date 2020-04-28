.class Lvw/AnimationHelper$2$1;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/AnimationHelper$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvw/AnimationHelper$2;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lvw/AnimationHelper$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/AnimationHelper$2$1;->this$1:Lvw/AnimationHelper$2;

    iput-object p2, p0, Lvw/AnimationHelper$2$1;->val$view:Landroid/view/View;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lvw/AnimationHelper$2$1;->this$1:Lvw/AnimationHelper$2;

    invoke-static {v0}, Lvw/AnimationHelper$2;->access$0(Lvw/AnimationHelper$2;)Lvw/AnimationHelper;

    move-result-object v0

    invoke-static {v0}, Lvw/AnimationHelper;->access$0(Lvw/AnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lvw/AnimationHelper$2$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    return-void
.end method
