.class Lcom/magicwach/rdefense/EnemyData$EnemyImage;
.super Ljava/lang/Object;
.source "EnemyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/EnemyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnemyImage"
.end annotation


# instance fields
.field public draw_shift_x:I

.field public draw_shift_y:I

.field public frames:[Landroid/graphics/Bitmap;

.field public frames_per_dir:I

.field public slow_frames:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(I[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p1, "_frames_per_dir"    # I
    .param p2, "_frames"    # [Landroid/graphics/Bitmap;
    .param p3, "_slow_frames"    # [Landroid/graphics/Bitmap;
    .param p4, "_draw_shift_x"    # I
    .param p5, "_draw_shift_y"    # I

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p1, p0, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->frames_per_dir:I

    .line 306
    iput-object p2, p0, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->frames:[Landroid/graphics/Bitmap;

    .line 307
    iput-object p3, p0, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->slow_frames:[Landroid/graphics/Bitmap;

    .line 308
    iput p4, p0, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->draw_shift_x:I

    .line 309
    iput p5, p0, Lcom/magicwach/rdefense/EnemyData$EnemyImage;->draw_shift_y:I

    .line 310
    return-void
.end method
