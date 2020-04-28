.class Lcom/magicwach/rdefense/TowerData$TowerImage;
.super Ljava/lang/Object;
.source "TowerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/TowerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TowerImage"
.end annotation


# instance fields
.field public directions:I

.field public images:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>([Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "_images"    # [Landroid/graphics/Bitmap;
    .param p2, "_directions"    # I

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/magicwach/rdefense/TowerData$TowerImage;->images:[Landroid/graphics/Bitmap;

    .line 538
    iput p2, p0, Lcom/magicwach/rdefense/TowerData$TowerImage;->directions:I

    .line 539
    return-void
.end method
