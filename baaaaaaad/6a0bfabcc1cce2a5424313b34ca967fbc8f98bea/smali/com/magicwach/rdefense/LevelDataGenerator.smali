.class public final Lcom/magicwach/rdefense/LevelDataGenerator;
.super Ljava/lang/Object;
.source "LevelDataGenerator.java"


# static fields
.field private static final DELAY_RANGE:I = 0x14

.field private static final GROUPS_MASK:I = 0x3

.field private static final HEALTH_ACCEL:I = 0x82

.field private static final HEALTH_SWING_PCT:I = 0xa

.field private static final HEALTH_TOUGH_PCT:I = 0x19

.field private static final INTRA_LEVEL_DELAY:I = 0x78

.field private static final MAX_MASK:I = 0x7f

.field private static final MAX_UNIT_COUNT:I = 0x14

.field private static final NUM_LEVELS:I = 0x64

.field private static final QUICK_DELAY:I = 0xa

.field private static final SLOW_DELAY:I = 0x1e

.field private static final TOUGH_MASK:I = 0x1c

.field private static final TYPE_MASK:I = 0x60

.field private static level_data:[I

.field private static level_idx:I

.field private static level_number:I

.field private static max_unit_count:I

.field private static num_paths:I

.field private static random:Ljava/util/Random;

.field private static starting_health:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addGroup(IIZ)V
    .locals 6
    .param p0, "type"    # I
    .param p1, "health"    # I
    .param p2, "first_group"    # Z

    .prologue
    const/16 v5, 0x14

    .line 110
    if-eqz p2, :cond_1

    const/16 v4, 0x78

    move v1, v4

    .line 112
    .local v1, "initial_delay":I
    :goto_0
    sget v4, Lcom/magicwach/rdefense/LevelDataGenerator;->level_idx:I

    if-nez v4, :cond_0

    .line 113
    const/16 v1, 0xf0

    .line 115
    :cond_0
    sget-object v4, Lcom/magicwach/rdefense/LevelDataGenerator;->random:Ljava/util/Random;

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v2, v4, 0xa

    .line 116
    .local v2, "inner_delay":I
    invoke-static {p1, p0}, Lcom/magicwach/rdefense/LevelDataGenerator;->getUnitCount(II)I

    move-result v0

    .line 117
    .local v0, "count":I
    sget v4, Lcom/magicwach/rdefense/LevelDataGenerator;->num_paths:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    sget-object v4, Lcom/magicwach/rdefense/LevelDataGenerator;->random:Ljava/util/Random;

    sget v5, Lcom/magicwach/rdefense/LevelDataGenerator;->num_paths:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    move v3, v4

    .line 118
    .local v3, "path_num":I
    :goto_1
    shl-int/lit8 v4, v2, 0x18

    shl-int/lit8 v5, v1, 0xf

    or-int/2addr v4, v5

    shl-int/lit8 v5, p0, 0xa

    or-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0x3

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    invoke-static {v4}, Lcom/magicwach/rdefense/LevelDataGenerator;->appendIntToLevel(I)V

    .line 123
    return-void

    .line 110
    .end local v1    # "initial_delay":I
    .end local v2    # "inner_delay":I
    .end local v0    # "count":I
    .end local v3    # "path_num":I
    :cond_1
    sget-object v4, Lcom/magicwach/rdefense/LevelDataGenerator;->random:Ljava/util/Random;

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    move v1, v4

    goto :goto_0

    .line 117
    .restart local v0    # "count":I
    .restart local v1    # "initial_delay":I
    .restart local v2    # "inner_delay":I
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    goto :goto_1
.end method

.method private static adjustHealth(I)I
    .locals 6
    .param p0, "health"    # I

    .prologue
    const/4 v5, 0x1

    .line 146
    sget-object v3, Lcom/magicwach/rdefense/LevelDataGenerator;->random:Ljava/util/Random;

    const v4, 0xffffff

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 147
    .local v2, "number":I
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v5, :cond_0

    move v0, v5

    .line 148
    .local v0, "increase":Z
    :goto_0
    shr-int/lit8 v2, v2, 0x1

    .line 149
    mul-int/lit8 v3, p0, 0xa

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v1, v3, 0x1

    .line 150
    .local v1, "max_swing":I
    if-eqz v0, :cond_1

    rem-int v3, v2, v1

    add-int/2addr v3, p0

    move p0, v3

    .line 152
    :goto_1
    return p0

    .line 147
    .end local v0    # "increase":Z
    .end local v1    # "max_swing":I
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 150
    .restart local v0    # "increase":Z
    .restart local v1    # "max_swing":I
    :cond_1
    rem-int v3, v2, v1

    sub-int v3, p0, v3

    move p0, v3

    goto :goto_1
.end method

.method private static appendIntToLevel(I)V
    .locals 4
    .param p0, "val"    # I

    .prologue
    const/4 v3, 0x0

    .line 155
    sget v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_idx:I

    sget-object v2, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 156
    sget-object v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 157
    .local v0, "new_data":[I
    sget-object v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    sget-object v2, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    sput-object v0, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    .line 160
    .end local v0    # "new_data":[I
    :cond_0
    sget-object v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    sget v2, Lcom/magicwach/rdefense/LevelDataGenerator;->level_idx:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/magicwach/rdefense/LevelDataGenerator;->level_idx:I

    aput p0, v1, v2

    .line 161
    return-void
.end method

.method private static createLevel(I)V
    .locals 4
    .param p0, "health"    # I

    .prologue
    .line 37
    sget v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_idx:I

    .line 38
    .local v1, "level_idx_save":I
    sget-object v2, Lcom/magicwach/rdefense/LevelDataGenerator;->random:Ljava/util/Random;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 40
    .local v0, "features":I
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/magicwach/rdefense/LevelDataGenerator;->tryCreateLevel(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    return-void

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    sput v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_idx:I

    .line 45
    const/16 v2, 0xfe

    if-le v0, v2, :cond_0

    .line 46
    mul-int/lit8 v2, p0, 0x9

    div-int/lit8 p0, v2, 0xa

    .line 47
    sget v2, Lcom/magicwach/rdefense/LevelDataGenerator;->starting_health:I

    if-ge p0, v2, :cond_2

    .line 48
    sget p0, Lcom/magicwach/rdefense/LevelDataGenerator;->starting_health:I

    .line 50
    .restart local p0    # "health":I
    :cond_2
    sget v2, Lcom/magicwach/rdefense/LevelDataGenerator;->max_unit_count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/magicwach/rdefense/LevelDataGenerator;->max_unit_count:I

    goto :goto_0
.end method

.method public static generate(III)[I
    .locals 8
    .param p0, "seed"    # I
    .param p1, "difficulty_level"    # I
    .param p2, "num_paths"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 18
    new-instance v3, Ljava/util/Random;

    int-to-long v4, p0

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    sput-object v3, Lcom/magicwach/rdefense/LevelDataGenerator;->random:Ljava/util/Random;

    .line 19
    const/16 v3, 0x100

    new-array v3, v3, [I

    sput-object v3, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    .line 20
    sput v6, Lcom/magicwach/rdefense/LevelDataGenerator;->level_idx:I

    .line 21
    sput p2, Lcom/magicwach/rdefense/LevelDataGenerator;->num_paths:I

    .line 22
    const/16 v3, 0x14

    sput v3, Lcom/magicwach/rdefense/LevelDataGenerator;->max_unit_count:I

    .line 23
    sput v7, Lcom/magicwach/rdefense/LevelDataGenerator;->level_number:I

    .line 24
    invoke-static {v6, v7}, Lcom/magicwach/rdefense/EnemyData;->baseHealth(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v0, v3, 0x4

    sput v0, Lcom/magicwach/rdefense/LevelDataGenerator;->starting_health:I

    .line 25
    .local v0, "health":I
    sget v3, Lcom/magicwach/rdefense/LevelDataGenerator;->starting_health:I

    mul-int/lit8 v2, v3, 0x64

    .line 26
    .local v2, "health_vel":I
    mul-int/lit8 v3, p1, 0x14

    add-int/lit16 v1, v3, 0x82

    .line 27
    .local v1, "health_accel":I
    :goto_0
    sget v3, Lcom/magicwach/rdefense/LevelDataGenerator;->level_number:I

    const/16 v4, 0x64

    if-gt v3, v4, :cond_0

    .line 28
    invoke-static {v0}, Lcom/magicwach/rdefense/LevelDataGenerator;->adjustHealth(I)I

    move-result v3

    invoke-static {v3}, Lcom/magicwach/rdefense/LevelDataGenerator;->createLevel(I)V

    .line 29
    div-int/lit8 v3, v2, 0x64

    add-int/2addr v0, v3

    .line 30
    add-int/2addr v2, v1

    .line 27
    sget v3, Lcom/magicwach/rdefense/LevelDataGenerator;->level_number:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/magicwach/rdefense/LevelDataGenerator;->level_number:I

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/magicwach/rdefense/LevelDataGenerator;->trimLevelData()V

    .line 33
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 34
    sget-object v3, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    return-object v3
.end method

.method private static getUnitCount(II)I
    .locals 2
    .param p0, "health"    # I
    .param p1, "type"    # I

    .prologue
    .line 125
    sget v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_number:I

    invoke-static {p1, v1}, Lcom/magicwach/rdefense/EnemyData;->baseHealth(II)I

    move-result v0

    .line 126
    .local v0, "base_health":I
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, p0

    div-int/2addr v1, v0

    return v1
.end method

.method private static trimLevelData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    sget v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_idx:I

    new-array v0, v1, [I

    .line 164
    .local v0, "new_data":[I
    sget-object v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    sput-object v0, Lcom/magicwach/rdefense/LevelDataGenerator;->level_data:[I

    .line 166
    return-void
.end method

.method private static tryAddGroup(IZZZ)Z
    .locals 6
    .param p0, "health"    # I
    .param p1, "flying_allowed"    # Z
    .param p2, "ground_allowed"    # Z
    .param p3, "first_group"    # Z

    .prologue
    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, "type_num":I
    const/16 v1, 0x64

    .line 91
    .local v1, "max_type":I
    sget-object v4, Lcom/magicwach/rdefense/LevelDataGenerator;->random:Ljava/util/Random;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 92
    .local v0, "enemy_skip":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 93
    rem-int/lit8 v4, v3, 0xa

    invoke-static {v4, p0, p1, p2}, Lcom/magicwach/rdefense/LevelDataGenerator;->unitTypeValid(IIZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    if-gtz v0, :cond_2

    .line 103
    :cond_0
    if-ge v3, v1, :cond_4

    const/4 v4, 0x1

    move v2, v4

    .line 104
    .local v2, "ok":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 105
    rem-int/lit8 v4, v3, 0xa

    invoke-static {v4, p0, p3}, Lcom/magicwach/rdefense/LevelDataGenerator;->addGroup(IIZ)V

    .line 107
    :cond_1
    return v2

    .line 98
    .end local v2    # "ok":Z
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 101
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_4
    const/4 v4, 0x0

    move v2, v4

    goto :goto_1
.end method

.method private static tryCreateLevel(II)Z
    .locals 9
    .param p0, "health"    # I
    .param p1, "features"    # I

    .prologue
    .line 56
    const/4 v6, 0x1

    .line 57
    .local v6, "ok":Z
    const/4 v1, 0x0

    .line 58
    .local v1, "flying_allowed":Z
    const/4 v2, 0x1

    .line 59
    .local v2, "ground_allowed":Z
    const/4 v0, 0x1

    .line 60
    .local v0, "first_group":Z
    and-int/lit8 v7, p1, 0x3

    add-int/lit8 v5, v7, 0x1

    .line 61
    .local v5, "num_groups":I
    div-int v4, p0, v5

    .line 62
    .local v4, "health_per_group":I
    and-int/lit8 v7, p1, 0x1c

    if-nez v7, :cond_0

    .line 63
    mul-int/lit8 v7, p0, 0x19

    div-int/lit8 v7, v7, 0x64

    add-int/2addr p0, v7

    .line 65
    :cond_0
    and-int/lit8 v7, p1, 0x60

    if-nez v7, :cond_5

    .line 66
    const/4 v1, 0x1

    .line 67
    const/4 v2, 0x1

    .line 71
    :cond_1
    :goto_0
    sget v7, Lcom/magicwach/rdefense/LevelDataGenerator;->starting_health:I

    if-ge v4, v7, :cond_2

    .line 72
    const/4 v6, 0x0

    .line 74
    :cond_2
    const/4 v3, 0x0

    .local v3, "group_idx":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 75
    invoke-static {v4, v1, v2, v0}, Lcom/magicwach/rdefense/LevelDataGenerator;->tryAddGroup(IZZZ)Z

    move-result v7

    if-nez v7, :cond_6

    .line 77
    const/4 v6, 0x0

    .line 82
    :cond_3
    if-eqz v6, :cond_4

    .line 83
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/magicwach/rdefense/LevelDataGenerator;->appendIntToLevel(I)V

    .line 85
    :cond_4
    return v6

    .line 68
    .end local v3    # "group_idx":I
    :cond_5
    and-int/lit8 v7, p1, 0x60

    const/16 v8, 0x60

    if-ne v7, v8, :cond_1

    .line 69
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    .restart local v3    # "group_idx":I
    :cond_6
    const/4 v0, 0x0

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static unitTypeValid(IIZZ)Z
    .locals 4
    .param p0, "type"    # I
    .param p1, "health"    # I
    .param p2, "flying_allowed"    # Z
    .param p3, "ground_allowed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 130
    sget v1, Lcom/magicwach/rdefense/LevelDataGenerator;->level_number:I

    invoke-static {p0}, Lcom/magicwach/rdefense/EnemyData;->firstLevel(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    move v1, v3

    .line 143
    :goto_0
    return v1

    .line 133
    :cond_0
    invoke-static {p1, p0}, Lcom/magicwach/rdefense/LevelDataGenerator;->getUnitCount(II)I

    move-result v0

    .line 134
    .local v0, "unit_count":I
    if-eqz v0, :cond_1

    sget v1, Lcom/magicwach/rdefense/LevelDataGenerator;->max_unit_count:I

    if-le v0, v1, :cond_2

    :cond_1
    move v1, v3

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p0}, Lcom/magicwach/rdefense/EnemyData;->isFlyer(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 138
    goto :goto_0

    .line 140
    :cond_3
    if-nez p3, :cond_4

    invoke-static {p0}, Lcom/magicwach/rdefense/EnemyData;->isFlyer(I)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    .line 141
    goto :goto_0

    .line 143
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method
