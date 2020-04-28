.class public final Lcom/magicwach/rdefense/MovementGrid;
.super Ljava/lang/Object;
.source "MovementGrid.java"


# instance fields
.field private cached_tower_result:Z

.field private cached_tower_x:I

.field private cached_tower_y:I

.field private end_idx:I

.field private endx:I

.field private endy:I

.field private grid:[B

.field private gridh:I

.field private gridw:I

.field private level_data:Lcom/magicwach/rdefense/LevelData;

.field private next_idx:I

.field private pending_nodes:[I

.field private startx:I

.field private starty:I

.field private trial_grid:[B


# direct methods
.method public constructor <init>(Lcom/magicwach/rdefense/LevelData;I)V
    .locals 4
    .param p1, "level_data"    # Lcom/magicwach/rdefense/LevelData;
    .param p2, "path_num"    # I

    .prologue
    const/4 v3, -0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/magicwach/rdefense/MovementGrid;->level_data:Lcom/magicwach/rdefense/LevelData;

    .line 7
    invoke-virtual {p1}, Lcom/magicwach/rdefense/LevelData;->getGridWidth()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    .line 8
    invoke-virtual {p1}, Lcom/magicwach/rdefense/LevelData;->getGridHeight()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridh:I

    .line 9
    invoke-virtual {p1, p2}, Lcom/magicwach/rdefense/LevelData;->getStartX(I)I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    .line 10
    invoke-virtual {p1, p2}, Lcom/magicwach/rdefense/LevelData;->getStartY(I)I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/MovementGrid;->starty:I

    .line 11
    invoke-virtual {p1, p2}, Lcom/magicwach/rdefense/LevelData;->getEndX(I)I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    .line 12
    invoke-virtual {p1, p2}, Lcom/magicwach/rdefense/LevelData;->getEndY(I)I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    .line 13
    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    iget v2, p0, Lcom/magicwach/rdefense/MovementGrid;->gridh:I

    mul-int v0, v1, v2

    .line 14
    .local v0, "grid_size":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    .line 15
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    .line 16
    iput v3, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_x:I

    .line 17
    iput v3, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_y:I

    .line 18
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    .line 19
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/MovementGrid;->calcPaths(Lcom/magicwach/rdefense/GameTower;)V

    .line 20
    return-void
.end method

.method private addObstacle(I)Z
    .locals 10
    .param p1, "position"    # I

    .prologue
    .line 132
    shr-int/lit8 v7, p1, 0x18

    and-int/lit16 v1, v7, 0xff

    .line 133
    .local v1, "startx":I
    shr-int/lit8 v7, p1, 0x10

    and-int/lit16 v5, v7, 0xff

    .line 134
    .local v5, "y":I
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 135
    .local v2, "w":I
    and-int/lit16 v0, p1, 0xff

    .line 136
    .local v0, "h":I
    add-int v4, v1, v2

    .line 137
    .local v4, "x2":I
    add-int v6, v5, v0

    .line 138
    .local v6, "y2":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 139
    move v3, v1

    .local v3, "x":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 140
    iget-object v7, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v8, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v3

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    .line 141
    iget-object v7, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v8, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v3

    const/4 v9, 0x6

    aput-byte v9, v7, v8

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 143
    :cond_0
    const/4 v7, 0x0

    .line 147
    .end local v3    # "x":I
    :goto_2
    return v7

    .line 138
    .restart local v3    # "x":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "x":I
    :cond_2
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private findPathGreedy(Z)Z
    .locals 8
    .param p1, "iterate_all"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 150
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    add-int/2addr v4, v5

    aput-byte v6, v3, v4

    .line 153
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    if-nez v3, :cond_0

    .line 154
    const/4 v1, 0x1

    .line 155
    .local v1, "x":I
    iget v2, p0, Lcom/magicwach/rdefense/MovementGrid;->starty:I

    .line 166
    .local v2, "y":I
    :goto_0
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_3

    move v3, v6

    .line 204
    :goto_1
    return v3

    .line 156
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    sub-int/2addr v4, v7

    if-ne v3, v4, :cond_1

    .line 157
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    sub-int v1, v3, v7

    .line 158
    .restart local v1    # "x":I
    iget v2, p0, Lcom/magicwach/rdefense/MovementGrid;->starty:I

    .restart local v2    # "y":I
    goto :goto_0

    .line 159
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->starty:I

    if-nez v3, :cond_2

    .line 160
    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    .line 161
    .restart local v1    # "x":I
    const/4 v2, 0x1

    .restart local v2    # "y":I
    goto :goto_0

    .line 163
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    .line 164
    .restart local v1    # "x":I
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->starty:I

    sub-int v2, v3, v7

    .restart local v2    # "y":I
    goto :goto_0

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v5, v2

    aput v5, v3, v4

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "success":Z
    :cond_4
    :goto_2
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    if-lez v3, :cond_5

    .line 172
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    aget v3, v3, v4

    shr-int/lit8 v1, v3, 0x10

    .line 173
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    aget v3, v3, v4

    const v4, 0xffff

    and-int v2, v3, v4

    .line 174
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aput-byte v7, v3, v4

    .line 175
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    if-ne v1, v3, :cond_6

    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    if-ne v2, v3, :cond_6

    .line 176
    const/4 v0, 0x1

    .line 177
    if-nez p1, :cond_4

    :cond_5
    move v3, v0

    .line 204
    goto :goto_1

    .line 181
    :cond_6
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    if-ge v1, v3, :cond_a

    .line 182
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    sub-int v5, v1, v7

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    sub-int v5, v1, v7

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v2

    aput v5, v3, v4

    .line 183
    :cond_7
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    sub-int v4, v2, v7

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v5, v1, 0x10

    sub-int v6, v2, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 184
    :cond_8
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v2, 0x1

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 185
    :cond_9
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v1, 0x1

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v2

    aput v5, v3, v4

    goto/16 :goto_2

    .line 186
    :cond_a
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    if-le v1, v3, :cond_e

    .line 187
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v1, 0x1

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v2

    aput v5, v3, v4

    .line 188
    :cond_b
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    sub-int v4, v2, v7

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v5, v1, 0x10

    sub-int v6, v2, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 189
    :cond_c
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v2, 0x1

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 190
    :cond_d
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    sub-int v5, v1, v7

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    sub-int v5, v1, v7

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v2

    aput v5, v3, v4

    goto/16 :goto_2

    .line 191
    :cond_e
    iget v3, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    if-ge v2, v3, :cond_12

    .line 192
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    sub-int v4, v2, v7

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v5, v1, 0x10

    sub-int v6, v2, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 193
    :cond_f
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    sub-int v5, v1, v7

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    sub-int v5, v1, v7

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v2

    aput v5, v3, v4

    .line 194
    :cond_10
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v1, 0x1

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v2

    aput v5, v3, v4

    .line 195
    :cond_11
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v2, 0x1

    or-int/2addr v5, v6

    aput v5, v3, v4

    goto/16 :goto_2

    .line 197
    :cond_12
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v2, 0x1

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 198
    :cond_13
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    sub-int v5, v1, v7

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    sub-int v5, v1, v7

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v2

    aput v5, v3, v4

    .line 199
    :cond_14
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v2

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v1, 0x1

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v2

    aput v5, v3, v4

    .line 200
    :cond_15
    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    sub-int v4, v2, v7

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v5, v1, 0x10

    sub-int v6, v2, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    goto/16 :goto_2
.end method

.method private initGrid([BLcom/magicwach/rdefense/GameTower;)Z
    .locals 11
    .param p1, "active_grid"    # [B
    .param p2, "tower_list"    # Lcom/magicwach/rdefense/GameTower;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 207
    const/4 v2, 0x1

    .line 210
    .local v2, "success":Z
    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    iget v7, p0, Lcom/magicwach/rdefense/MovementGrid;->gridh:I

    sub-int/2addr v7, v10

    mul-int v1, v6, v7

    .line 211
    .local v1, "offset":I
    invoke-static {p1, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 212
    iput v9, p0, Lcom/magicwach/rdefense/MovementGrid;->next_idx:I

    .line 213
    iput v9, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    .line 214
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    if-ge v4, v6, :cond_0

    .line 215
    aput-byte v8, p1, v4

    .line 216
    add-int v6, v1, v4

    aput-byte v8, p1, v6

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    sub-int v1, v6, v10

    .line 219
    const/4 v5, 0x1

    .local v5, "y":I
    :goto_1
    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->gridh:I

    if-ge v5, v6, :cond_1

    .line 220
    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v6, v5

    aput-byte v8, p1, v6

    .line 221
    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v1

    aput-byte v8, p1, v6

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 223
    :cond_1
    move-object v3, p2

    .line 224
    .local v3, "tower":Lcom/magicwach/rdefense/GameTower;
    :goto_2
    if-eqz v3, :cond_3

    .line 225
    invoke-virtual {v3}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v6

    invoke-static {v6}, Lcom/magicwach/rdefense/TowerData;->isBlocking(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 226
    invoke-virtual {v3}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v6

    iget v7, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v6, v7

    invoke-virtual {v3}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x5

    aput-byte v7, p1, v6

    .line 224
    :cond_2
    iget-object v3, v3, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    goto :goto_2

    .line 230
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v6, p0, Lcom/magicwach/rdefense/MovementGrid;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v6}, Lcom/magicwach/rdefense/LevelData;->getObstacleCount()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 231
    invoke-direct {p0, p1, v0}, Lcom/magicwach/rdefense/MovementGrid;->initObstacle([BI)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 233
    :cond_4
    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    iget v7, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    add-int/2addr v6, v7

    const/4 v7, 0x7

    aput-byte v7, p1, v6

    .line 234
    return v2
.end method

.method private initObstacle([BI)V
    .locals 8
    .param p1, "active_grid"    # [B
    .param p2, "idx"    # I

    .prologue
    .line 237
    iget-object v6, p0, Lcom/magicwach/rdefense/MovementGrid;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v6, p2}, Lcom/magicwach/rdefense/LevelData;->getObstacleX(I)I

    move-result v1

    .line 238
    .local v1, "x1":I
    iget-object v6, p0, Lcom/magicwach/rdefense/MovementGrid;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v6, p2}, Lcom/magicwach/rdefense/LevelData;->getObstacleY(I)I

    move-result v4

    .line 239
    .local v4, "y1":I
    iget-object v6, p0, Lcom/magicwach/rdefense/MovementGrid;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v6, p2}, Lcom/magicwach/rdefense/LevelData;->getObstacleWidth(I)I

    move-result v6

    add-int v2, v1, v6

    .line 240
    .local v2, "x2":I
    iget-object v6, p0, Lcom/magicwach/rdefense/MovementGrid;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v6, p2}, Lcom/magicwach/rdefense/LevelData;->getObstacleHeight(I)I

    move-result v6

    add-int v5, v4, v6

    .line 241
    .local v5, "y2":I
    move v3, v4

    .local v3, "y":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 242
    move v0, v1

    .local v0, "x":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 243
    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    const/4 v7, 0x6

    aput-byte v7, p1, v6

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "x":I
    :cond_1
    return-void
.end method

.method private pushPendingNodes(II)V
    .locals 3
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I

    .prologue
    .line 252
    add-int/lit8 p2, p2, -0x1

    .line 253
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    .line 255
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v2, p2

    aput v2, v0, v1

    .line 257
    :cond_0
    add-int/lit8 p2, p2, 0x2

    .line 258
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 260
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v2, p2

    aput v2, v0, v1

    .line 262
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 263
    add-int/lit8 p2, p2, -0x1

    .line 264
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 266
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v2, p2

    aput v2, v0, v1

    .line 268
    :cond_2
    add-int/lit8 p1, p1, 0x2

    .line 269
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 271
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v2, p2

    aput v2, v0, v1

    .line 273
    :cond_3
    return-void
.end method

.method private searchGreedy(Lcom/magicwach/rdefense/GameTower;IIZZ)Z
    .locals 4
    .param p1, "tower_list"    # Lcom/magicwach/rdefense/GameTower;
    .param p2, "tower_x"    # I
    .param p3, "tower_y"    # I
    .param p4, "blocking_tower"    # Z
    .param p5, "iterate_all"    # Z

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    invoke-direct {p0, v1, p1}, Lcom/magicwach/rdefense/MovementGrid;->initGrid([BLcom/magicwach/rdefense/GameTower;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 128
    :goto_0
    return v1

    .line 113
    :cond_0
    const/4 v1, -0x1

    if-le p2, v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v2, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v2, p3

    add-int/2addr v2, p2

    aget-byte v1, v1, v2

    if-eqz v1, :cond_1

    move v1, v3

    .line 115
    goto :goto_0

    .line 117
    :cond_1
    move-object v0, p1

    .local v0, "t":Lcom/magicwach/rdefense/GameTower;
    :goto_1
    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v1

    if-ne v1, p2, :cond_2

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v1

    if-ne v1, p3, :cond_2

    move v1, v3

    .line 119
    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, v0, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    goto :goto_1

    .line 124
    .end local v0    # "t":Lcom/magicwach/rdefense/GameTower;
    :cond_3
    if-eqz p4, :cond_4

    .line 125
    iget-object v1, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    iget v2, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v2, p3

    add-int/2addr v2, p2

    const/4 v3, 0x5

    aput-byte v3, v1, v2

    .line 126
    invoke-direct {p0, p5}, Lcom/magicwach/rdefense/MovementGrid;->findPathGreedy(Z)Z

    move-result v1

    goto :goto_0

    .line 128
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startPendingNodes(III)V
    .locals 3
    .param p1, "xpos"    # I
    .param p2, "ypos"    # I
    .param p3, "dir"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/magicwach/rdefense/MovementGrid;->pushPendingNodes(II)V

    .line 250
    return-void
.end method


# virtual methods
.method public calcPaths(Lcom/magicwach/rdefense/GameTower;)V
    .locals 11
    .param p1, "tower_list"    # Lcom/magicwach/rdefense/GameTower;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v4, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 64
    iput v4, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_x:I

    .line 65
    iput v4, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_y:I

    .line 68
    iget-object v4, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    invoke-direct {p0, v4, p1}, Lcom/magicwach/rdefense/MovementGrid;->initGrid([BLcom/magicwach/rdefense/GameTower;)Z

    .line 69
    iget-object v4, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->starty:I

    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 70
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    if-nez v4, :cond_0

    .line 71
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    invoke-direct {p0, v7, v4, v9}, Lcom/magicwach/rdefense/MovementGrid;->startPendingNodes(III)V

    .line 84
    :goto_0
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->next_idx:I

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->end_idx:I

    if-ge v4, v5, :cond_8

    .line 85
    iget-object v4, p0, Lcom/magicwach/rdefense/MovementGrid;->pending_nodes:[I

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->next_idx:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/magicwach/rdefense/MovementGrid;->next_idx:I

    aget v1, v4, v5

    .line 86
    .local v1, "pending":I
    shr-int/lit8 v2, v1, 0x10

    .line 87
    .local v2, "x":I
    const v4, 0xffff

    and-int v3, v1, v4

    .line 88
    .local v3, "y":I
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    if-ne v2, v4, :cond_7

    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->starty:I

    if-ne v3, v4, :cond_7

    .line 90
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    if-nez v4, :cond_4

    .line 91
    const/4 v0, 0x1

    .line 99
    .local v0, "dir":B
    :goto_1
    iget-object v4, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    aput-byte v0, v4, v5

    goto :goto_0

    .line 72
    .end local v1    # "pending":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v0    # "dir":B
    :cond_0
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    sub-int/2addr v5, v7

    if-ne v4, v5, :cond_1

    .line 73
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    sub-int/2addr v4, v8

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    invoke-direct {p0, v4, v5, v7}, Lcom/magicwach/rdefense/MovementGrid;->startPendingNodes(III)V

    goto :goto_0

    .line 74
    :cond_1
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    if-nez v4, :cond_2

    .line 75
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    invoke-direct {p0, v4, v7, v8}, Lcom/magicwach/rdefense/MovementGrid;->startPendingNodes(III)V

    goto :goto_0

    .line 76
    :cond_2
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridh:I

    sub-int/2addr v5, v7

    if-ne v4, v5, :cond_3

    .line 77
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridh:I

    sub-int/2addr v5, v8

    invoke-direct {p0, v4, v5, v10}, Lcom/magicwach/rdefense/MovementGrid;->startPendingNodes(III)V

    goto :goto_0

    .line 79
    :cond_3
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    invoke-direct {p0, v4, v5, v9}, Lcom/magicwach/rdefense/MovementGrid;->startPendingNodes(III)V

    .line 80
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    sub-int/2addr v4, v7

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    invoke-direct {p0, v4, v5, v7}, Lcom/magicwach/rdefense/MovementGrid;->startPendingNodes(III)V

    .line 81
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    sub-int/2addr v5, v7

    invoke-direct {p0, v4, v5, v10}, Lcom/magicwach/rdefense/MovementGrid;->startPendingNodes(III)V

    .line 82
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v4, v5, v8}, Lcom/magicwach/rdefense/MovementGrid;->startPendingNodes(III)V

    goto :goto_0

    .line 92
    .restart local v1    # "pending":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_4
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->startx:I

    iget v5, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    sub-int/2addr v5, v7

    if-ne v4, v5, :cond_5

    .line 93
    const/4 v0, 0x3

    .restart local v0    # "dir":B
    goto :goto_1

    .line 94
    .end local v0    # "dir":B
    :cond_5
    iget v4, p0, Lcom/magicwach/rdefense/MovementGrid;->starty:I

    if-nez v4, :cond_6

    .line 95
    const/4 v0, 0x4

    .restart local v0    # "dir":B
    goto :goto_1

    .line 97
    .end local v0    # "dir":B
    :cond_6
    const/4 v0, 0x2

    .restart local v0    # "dir":B
    goto :goto_1

    .line 101
    .end local v0    # "dir":B
    :cond_7
    invoke-direct {p0, v2, v3}, Lcom/magicwach/rdefense/MovementGrid;->pushPendingNodes(II)V

    goto/16 :goto_0

    .line 104
    .end local v1    # "pending":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_8
    return-void
.end method

.method public checkObstacleLayout(Ljava/util/Vector;I)Z
    .locals 4
    .param p2, "new_position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "current_list":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/magicwach/rdefense/MovementGrid;->initGrid([BLcom/magicwach/rdefense/GameTower;)Z

    move-result v1

    .line 50
    .local v1, "ok":Z
    if-eqz v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/magicwach/rdefense/MovementGrid;->addObstacle(I)Z

    move-result v1

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    .line 56
    invoke-direct {p0, p2}, Lcom/magicwach/rdefense/MovementGrid;->addObstacle(I)Z

    move-result v1

    .line 58
    .restart local v1    # "ok":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 59
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/magicwach/rdefense/MovementGrid;->findPathGreedy(Z)Z

    move-result v1

    .line 61
    .restart local v1    # "ok":Z
    :cond_2
    return v1
.end method

.method public checkTowerPlacement(Lcom/magicwach/rdefense/GameTower;Lcom/magicwach/rdefense/Enemy;IIIZ)Z
    .locals 8
    .param p1, "tower_list"    # Lcom/magicwach/rdefense/GameTower;
    .param p2, "enemy_list"    # Lcom/magicwach/rdefense/Enemy;
    .param p3, "tower_x"    # I
    .param p4, "tower_y"    # I
    .param p5, "path_num"    # I
    .param p6, "blocking_tower"    # Z

    .prologue
    const/4 v7, 0x0

    .line 29
    iget v0, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_x:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_y:I

    if-ne p4, v0, :cond_0

    if-eqz p2, :cond_1

    .line 32
    :cond_0
    iput p3, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_x:I

    .line 33
    iput p4, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_y:I

    .line 34
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/magicwach/rdefense/MovementGrid;->searchGreedy(Lcom/magicwach/rdefense/GameTower;IIZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_result:Z

    .line 36
    iget-boolean v0, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_result:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 37
    move-object v6, p2

    .local v6, "e":Lcom/magicwach/rdefense/Enemy;
    :goto_1
    if-eqz v6, :cond_1

    .line 38
    invoke-virtual {v6}, Lcom/magicwach/rdefense/Enemy;->getPathNum()I

    move-result v0

    if-ne v0, p5, :cond_3

    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->trial_grid:[B

    invoke-virtual {v6}, Lcom/magicwach/rdefense/Enemy;->getGridY()I

    move-result v1

    iget v2, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, v2

    invoke-virtual {v6}, Lcom/magicwach/rdefense/Enemy;->getGridX()I

    move-result v2

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    if-nez v0, :cond_3

    .line 40
    iput-boolean v7, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_result:Z

    .line 46
    .end local v6    # "e":Lcom/magicwach/rdefense/Enemy;
    :cond_1
    iget-boolean v0, p0, Lcom/magicwach/rdefense/MovementGrid;->cached_tower_result:Z

    return v0

    :cond_2
    move v5, v7

    .line 34
    goto :goto_0

    .line 37
    .restart local v6    # "e":Lcom/magicwach/rdefense/Enemy;
    :cond_3
    iget-object v6, v6, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    .restart local v6    # "e":Lcom/magicwach/rdefense/Enemy;
    goto :goto_1
.end method

.method public getEndX()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/magicwach/rdefense/MovementGrid;->endx:I

    return v0
.end method

.method public getEndY()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/magicwach/rdefense/MovementGrid;->endy:I

    return v0
.end method

.method public getOrientation(II)I
    .locals 2
    .param p1, "gridx"    # I
    .param p2, "gridy"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/magicwach/rdefense/MovementGrid;->grid:[B

    iget v1, p0, Lcom/magicwach/rdefense/MovementGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method
