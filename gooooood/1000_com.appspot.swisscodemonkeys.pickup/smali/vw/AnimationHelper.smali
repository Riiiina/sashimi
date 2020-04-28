.class public Lvw/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvw/AnimationHelper$Rotate3dAnimation;,
        Lvw/AnimationHelper$SwapViews;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x1f4

.field private static final ANIMATION_Z_DEPTH_PERCENTAGE:F = -0.4f


# instance fields
.field private parentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lvw/AnimationHelper;->parentView:Landroid/view/ViewGroup;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lvw/AnimationHelper;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lvw/AnimationHelper;->parentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1(Lvw/AnimationHelper;Landroid/view/View;FFZLandroid/view/animation/Interpolator;)Lvw/AnimationHelper$Rotate3dAnimation;
    .locals 1

    .prologue
    .line 134
    invoke-direct/range {p0 .. p5}, Lvw/AnimationHelper;->createRotationAnim(Landroid/view/View;FFZLandroid/view/animation/Interpolator;)Lvw/AnimationHelper$Rotate3dAnimation;

    move-result-object v0

    return-object v0
.end method

.method private createMoveAnim(FF)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "fromDelta"    # F
    .param p2, "toDelta"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 117
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v2, p1

    move v3, v1

    move v4, p2

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 127
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 129
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 130
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 131
    return-object v0
.end method

.method private createRotationAnim(Landroid/view/View;FFZLandroid/view/animation/Interpolator;)Lvw/AnimationHelper$Rotate3dAnimation;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromDegrees"    # F
    .param p3, "toDegrees"    # F
    .param p4, "reverse"    # Z
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 138
    .local v3, "centerX":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 139
    .local v4, "centerY":F
    const v1, -0x41333333    # -0.4f

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v1, v2

    .line 140
    .local v5, "zDepth":F
    new-instance v0, Lvw/AnimationHelper$Rotate3dAnimation;

    move v1, p2

    move v2, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lvw/AnimationHelper$Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 142
    .local v0, "rotation":Lvw/AnimationHelper$Rotate3dAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lvw/AnimationHelper$Rotate3dAnimation;->setDuration(J)V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvw/AnimationHelper$Rotate3dAnimation;->setFillAfter(Z)V

    .line 144
    invoke-virtual {v0, p5}, Lvw/AnimationHelper$Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 145
    return-object v0
.end method


# virtual methods
.method public applyFadeIn(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 51
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 52
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 54
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    return-void
.end method

.method public applyMoveAnim(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "replacementView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 93
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, v2, v1}, Lvw/AnimationHelper;->createMoveAnim(FF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 94
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lvw/AnimationHelper$2;

    invoke-direct {v1, p0, p1}, Lvw/AnimationHelper$2;-><init>(Lvw/AnimationHelper;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2}, Lvw/AnimationHelper;->createMoveAnim(FF)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    return-void
.end method

.method public applyRotation(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewNew"    # Landroid/view/View;

    .prologue
    .line 68
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const/4 v2, 0x0

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v4, 0x1

    .line 71
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 70
    invoke-direct/range {v0 .. v5}, Lvw/AnimationHelper;->createRotationAnim(Landroid/view/View;FFZLandroid/view/animation/Interpolator;)Lvw/AnimationHelper$Rotate3dAnimation;

    move-result-object v6

    .line 73
    .local v6, "rotation":Lvw/AnimationHelper$Rotate3dAnimation;
    new-instance v0, Lvw/AnimationHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lvw/AnimationHelper$1;-><init>(Lvw/AnimationHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Lvw/AnimationHelper$Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 89
    iget-object v0, p0, Lvw/AnimationHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    return-void
.end method
