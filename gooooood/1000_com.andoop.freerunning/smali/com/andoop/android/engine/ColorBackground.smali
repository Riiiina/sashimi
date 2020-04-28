.class public Lcom/andoop/android/engine/ColorBackground;
.super Ljava/lang/Object;
.source "ColorBackground.java"

# interfaces
.implements Lcom/andoop/android/engine/IBackground;


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "pColor"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/high16 v0, -0x1000000

    const v1, 0xffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/ColorBackground;->mColor:I

    .line 26
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "pRed"    # I
    .param p2, "pGreen"    # I
    .param p3, "pBlue"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/high16 v0, -0x1000000

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/andoop/android/engine/ColorBackground;->mColor:I

    .line 30
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lcom/andoop/android/engine/Camera;)V
    .locals 1
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pCamera"    # Lcom/andoop/android/engine/Camera;

    .prologue
    .line 40
    iget v0, p0, Lcom/andoop/android/engine/ColorBackground;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 41
    return-void
.end method

.method public onUpdate(F)V
    .locals 0
    .param p1, "pSeconds"    # F

    .prologue
    .line 45
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
