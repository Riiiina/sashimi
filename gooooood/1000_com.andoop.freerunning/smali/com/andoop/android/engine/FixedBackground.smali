.class public Lcom/andoop/android/engine/FixedBackground;
.super Ljava/lang/Object;
.source "FixedBackground.java"

# interfaces
.implements Lcom/andoop/android/engine/IBackground;


# instance fields
.field private mBackgroundImage:Landroid/graphics/Bitmap;

.field private mBackgroundPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/andoop/android/engine/FixedBackground;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/andoop/android/engine/FixedBackground;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/andoop/android/engine/FixedBackground;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 4
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/andoop/android/engine/FixedBackground;->mBackgroundImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/andoop/android/engine/Camera;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/andoop/android/engine/FixedBackground;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method public onUpdate(F)V
    .locals 0
    .param p1, "seconds"    # F

    .prologue
    .line 49
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
