.class public final Lcom/magicwach/rdefense/MixerLevelGenerator;
.super Ljava/lang/Object;
.source "MixerLevelGenerator.java"


# static fields
.field private static final MAX_OBSTACLES:I = 0xa


# instance fields
.field private height:I

.field private num_start_paths:I

.field private rand:Ljava/util/Random;

.field private width:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "mixer_seed"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p2, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->width:I

    .line 9
    iput p3, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->height:I

    .line 10
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->num_start_paths:I

    .line 11
    new-instance v0, Ljava/util/Random;

    div-int/lit8 v1, p1, 0xa

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->rand:Ljava/util/Random;

    .line 12
    return-void
.end method

.method private createOneStartPath([II)I
    .locals 9
    .param p1, "path_start"    # [I
    .param p2, "idx"    # I

    .prologue
    const/4 v8, 0x2

    .line 131
    add-int/lit8 v2, p2, 0x1

    .line 132
    .local v2, "next_idx":I
    iget-object v6, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->rand:Ljava/util/Random;

    const v7, 0xffff

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 133
    .local v5, "wall_rand":I
    shr-int/lit8 v6, v5, 0x8

    and-int/lit8 v6, v6, 0x3

    add-int/lit8 v3, v6, 0x1

    .line 134
    .local v3, "wall_number":I
    and-int/lit16 v4, v5, 0xff

    .line 135
    .local v4, "wall_offset":I
    shl-int/lit8 v6, v3, 0x8

    invoke-direct {p0, v6}, Lcom/magicwach/rdefense/MixerLevelGenerator;->isHorizontal(I)Z

    move-result v1

    .line 136
    .local v1, "is_horizontal":Z
    if-eqz v1, :cond_2

    .line 137
    iget v6, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->height:I

    sub-int/2addr v6, v8

    rem-int v6, v4, v6

    add-int/lit8 v4, v6, 0x1

    .line 141
    :goto_0
    const/4 v0, 0x0

    .line 142
    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_0

    .line 143
    aget v6, p1, v0

    invoke-direct {p0, v6}, Lcom/magicwach/rdefense/MixerLevelGenerator;->isHorizontal(I)Z

    move-result v6

    if-ne v1, v6, :cond_3

    aget v6, p1, v0

    and-int/lit16 v6, v6, 0xff

    if-ne v4, v6, :cond_3

    .line 145
    move v2, p2

    .line 149
    :cond_0
    if-ne v0, p2, :cond_1

    .line 150
    shl-int/lit8 v6, v3, 0x8

    or-int/2addr v6, v4

    aput v6, p1, p2

    .line 152
    :cond_1
    return v2

    .line 139
    .end local v0    # "i":I
    :cond_2
    iget v6, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->width:I

    sub-int/2addr v6, v8

    rem-int v6, v4, v6

    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 142
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isHorizontal(I)Z
    .locals 5
    .param p1, "dir"    # I

    .prologue
    const v2, 0xff00

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    and-int v0, p1, v2

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    move v0, v4

    :goto_0
    and-int v1, p1, v2

    const/16 v2, 0x300

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method private makeEntrancePathUnderlay(II)Lcom/magicwach/rdefense/LevelOverlay;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const v0, 0x7f02002a

    .line 91
    .local v0, "image_id":I
    :goto_0
    new-instance v1, Lcom/magicwach/rdefense/LevelOverlay;

    mul-int/lit8 v2, p1, 0x28

    mul-int/lit8 v3, p2, 0x28

    invoke-direct {v1, v0, v2, v3}, Lcom/magicwach/rdefense/LevelOverlay;-><init>(III)V

    return-object v1

    .line 84
    .end local v0    # "image_id":I
    :cond_0
    if-nez p2, :cond_1

    .line 85
    const v0, 0x7f020028

    .restart local v0    # "image_id":I
    goto :goto_0

    .line 86
    .end local v0    # "image_id":I
    :cond_1
    iget v1, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->width:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_2

    .line 87
    const v0, 0x7f020027

    .restart local v0    # "image_id":I
    goto :goto_0

    .line 89
    .end local v0    # "image_id":I
    :cond_2
    const v0, 0x7f020029

    .restart local v0    # "image_id":I
    goto :goto_0
.end method

.method private makeExitPathUnderlay(II)Lcom/magicwach/rdefense/LevelOverlay;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const v0, 0x7f02002e

    .line 106
    .local v0, "image_id":I
    :goto_0
    new-instance v1, Lcom/magicwach/rdefense/LevelOverlay;

    mul-int/lit8 v2, p1, 0x28

    mul-int/lit8 v3, p2, 0x28

    invoke-direct {v1, v0, v2, v3}, Lcom/magicwach/rdefense/LevelOverlay;-><init>(III)V

    return-object v1

    .line 99
    .end local v0    # "image_id":I
    :cond_0
    if-nez p2, :cond_1

    .line 100
    const v0, 0x7f02002c

    .restart local v0    # "image_id":I
    goto :goto_0

    .line 101
    .end local v0    # "image_id":I
    :cond_1
    iget v1, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->width:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_2

    .line 102
    const v0, 0x7f02002b

    .restart local v0    # "image_id":I
    goto :goto_0

    .line 104
    .end local v0    # "image_id":I
    :cond_2
    const v0, 0x7f02002d

    .restart local v0    # "image_id":I
    goto :goto_0
.end method

.method private makeObstacleUnderlay(IIII)Lcom/magicwach/rdefense/LevelOverlay;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "image_id":I
    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v1, p4

    sparse-switch v1, :sswitch_data_0

    .line 123
    const v0, 0x7f020026

    .line 126
    :goto_0
    new-instance v1, Lcom/magicwach/rdefense/LevelOverlay;

    mul-int/lit8 v2, p1, 0x28

    mul-int/lit8 v3, p2, 0x28

    invoke-direct {v1, v0, v2, v3}, Lcom/magicwach/rdefense/LevelOverlay;-><init>(III)V

    return-object v1

    .line 114
    :sswitch_0
    const v0, 0x7f020023

    .line 115
    goto :goto_0

    .line 117
    :sswitch_1
    const v0, 0x7f020024

    .line 118
    goto :goto_0

    .line 120
    :sswitch_2
    const v0, 0x7f020025

    .line 121
    goto :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_1
        0x201 -> :sswitch_2
    .end sparse-switch
.end method

.method private tryCreateOneObstacle([Lcom/magicwach/rdefense/MovementGrid;Ljava/util/Vector;)V
    .locals 9
    .param p1, "grid"    # [Lcom/magicwach/rdefense/MovementGrid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/magicwach/rdefense/MovementGrid;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "current_list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v8, 0x2

    .line 159
    iget-object v6, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->rand:Ljava/util/Random;

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 160
    .local v3, "w":I
    iget-object v6, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->rand:Ljava/util/Random;

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 161
    .local v0, "h":I
    iget-object v6, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->rand:Ljava/util/Random;

    iget v7, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->width:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 162
    .local v4, "x":I
    iget-object v6, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->rand:Ljava/util/Random;

    iget v7, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->height:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v0

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 163
    .local v5, "y":I
    shl-int/lit8 v6, v4, 0x18

    shl-int/lit8 v7, v5, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v3, 0x8

    or-int/2addr v6, v7

    or-int v2, v6, v0

    .line 164
    .local v2, "new_code":I
    const/4 v1, 0x0

    .line 165
    .local v1, "idx":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_0

    .line 166
    aget-object v6, p1, v1

    invoke-virtual {v6, p2, v2}, Lcom/magicwach/rdefense/MovementGrid;->checkObstacleLayout(Ljava/util/Vector;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 170
    :cond_0
    array-length v6, p1

    if-ne v1, v6, :cond_1

    .line 171
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    return-void

    .line 165
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createEndPaths([I)[I
    .locals 6
    .param p1, "path_start"    # [I

    .prologue
    .line 22
    array-length v4, p1

    new-array v1, v4, [I

    .line 23
    .local v1, "path_end":[I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 24
    aget v4, p1, v0

    const v5, 0xff00

    and-int v2, v4, v5

    .line 25
    .local v2, "wall_number":I
    aget v4, p1, v0

    and-int/lit16 v3, v4, 0xff

    .line 26
    .local v3, "wall_offset":I
    sparse-switch v2, :sswitch_data_0

    .line 37
    or-int/lit16 v4, v3, 0x200

    aput v4, v1, v0

    .line 23
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :sswitch_0
    or-int/lit16 v4, v3, 0x300

    aput v4, v1, v0

    goto :goto_1

    .line 31
    :sswitch_1
    or-int/lit16 v4, v3, 0x400

    aput v4, v1, v0

    goto :goto_1

    .line 34
    :sswitch_2
    or-int/lit16 v4, v3, 0x100

    aput v4, v1, v0

    goto :goto_1

    .line 41
    .end local v2    # "wall_number":I
    .end local v3    # "wall_offset":I
    :cond_0
    return-object v1

    .line 26
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x300 -> :sswitch_2
    .end sparse-switch
.end method

.method public createObstacles(Lcom/magicwach/rdefense/LevelData;)[I
    .locals 9
    .param p1, "level_data"    # Lcom/magicwach/rdefense/LevelData;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/magicwach/rdefense/LevelData;->getPathCount()I

    move-result v7

    new-array v0, v7, [Lcom/magicwach/rdefense/MovementGrid;

    .line 45
    .local v0, "grid":[Lcom/magicwach/rdefense/MovementGrid;
    const/4 v1, 0x0

    .local v1, "grid_idx":I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_0

    .line 46
    new-instance v7, Lcom/magicwach/rdefense/MovementGrid;

    invoke-direct {v7, p1, v1}, Lcom/magicwach/rdefense/MovementGrid;-><init>(Lcom/magicwach/rdefense/LevelData;I)V

    aput-object v7, v0, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iget-object v7, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->rand:Ljava/util/Random;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 49
    .local v4, "max_count":I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 50
    .local v6, "path_obstacles":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 51
    invoke-direct {p0, v0, v6}, Lcom/magicwach/rdefense/MixerLevelGenerator;->tryCreateOneObstacle([Lcom/magicwach/rdefense/MovementGrid;Ljava/util/Vector;)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_1
    const/4 v5, 0x0

    .line 54
    .local v5, "path_array":[I
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 55
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 56
    const/4 v3, 0x0

    .end local p0    # "this":Lcom/magicwach/rdefense/MixerLevelGenerator;
    .local v3, "idx":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 57
    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 60
    .end local v3    # "idx":I
    :cond_2
    return-object v5
.end method

.method public createStartPaths()[I
    .locals 3

    .prologue
    .line 14
    iget v2, p0, Lcom/magicwach/rdefense/MixerLevelGenerator;->num_start_paths:I

    new-array v1, v2, [I

    .line 15
    .local v1, "path_start":[I
    const/4 v0, 0x0

    .line 16
    .local v0, "created":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 17
    invoke-direct {p0, v1, v0}, Lcom/magicwach/rdefense/MixerLevelGenerator;->createOneStartPath([II)I

    move-result v0

    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method

.method public createUnderlays(Lcom/magicwach/rdefense/LevelData;)[Lcom/magicwach/rdefense/LevelOverlay;
    .locals 9
    .param p1, "level_data"    # Lcom/magicwach/rdefense/LevelData;

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/magicwach/rdefense/LevelData;->getPathCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {p1}, Lcom/magicwach/rdefense/LevelData;->getObstacleCount()I

    move-result v6

    add-int/2addr v5, v6

    new-array v4, v5, [Lcom/magicwach/rdefense/LevelOverlay;

    .line 65
    .local v4, "overlays":[Lcom/magicwach/rdefense/LevelOverlay;
    const/4 v2, 0x0

    .line 66
    .local v2, "overlay_idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/magicwach/rdefense/LevelData;->getPathCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 67
    add-int/lit8 v3, v2, 0x1

    .local v3, "overlay_idx":I
    invoke-virtual {p1, v0}, Lcom/magicwach/rdefense/LevelData;->getStartX(I)I

    .end local v2    # "overlay_idx":I
    move-result v5

    invoke-virtual {p1, v0}, Lcom/magicwach/rdefense/LevelData;->getStartY(I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/magicwach/rdefense/MixerLevelGenerator;->makeEntrancePathUnderlay(II)Lcom/magicwach/rdefense/LevelOverlay;

    move-result-object v5

    aput-object v5, v4, v2

    .line 69
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "overlay_idx":I
    invoke-virtual {p1, v0}, Lcom/magicwach/rdefense/LevelData;->getEndX(I)I

    .end local v3    # "overlay_idx":I
    move-result v5

    invoke-virtual {p1, v0}, Lcom/magicwach/rdefense/LevelData;->getEndY(I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/magicwach/rdefense/MixerLevelGenerator;->makeExitPathUnderlay(II)Lcom/magicwach/rdefense/LevelOverlay;

    move-result-object v5

    aput-object v5, v4, v3

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {p1}, Lcom/magicwach/rdefense/LevelData;->getObstacleCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 73
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "overlay_idx":I
    invoke-virtual {p1, v1}, Lcom/magicwach/rdefense/LevelData;->getObstacleX(I)I

    .end local v2    # "overlay_idx":I
    move-result v5

    invoke-virtual {p1, v1}, Lcom/magicwach/rdefense/LevelData;->getObstacleY(I)I

    move-result v6

    invoke-virtual {p1, v1}, Lcom/magicwach/rdefense/LevelData;->getObstacleWidth(I)I

    move-result v7

    invoke-virtual {p1, v1}, Lcom/magicwach/rdefense/LevelData;->getObstacleHeight(I)I

    move-result v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/magicwach/rdefense/MixerLevelGenerator;->makeObstacleUnderlay(IIII)Lcom/magicwach/rdefense/LevelOverlay;

    move-result-object v5

    aput-object v5, v4, v2

    .line 72
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .restart local v2    # "overlay_idx":I
    goto :goto_1

    .line 78
    .end local v3    # "overlay_idx":I
    :cond_1
    return-object v4
.end method
