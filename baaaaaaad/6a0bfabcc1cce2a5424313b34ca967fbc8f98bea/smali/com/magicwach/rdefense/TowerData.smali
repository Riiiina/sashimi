.class public final Lcom/magicwach/rdefense/TowerData;
.super Ljava/lang/Object;
.source "TowerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/TowerData$TowerImage;,
        Lcom/magicwach/rdefense/TowerData$TowerProp;
    }
.end annotation


# static fields
.field public static final FLAME_ADD_PER_SEC:I = 0x1e

.field public static final FLAME_AMOUNT:I = 0x4

.field public static final FLAME_FRAMES_PER_SHOT:I = 0x3

.field public static final MAX_NUM_UPGRADES:I = 0x3

.field public static final TOWER_ANTIAIR1:I = 0xc

.field public static final TOWER_ANTIAIR2:I = 0xd

.field public static final TOWER_ARTILLERY:I = 0x11

.field public static final TOWER_FLAME1:I = 0xa

.field public static final TOWER_FLAME2:I = 0xb

.field public static final TOWER_GUN1:I = 0x1

.field public static final TOWER_GUN2:I = 0x2

.field public static final TOWER_GUN3:I = 0x3

.field public static final TOWER_MINE_ARMED:I = 0x15

.field public static final TOWER_MINE_UNARMED:I = 0x14

.field public static final TOWER_MORTAR:I = 0x10

.field public static final TOWER_ROCKET1:I = 0x7

.field public static final TOWER_ROCKET2:I = 0x8

.field public static final TOWER_ROCKET3:I = 0x9

.field public static final TOWER_SELL:I = 0x0

.field public static final TOWER_SLOW1:I = 0x4

.field public static final TOWER_SLOW2:I = 0x5

.field public static final TOWER_SLOW3:I = 0x6

.field public static final TOWER_SURFAIR1:I = 0xe

.field public static final TOWER_SURFAIR2:I = 0xf

.field public static final TOWER_TELEPORT_ARMED:I = 0x13

.field public static final TOWER_TELEPORT_UNARMED:I = 0x12

.field public static final TOWER_TYPE_COUNT:I = 0x16

.field private static images_loaded:Z

.field private static tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

.field private static tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    sput-boolean v0, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    return-void
.end method

.method public static attackRadius(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 413
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->attack_radius:I

    return v0
.end method

.method public static attackRadiusSq(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 410
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->attack_radius_sq:I

    return v0
.end method

.method public static cost(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 425
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    return v0
.end method

.method public static getDirectionImage(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "type"    # I
    .param p1, "angle"    # I

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/magicwach/rdefense/TowerData;->getDirectionImage(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectionImage(III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "type"    # I
    .param p1, "angle"    # I
    .param p2, "frame"    # I

    .prologue
    .line 459
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->animated:Z

    if-eqz v0, :cond_0

    .line 460
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->images:[Landroid/graphics/Bitmap;

    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v1, v1, p0

    iget v1, v1, Lcom/magicwach/rdefense/TowerData$TowerProp;->directions:I

    rem-int v1, p2, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 462
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->getDirectionImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static gunHeight(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 428
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->tower_height:I

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public static gunRadius(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 434
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    return v0
.end method

.method public static image(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 453
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->images:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_0

    .line 38
    const/16 v1, 0x16

    new-array v1, v1, [Lcom/magicwach/rdefense/TowerData$TowerImage;

    sput-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    .line 40
    :cond_0
    const/16 v1, 0x16

    new-array v1, v1, [Lcom/magicwach/rdefense/TowerData$TowerProp;

    sput-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    .line 41
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 42
    .local v0, "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aput-object v0, v1, v4

    .line 43
    const-string v1, "\u51fa\u552e"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 45
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aput-object v0, v1, v5

    .line 46
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 47
    iput v7, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 48
    invoke-static {v5, v4}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 49
    iput v6, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 50
    const/4 v1, 0x5

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 51
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    aput v6, v1, v4

    .line 52
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0xa

    aput v2, v1, v5

    .line 53
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0xc

    aput v2, v1, v6

    .line 54
    const-string v1, "Light Gun"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 55
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v4}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 56
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_3

    .line 57
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const v2, 0x7f020012

    invoke-virtual {v0, p0, v2}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v2

    aput-object v2, v1, v5

    .line 61
    :goto_0
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 62
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aput-object v0, v1, v6

    .line 63
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 64
    iput v7, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 65
    invoke-static {v6, v4}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 66
    iput v6, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 67
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 68
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 69
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    aput v8, v1, v4

    .line 70
    const-string v1, "\u4e2d\u7ea7\u70ae"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 71
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v4}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 72
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_4

    .line 73
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const v2, 0x7f020013

    invoke-virtual {v0, p0, v2}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v2

    aput-object v2, v1, v6

    .line 77
    :goto_1
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 78
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aput-object v0, v1, v8

    .line 79
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 80
    iput v7, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 81
    invoke-static {v8, v4}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 82
    iput v6, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 83
    iput v7, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 84
    iput v6, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 85
    const-string v1, "\u91cd\u70ae"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 86
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v4}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 87
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_5

    .line 88
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const v2, 0x7f020014

    invoke-virtual {v0, p0, v2}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v2

    aput-object v2, v1, v8

    .line 92
    :goto_2
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 93
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    .line 94
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 95
    iput v7, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 96
    const/16 v1, 0x9

    invoke-static {v1, v4}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 97
    iput v7, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 98
    const/16 v1, 0x14

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 99
    const/4 v1, 0x5

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 100
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 101
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0xd

    aput v2, v1, v4

    .line 102
    const-string v1, "\u5bf9\u7a7a\u70ae"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 103
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v4}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 104
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_6

    .line 105
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xc

    const/high16 v3, 0x7f020000

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 109
    :goto_3
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 110
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    .line 111
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 112
    iput v7, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 113
    const/16 v1, 0x14

    invoke-static {v1, v4}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 114
    iput v7, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 115
    const/16 v1, 0x28

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 116
    const/4 v1, 0x5

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 117
    const/16 v1, 0xc

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 118
    const-string v1, "\u91cd\u578b\u5bf9\u7a7a\u70ae"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 119
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v4}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 120
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_7

    .line 121
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xd

    const v3, 0x7f020001

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 125
    :goto_4
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 126
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    .line 127
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 128
    iput v8, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 129
    const/16 v1, 0x28

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 130
    const/4 v1, 0x5

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 131
    const/16 v1, 0x46

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 132
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 133
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0xb

    aput v2, v1, v4

    .line 134
    const-string v1, "\u706b\u7130\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 135
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 136
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_8

    .line 137
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xa

    const v3, 0x7f020010

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 141
    :goto_5
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 142
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 143
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 144
    iput v8, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 145
    const/16 v1, 0x46

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 146
    const/4 v1, 0x5

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 147
    const/16 v1, 0x32

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 148
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 149
    const-string v1, "\u706b\u6d77\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 150
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 151
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_9

    .line 152
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xb

    const v3, 0x7f020011

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    :goto_6
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 157
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 158
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 159
    const/16 v1, 0x1e

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 160
    const/16 v1, 0x1e

    invoke-static {v1, v7}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 161
    iput v8, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 162
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 163
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 164
    iput-boolean v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->animated:Z

    .line 165
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/4 v2, 0x5

    aput v2, v1, v4

    .line 166
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/magicwach/rdefense/RewardData;->rewardLevel(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 167
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0x12

    aput v2, v1, v5

    .line 169
    :cond_1
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/magicwach/rdefense/RewardData;->rewardLevel(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 170
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0x14

    aput v2, v1, v6

    .line 172
    :cond_2
    const-string v1, "\u521d\u7ea7\u51cf\u901f\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 173
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v7}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 174
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_a

    .line 175
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/4 v2, 0x4

    const v3, 0x7f020019

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 179
    :goto_7
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 180
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 181
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 182
    const/16 v1, 0x14

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 183
    const/16 v1, 0x2d

    invoke-static {v1, v7}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 184
    iput v8, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 185
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 186
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 187
    iput-boolean v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->animated:Z

    .line 188
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 189
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    aput v7, v1, v4

    .line 190
    const-string v1, "\u5347\u7ea7\u51cf\u901f\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 191
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v7}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 192
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_b

    .line 193
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/4 v2, 0x5

    const v3, 0x7f02001a

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 197
    :goto_8
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 198
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aput-object v0, v1, v7

    .line 199
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 200
    const/16 v1, 0xf

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 201
    const/16 v1, 0x3c

    invoke-static {v1, v7}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 202
    iput v8, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 203
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 204
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 205
    iput-boolean v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->animated:Z

    .line 206
    const/4 v1, 0x5

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 207
    const-string v1, "\u9ad8\u7ea7\u51cf\u901f\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 208
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v7}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 209
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_c

    .line 210
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const v2, 0x7f02001b

    invoke-virtual {v0, p0, v2}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v2

    aput-object v2, v1, v7

    .line 214
    :goto_9
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 215
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 216
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 217
    const/16 v1, 0x46

    invoke-static {v1, v6}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 218
    const/16 v1, 0x11

    invoke-static {v1, v5}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 219
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 220
    const/16 v1, 0x14

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 221
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0x8

    aput v2, v1, v4

    .line 222
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0x10

    aput v2, v1, v5

    .line 223
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0xe

    aput v2, v1, v6

    .line 224
    const-string v1, "\u8f7b\u578b\u706b\u7bad\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 225
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v6}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 226
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v5}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 227
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_d

    .line 228
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/4 v2, 0x7

    const v3, 0x7f020032

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 232
    :goto_a
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 233
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 234
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 235
    const/16 v1, 0x37

    invoke-static {v1, v6}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 236
    const/16 v1, 0x20

    invoke-static {v1, v5}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 237
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 238
    const/16 v1, 0x1e

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 239
    const/4 v1, 0x7

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 240
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0x9

    aput v2, v1, v4

    .line 241
    const-string v1, "\u4e2d\u578b\u706b\u7bad\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 242
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v6}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 243
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v5}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 244
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_e

    .line 245
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x8

    const v3, 0x7f020033

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 249
    :goto_b
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 250
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 251
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 252
    const/16 v1, 0x32

    invoke-static {v1, v6}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 253
    const/16 v1, 0x32

    invoke-static {v1, v5}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 254
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 255
    const/16 v1, 0x32

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 256
    const/16 v1, 0x8

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 257
    const-string v1, "\u91cd\u578b\u706b\u7bad\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 258
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v6}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 259
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v5}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 260
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_f

    .line 261
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x9

    const v3, 0x7f020034

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 265
    :goto_c
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 266
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    .line 267
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 268
    const/16 v1, 0x32

    invoke-static {v1, v8}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 269
    const/16 v1, 0x41

    invoke-static {v1, v5}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 270
    const/4 v1, 0x7

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 271
    const/16 v1, 0x46

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 272
    const/4 v1, 0x7

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 273
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0xf

    aput v2, v1, v4

    .line 274
    const-string v1, "\u5730\u5bf9\u7a7a\u5bfc\u5f39\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 275
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v8}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 276
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v5}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 277
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_10

    .line 278
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xe

    const v3, 0x7f020036

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 282
    :goto_d
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 283
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    .line 284
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 285
    const/16 v1, 0x32

    invoke-static {v1, v8}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 286
    const/16 v1, 0x6e

    invoke-static {v1, v5}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 287
    const/4 v1, 0x7

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 288
    const/16 v1, 0x5a

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 289
    const/16 v1, 0xe

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 290
    const-string v1, "\u9ad8\u7ea7\u5730\u5bf9\u7a7a\u5bfc\u5f39\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 291
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v8}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 292
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v5}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 293
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_11

    .line 294
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xf

    const v3, 0x7f020037

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 298
    :goto_e
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 299
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    .line 300
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 301
    const/16 v1, 0x5a

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 302
    const/16 v1, 0x23

    invoke-static {v1, v5}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 303
    const/16 v1, 0x8

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 304
    const/16 v1, 0x32

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 305
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 306
    const/4 v1, 0x7

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 307
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0x11

    aput v2, v1, v4

    .line 308
    const-string v1, "\u8feb\u51fb\u70ae\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 309
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 310
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v5}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 311
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_12

    .line 312
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x10

    const v3, 0x7f020030

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 316
    :goto_f
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 317
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    .line 318
    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 319
    const/16 v1, 0x5a

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 320
    const/16 v1, 0x46

    invoke-static {v1, v5}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 321
    const/16 v1, 0x9

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 322
    const/16 v1, 0x5a

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 323
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 324
    const/16 v1, 0x10

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 325
    const-string v1, "\u706b\u70ae\u70ae\u53f0"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 326
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 327
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    invoke-static {v5}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 328
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_13

    .line 329
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x11

    const v3, 0x7f020005

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 333
    :goto_10
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 334
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    .line 335
    iput-boolean v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->blocking:Z

    .line 336
    iput v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 337
    const/16 v1, 0x14

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 338
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 339
    iput v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->tower_height:I

    .line 340
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 341
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0x13

    aput v2, v1, v4

    .line 342
    const-string v1, "\u65e0\u653b\u51fb\u529b\u4f20\u9001\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 343
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/magicwach/rdefense/RewardData;->towerString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 344
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_14

    .line 345
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x12

    const v3, 0x7f02003b

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 350
    :goto_11
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 351
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0x13

    aput-object v0, v1, v2

    .line 352
    invoke-virtual {v0, v5}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 353
    iput-boolean v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->blocking:Z

    .line 354
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 355
    iput v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 356
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 357
    iput v8, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 358
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 359
    iput v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->tower_height:I

    .line 360
    iput-boolean v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->animated:Z

    .line 361
    const/16 v1, 0x12

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 362
    const-string v1, "\u6b66\u88c5\u7684\u4f20\u9001\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 363
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_15

    .line 364
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x13

    const v3, 0x7f02003a

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 369
    :goto_12
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 370
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    .line 371
    iput-boolean v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->blocking:Z

    .line 372
    iput v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 373
    const/16 v1, 0x14

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 374
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 375
    iput v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->tower_height:I

    .line 376
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 377
    iget-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    const/16 v2, 0x15

    aput v2, v1, v4

    .line 378
    const-string v1, "\u65e0\u653b\u51fb\u529b\u7684\u5730\u96f7"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 379
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_16

    .line 380
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x14

    const v3, 0x7f020021

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 385
    :goto_13
    new-instance v0, Lcom/magicwach/rdefense/TowerData$TowerProp;

    .end local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    invoke-direct {v0}, Lcom/magicwach/rdefense/TowerData$TowerProp;-><init>()V

    .line 386
    .restart local v0    # "tp":Lcom/magicwach/rdefense/TowerData$TowerProp;
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    const/16 v2, 0x15

    aput-object v0, v1, v2

    .line 387
    invoke-virtual {v0, v5}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setAttackRadius(I)V

    .line 388
    iput-boolean v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->blocking:Z

    .line 389
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    .line 390
    const/16 v1, 0x190

    invoke-static {v1, v5}, Lcom/magicwach/rdefense/RewardData;->applyAward(II)I

    move-result v1

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    .line 391
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    .line 392
    const/4 v1, 0x5

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    .line 393
    iput v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->gun_radius:I

    .line 394
    iput v4, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->tower_height:I

    .line 395
    iput-boolean v5, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->animated:Z

    .line 396
    const/16 v1, 0x14

    iput v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    .line 397
    const-string v1, "\u5f85\u53d1\u96f7"

    iput-object v1, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    .line 398
    sget-boolean v1, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    if-nez v1, :cond_17

    .line 399
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x15

    const v3, 0x7f020020

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setImage(Landroid/app/Activity;I)Lcom/magicwach/rdefense/TowerData$TowerImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 404
    :goto_14
    sput-boolean v5, Lcom/magicwach/rdefense/TowerData;->images_loaded:Z

    .line 405
    return-void

    .line 59
    :cond_3
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_0

    .line 75
    :cond_4
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_1

    .line 90
    :cond_5
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_2

    .line 107
    :cond_6
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_3

    .line 123
    :cond_7
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_4

    .line 139
    :cond_8
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_5

    .line 154
    :cond_9
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_6

    .line 177
    :cond_a
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_7

    .line 195
    :cond_b
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_8

    .line 212
    :cond_c
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_9

    .line 230
    :cond_d
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_a

    .line 247
    :cond_e
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_b

    .line 263
    :cond_f
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_c

    .line 280
    :cond_10
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_d

    .line 296
    :cond_11
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_e

    .line 314
    :cond_12
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_f

    .line 331
    :cond_13
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_10

    .line 348
    :cond_14
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_11

    .line 367
    :cond_15
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_12

    .line 383
    :cond_16
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_13

    .line 402
    :cond_17
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_images:[Lcom/magicwach/rdefense/TowerData$TowerImage;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/TowerData$TowerProp;->setCachedImage(Lcom/magicwach/rdefense/TowerData$TowerImage;)V

    goto/16 :goto_14
.end method

.method public static isBlocking(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 407
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->blocking:Z

    return v0
.end method

.method public static label(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 450
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->label:Ljava/lang/String;

    return-object v0
.end method

.method public static power(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 419
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->power:I

    return v0
.end method

.method public static sellValue(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "value":I
    :goto_0
    if-ltz p0, :cond_0

    .line 439
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v1, v1, p0

    iget v1, v1, Lcom/magicwach/rdefense/TowerData$TowerProp;->cost:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 438
    sget-object v1, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v1, v1, p0

    iget p0, v1, Lcom/magicwach/rdefense/TowerData$TowerProp;->downgrade_type:I

    goto :goto_0

    .line 441
    :cond_0
    return v0
.end method

.method public static shotDelay(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 416
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_delay:I

    return v0
.end method

.method public static shotType(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 422
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->shot_type:I

    return v0
.end method

.method public static towerHeight(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 431
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->tower_height:I

    return v0
.end method

.method public static upgradeStrings(I)[Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 447
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_strings:[Ljava/lang/String;

    return-object v0
.end method

.method public static upgradeType(II)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "upgrade_idx"    # I

    .prologue
    .line 444
    sget-object v0, Lcom/magicwach/rdefense/TowerData;->tower_props:[Lcom/magicwach/rdefense/TowerData$TowerProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/TowerData$TowerProp;->upgrade_type:[I

    aget v0, v0, p1

    return v0
.end method
