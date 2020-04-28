.class public final Lcom/magicwach/rdefense/BulletData;
.super Ljava/lang/Object;
.source "BulletData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/BulletData$1;,
        Lcom/magicwach/rdefense/BulletData$BulletProp;
    }
.end annotation


# static fields
.field public static final AABULLET:I = 0x6

.field public static final ARTILLERY:I = 0x9

.field public static final BULLET:I = 0x2

.field public static final BULLET_TYPE_COUNT:I = 0xb

.field public static final FIRE:I = 0x5

.field public static final MINE:I = 0xa

.field public static final MINE_RADIUS_SQ:I = 0xc80

.field public static final MORTAR:I = 0x8

.field public static final NONE:I = 0x0

.field public static final ROCKET:I = 0x4

.field public static final SLOW:I = 0x3

.field public static final SPLASH_RADIUS_SQ:I = 0x190

.field public static final SURFAIR:I = 0x7

.field public static final TELEPORT:I = 0x1

.field private static bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static color(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 73
    sget-object v0, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->color:I

    return v0
.end method

.method public static getDirectionImage(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "type"    # I
    .param p1, "angle"    # I

    .prologue
    .line 76
    sget-object v0, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->getDirectionImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v7, -0x8000

    const/high16 v6, -0x1000000

    const/16 v5, 0xa

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 22
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/magicwach/rdefense/BulletData$BulletProp;

    sput-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    .line 23
    new-instance v0, Lcom/magicwach/rdefense/BulletData$BulletProp;

    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>(Lcom/magicwach/rdefense/BulletData$1;)V

    .line 24
    .local v0, "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    sget-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 25
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setSpeed(I)V

    .line 26
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    .line 27
    const/high16 v1, -0x10000

    iput v1, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->color:I

    .line 28
    new-instance v0, Lcom/magicwach/rdefense/BulletData$BulletProp;

    .end local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>(Lcom/magicwach/rdefense/BulletData$1;)V

    .line 29
    .restart local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    sget-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 30
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setSpeed(I)V

    .line 31
    iput v5, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    .line 32
    const v1, -0x7f0080

    iput v1, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->color:I

    .line 33
    new-instance v0, Lcom/magicwach/rdefense/BulletData$BulletProp;

    .end local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>(Lcom/magicwach/rdefense/BulletData$1;)V

    .line 34
    .restart local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    sget-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 35
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setSpeed(I)V

    .line 36
    const v1, 0x7f020031

    invoke-virtual {v0, p0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setImage(Landroid/app/Activity;I)V

    .line 37
    iput v6, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->color:I

    .line 38
    new-instance v0, Lcom/magicwach/rdefense/BulletData$BulletProp;

    .end local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>(Lcom/magicwach/rdefense/BulletData$1;)V

    .line 39
    .restart local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    sget-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 40
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setSpeed(I)V

    .line 41
    iput v5, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    .line 42
    const v1, -0x7f008000

    iput v1, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->color:I

    .line 43
    new-instance v0, Lcom/magicwach/rdefense/BulletData$BulletProp;

    .end local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>(Lcom/magicwach/rdefense/BulletData$1;)V

    .line 44
    .restart local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    sget-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    aput-object v0, v1, v4

    .line 45
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setSpeed(I)V

    .line 46
    iput v4, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    .line 47
    iput v7, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->color:I

    .line 48
    new-instance v0, Lcom/magicwach/rdefense/BulletData$BulletProp;

    .end local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>(Lcom/magicwach/rdefense/BulletData$1;)V

    .line 49
    .restart local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    sget-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 50
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setSpeed(I)V

    .line 51
    const v1, 0x7f020022

    invoke-virtual {v0, p0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setImage(Landroid/app/Activity;I)V

    .line 52
    iput v6, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->color:I

    .line 53
    new-instance v0, Lcom/magicwach/rdefense/BulletData$BulletProp;

    .end local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>(Lcom/magicwach/rdefense/BulletData$1;)V

    .line 54
    .restart local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    sget-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 55
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setSpeed(I)V

    .line 56
    iput v4, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    .line 57
    const v1, -0x7f0100

    iput v1, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->color:I

    .line 58
    new-instance v0, Lcom/magicwach/rdefense/BulletData$BulletProp;

    .end local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>(Lcom/magicwach/rdefense/BulletData$1;)V

    .line 59
    .restart local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    sget-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 60
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/BulletData$BulletProp;->setSpeed(I)V

    .line 61
    const/4 v1, 0x7

    iput v1, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    .line 62
    iput v7, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->color:I

    .line 63
    new-instance v0, Lcom/magicwach/rdefense/BulletData$BulletProp;

    .end local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/BulletData$BulletProp;-><init>(Lcom/magicwach/rdefense/BulletData$1;)V

    .line 64
    .restart local v0    # "bp":Lcom/magicwach/rdefense/BulletData$BulletProp;
    sget-object v1, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    aput-object v0, v1, v5

    .line 65
    return-void
.end method

.method public static size(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 70
    sget-object v0, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->size:I

    return v0
.end method

.method public static speed(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 67
    sget-object v0, Lcom/magicwach/rdefense/BulletData;->bullet_props:[Lcom/magicwach/rdefense/BulletData$BulletProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/BulletData$BulletProp;->speed:I

    return v0
.end method
