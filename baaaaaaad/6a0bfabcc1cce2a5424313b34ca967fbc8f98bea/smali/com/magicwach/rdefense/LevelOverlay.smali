.class public final Lcom/magicwach/rdefense/LevelOverlay;
.super Ljava/lang/Object;
.source "LevelOverlay.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public image_id:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "image_id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/magicwach/rdefense/LevelOverlay;->image_id:I

    .line 6
    iput p2, p0, Lcom/magicwach/rdefense/LevelOverlay;->x:I

    .line 7
    iput p3, p0, Lcom/magicwach/rdefense/LevelOverlay;->y:I

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/magicwach/rdefense/LevelOverlay;->bitmap:Landroid/graphics/Bitmap;

    .line 9
    return-void
.end method
