.class public final Lcom/magicwach/rdefense/EnemyData;
.super Ljava/lang/Object;
.source "EnemyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/EnemyData$1;,
        Lcom/magicwach/rdefense/EnemyData$EnemyImage;,
        Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    }
.end annotation


# static fields
.field public static final BOMBER:I = 0x8

.field public static final ENEMY_TYPE_COUNT:I = 0xa

.field public static final HEAVYTANK:I = 0x5

.field public static final HELICOPTER:I = 0x6

.field public static final HVYSOLDIER:I = 0x1

.field public static final JET:I = 0x7

.field public static final LIGHTTANK:I = 0x4

.field public static final RUNNER:I = 0x2

.field public static final SOLDIER:I = 0x0

.field public static final TITAN:I = 0x9

.field public static final TRUCK:I = 0x3

.field private static difficulty_add:I

.field private static enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

.field private static enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

.field private static images_loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    sput-boolean v0, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method

.method public static armor(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 189
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    return v0
.end method

.method public static baseHealth(II)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "level"    # I

    .prologue
    .line 186
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    sget v1, Lcom/magicwach/rdefense/EnemyData;->difficulty_add:I

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v1, p1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static deathFrames(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 210
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static drawShiftX(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 213
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->draw_shift_x:I

    return v0
.end method

.method public static drawShiftY(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 216
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->draw_shift_y:I

    return v0
.end method

.method public static energyBarOffset(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 219
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    return v0
.end method

.method public static firstLevel(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 183
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    return v0
.end method

.method public static image(III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "type"    # I
    .param p1, "orientation"    # I
    .param p2, "frame"    # I

    .prologue
    .line 204
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->getImage(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;I)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "difficulty_level"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 21
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_0

    .line 22
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    sput-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    .line 24
    :cond_0
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    sput-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .line 25
    mul-int/lit8 v1, p1, 0x8

    sput v1, Lcom/magicwach/rdefense/EnemyData;->difficulty_add:I

    .line 26
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 27
    .local v0, "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aput-object v0, v1, v4

    .line 28
    const/4 v1, 0x7

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 29
    iput v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 30
    iput-boolean v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 31
    const/16 v1, 0x14

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 32
    iput v6, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 33
    iput v6, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 34
    const-string v1, "SLDR"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 35
    iput v5, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 36
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_1

    .line 37
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const v2, 0x7f020038

    invoke-virtual {v0, p0, v2}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v2

    aput-object v2, v1, v4

    .line 41
    :goto_0
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .end local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 42
    .restart local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aput-object v0, v1, v6

    .line 43
    const/16 v1, 0xf

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 44
    iput v6, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 45
    iput-boolean v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 46
    const/16 v1, 0xf

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 47
    iput v8, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 48
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 49
    const-string v1, "HSLD"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 50
    iput v5, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 51
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_2

    .line 52
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const v2, 0x7f020016

    invoke-virtual {v0, p0, v2}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v2

    aput-object v2, v1, v6

    .line 56
    :goto_1
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .end local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 57
    .restart local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aput-object v0, v1, v8

    .line 58
    const/4 v1, 0x7

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 59
    iput v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 60
    iput-boolean v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 61
    const/16 v1, 0x1c

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 62
    iput v8, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 63
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 64
    const-string v1, "RUNR"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 65
    iput v5, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 66
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_3

    .line 67
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const v2, 0x7f020035

    invoke-virtual {v0, p0, v2}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v2

    aput-object v2, v1, v8

    .line 71
    :goto_2
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .end local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 72
    .restart local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 73
    const/16 v1, 0x3c

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 74
    const/4 v1, 0x6

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 75
    iput-boolean v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 76
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 77
    const/4 v1, 0x5

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 78
    const/16 v1, 0xf

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 79
    const-string v1, "LTNK"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 80
    iput v5, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 81
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_4

    .line 82
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/4 v2, 0x4

    const v3, 0x7f02001f

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 86
    :goto_3
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .end local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 87
    .restart local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aput-object v0, v1, v5

    .line 88
    const/16 v1, 0x1e

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 89
    iput v8, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 90
    iput-boolean v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 91
    const/16 v1, 0x23

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 92
    iput v5, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 93
    const-string v1, "TRUK"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 94
    const/16 v1, 0x19

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 95
    iput v5, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 96
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_5

    .line 97
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const v2, 0x7f02003e

    invoke-virtual {v0, p0, v2}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v2

    aput-object v2, v1, v5

    .line 101
    :goto_4
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .end local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 102
    .restart local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 103
    const/16 v1, 0x96

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 104
    const/16 v1, 0xe

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 105
    iput-boolean v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 106
    const/16 v1, 0x8

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 107
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 108
    const/16 v1, 0x23

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 109
    const-string v1, "HTNK"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 110
    iput v5, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 111
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_6

    .line 112
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/4 v2, 0x5

    const v3, 0x7f020017

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 116
    :goto_5
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .end local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 117
    .restart local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 118
    const/16 v1, 0x3c

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 119
    iput v8, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 120
    iput-boolean v6, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 121
    const/16 v1, 0x14

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 122
    const/16 v1, 0x8

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 123
    const-string v1, "HELI"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 124
    const/16 v1, 0xf

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 125
    const/16 v1, 0x18

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->x_tile_count:I

    .line 126
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 127
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_7

    .line 128
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/4 v2, 0x6

    const v3, 0x7f020018

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 132
    :goto_6
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .end local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 133
    .restart local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 134
    const/16 v1, 0x46

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 135
    iput v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 136
    iput-boolean v6, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 137
    const/16 v1, 0x20

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 138
    const/16 v1, 0xa

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 139
    const-string v1, "JET"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 140
    const/16 v1, 0x1e

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 141
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->x_tile_count:I

    .line 142
    const/16 v1, 0xc

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 143
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_8

    .line 144
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/4 v2, 0x7

    const v3, 0x7f02001e

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 148
    :goto_7
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .end local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 149
    .restart local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 150
    const/16 v1, 0xc8

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 151
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 152
    iput-boolean v6, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 153
    const/16 v1, 0xf

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 154
    const/16 v1, 0x14

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 155
    const-string v1, "BOMB"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 156
    const/16 v1, 0x28

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 157
    const/4 v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->x_tile_count:I

    .line 158
    const/16 v1, 0x26

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 159
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_9

    .line 160
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/16 v2, 0x8

    const v3, 0x7f020007

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 164
    :goto_8
    new-instance v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    .end local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    invoke-direct {v0, v7}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;-><init>(Lcom/magicwach/rdefense/EnemyData$1;)V

    .line 165
    .restart local v0    # "gp":Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 166
    const/16 v1, 0x5dc

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->health:I

    .line 167
    const/16 v1, 0xe

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->armor:I

    .line 168
    iput-boolean v4, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    .line 169
    const/4 v1, 0x6

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    .line 170
    const/16 v1, 0xfa

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    .line 171
    const/16 v1, 0xc8

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->first_level:I

    .line 172
    const-string v1, "TITN"

    iput-object v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    .line 173
    const/16 v1, 0x28

    iput v1, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->x_tile_count:I

    .line 174
    iput v5, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->energy_bar_offset:I

    .line 175
    sget-boolean v1, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    if-nez v1, :cond_a

    .line 176
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/16 v2, 0x9

    const v3, 0x7f02003d

    invoke-virtual {v0, p0, v3}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setImageArray(Landroid/app/Activity;I)Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    move-result-object v3

    aput-object v3, v1, v2

    .line 180
    :goto_9
    sput-boolean v6, Lcom/magicwach/rdefense/EnemyData;->images_loaded:Z

    .line 181
    return-void

    .line 39
    :cond_1
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto/16 :goto_0

    .line 54
    :cond_2
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto/16 :goto_1

    .line 69
    :cond_3
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto/16 :goto_2

    .line 84
    :cond_4
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto/16 :goto_3

    .line 99
    :cond_5
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto/16 :goto_4

    .line 114
    :cond_6
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto/16 :goto_5

    .line 130
    :cond_7
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto/16 :goto_6

    .line 146
    :cond_8
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto/16 :goto_7

    .line 162
    :cond_9
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto/16 :goto_8

    .line 178
    :cond_a
    sget-object v1, Lcom/magicwach/rdefense/EnemyData;->enemy_images:[Lcom/magicwach/rdefense/EnemyData$EnemyImage;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->setCachedImageArray(Lcom/magicwach/rdefense/EnemyData$EnemyImage;)V

    goto :goto_9
.end method

.method public static isFlyer(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 192
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->is_flyer:Z

    return v0
.end method

.method public static label(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 201
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->label:Ljava/lang/String;

    return-object v0
.end method

.method public static slowImage(III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "type"    # I
    .param p1, "orientation"    # I
    .param p2, "frame"    # I

    .prologue
    .line 207
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->getImage(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static speed(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 195
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->speed:I

    return v0
.end method

.method public static value(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 198
    sget-object v0, Lcom/magicwach/rdefense/EnemyData;->enemy_props:[Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/EnemyData$GameEnemyProp;->value:I

    return v0
.end method
