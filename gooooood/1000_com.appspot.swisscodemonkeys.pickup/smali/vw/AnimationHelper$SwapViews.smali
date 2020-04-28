.class public final Lvw/AnimationHelper$SwapViews;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvw/AnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SwapViews"
.end annotation


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field final synthetic this$0:Lvw/AnimationHelper;

.field private view:Landroid/view/View;

.field private viewNew:Landroid/view/View;


# direct methods
.method public constructor <init>(Lvw/AnimationHelper;Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewNew"    # Landroid/view/View;
    .param p4, "newAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 160
    iput-object p1, p0, Lvw/AnimationHelper$SwapViews;->this$0:Lvw/AnimationHelper;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lvw/AnimationHelper$SwapViews;->view:Landroid/view/View;

    .line 158
    iput-object p3, p0, Lvw/AnimationHelper$SwapViews;->viewNew:Landroid/view/View;

    .line 159
    iput-object p4, p0, Lvw/AnimationHelper$SwapViews;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$0(Lvw/AnimationHelper$SwapViews;)Landroid/view/View;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lvw/AnimationHelper$SwapViews;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lvw/AnimationHelper$SwapViews;)Lvw/AnimationHelper;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lvw/AnimationHelper$SwapViews;->this$0:Lvw/AnimationHelper;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lvw/AnimationHelper$SwapViews;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lvw/AnimationHelper$SwapViews;->viewNew:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lvw/AnimationHelper$SwapViews;->animation:Landroid/view/animation/Animation;

    new-instance v1, Lvw/AnimationHelper$SwapViews$1;

    invoke-direct {v1, p0}, Lvw/AnimationHelper$SwapViews$1;-><init>(Lvw/AnimationHelper$SwapViews;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 181
    iget-object v0, p0, Lvw/AnimationHelper$SwapViews;->this$0:Lvw/AnimationHelper;

    invoke-static {v0}, Lvw/AnimationHelper;->access$0(Lvw/AnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lvw/AnimationHelper$SwapViews;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    return-void
.end method
