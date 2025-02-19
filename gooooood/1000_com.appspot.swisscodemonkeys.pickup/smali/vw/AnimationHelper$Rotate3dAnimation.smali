.class public Lvw/AnimationHelper$Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvw/AnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rotate3dAnimation"
.end annotation


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "depthZ"    # F
    .param p6, "reverse"    # Z

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 223
    iput p1, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mFromDegrees:F

    .line 224
    iput p2, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mToDegrees:F

    .line 225
    iput p3, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mCenterX:F

    .line 226
    iput p4, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mCenterY:F

    .line 227
    iput p5, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mDepthZ:F

    .line 228
    iput-boolean p6, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mReverse:Z

    .line 229
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v8, 0x0

    .line 239
    iget v4, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mFromDegrees:F

    .line 240
    .local v4, "fromDegrees":F
    iget v6, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 242
    .local v3, "degrees":F
    iget v1, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mCenterX:F

    .line 243
    .local v1, "centerX":F
    iget v2, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mCenterY:F

    .line 244
    .local v2, "centerY":F
    iget-object v0, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 246
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 248
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 249
    iget-boolean v6, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mReverse:Z

    if-eqz v6, :cond_0

    .line 250
    iget v6, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mDepthZ:F

    mul-float/2addr v6, p1

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 254
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 255
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 256
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 258
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 259
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 260
    return-void

    .line 252
    :cond_0
    iget v6, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mDepthZ:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 234
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lvw/AnimationHelper$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 235
    return-void
.end method
