.class Lcom/magicwach/rdefense/Enemy;
.super Lcom/magicwach/rdefense/GridObject;
.source "Enemy.java"


# instance fields
.field at_exit:Z

.field private death_frame:I

.field exiting_grid:Z

.field fire_counter:I

.field public grid_next:Lcom/magicwach/rdefense/Enemy;

.field health:I

.field max_health:I

.field public next:Lcom/magicwach/rdefense/Enemy;

.field protected orientation:I

.field path_num:I

.field slow_counter:I

.field protected x_offset:I

.field protected y_offset:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/magicwach/rdefense/GridObject;-><init>()V

    return-void
.end method

.method private getReverseOrientation(I)I
    .locals 1
    .param p1, "or"    # I

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_0

    .line 213
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 207
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 211
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private move(Lcom/magicwach/rdefense/MovementGrid;II)V
    .locals 1
    .param p1, "movement_grid"    # Lcom/magicwach/rdefense/MovementGrid;
    .param p2, "gridx"    # I
    .param p3, "gridy"    # I

    .prologue
    .line 221
    iput p2, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    .line 222
    iput p3, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    .line 224
    return-void
.end method

.method private reverseOrientation()V
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/Enemy;->getReverseOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    .line 218
    iget-boolean v0, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    .line 219
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOrientation(Lcom/magicwach/rdefense/MovementGrid;)V
    .locals 4
    .param p1, "movement_grid"    # Lcom/magicwach/rdefense/MovementGrid;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->type:I

    invoke-static {v0}, Lcom/magicwach/rdefense/EnemyData;->isFlyer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    invoke-virtual {p1, v0, v1}, Lcom/magicwach/rdefense/MovementGrid;->getOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    .line 229
    :cond_0
    iput-boolean v3, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    .line 230
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    if-ne v0, v3, :cond_2

    .line 231
    :cond_1
    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    .line 235
    :goto_0
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    invoke-virtual {p1}, Lcom/magicwach/rdefense/MovementGrid;->getEndX()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    invoke-virtual {p1}, Lcom/magicwach/rdefense/MovementGrid;->getEndY()I

    move-result v1

    if-ne v0, v1, :cond_3

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/magicwach/rdefense/Enemy;->at_exit:Z

    .line 237
    return-void

    .line 233
    :cond_2
    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 235
    goto :goto_1
.end method


# virtual methods
.method public applyDamage(II)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "shot_type"    # I

    .prologue
    .line 122
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 123
    iput p1, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 125
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    .line 126
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    goto :goto_0

    .line 128
    :cond_2
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->type:I

    invoke-static {v0}, Lcom/magicwach/rdefense/EnemyData;->armor(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 129
    const/4 v0, 0x1

    if-gt p1, v0, :cond_3

    .line 130
    const/4 p1, 0x1

    .line 132
    :cond_3
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    .line 133
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    if-gez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    goto :goto_0
.end method

.method public atExit()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/magicwach/rdefense/Enemy;->at_exit:Z

    return v0
.end method

.method public calcPixelX()I
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    mul-int/lit8 v0, v0, 0x28

    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public calcPixelY()I
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    mul-int/lit8 v0, v0, 0x28

    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public checkOrientation(Lcom/magicwach/rdefense/MovementGrid;)V
    .locals 4
    .param p1, "movement_grid"    # Lcom/magicwach/rdefense/MovementGrid;

    .prologue
    .line 85
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->type:I

    invoke-static {v2}, Lcom/magicwach/rdefense/EnemyData;->isFlyer(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    invoke-virtual {p1, v2, v3}, Lcom/magicwach/rdefense/MovementGrid;->getOrientation(II)I

    move-result v0

    .line 87
    .local v0, "grid_orientation":I
    iget-boolean v2, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    if-eqz v2, :cond_1

    .line 88
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    if-eq v2, v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/magicwach/rdefense/Enemy;->reverseOrientation()V

    .line 98
    .end local v0    # "grid_orientation":I
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v0    # "grid_orientation":I
    :cond_1
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    invoke-direct {p0, v2}, Lcom/magicwach/rdefense/Enemy;->getReverseOrientation(I)I

    move-result v1

    .line 93
    .local v1, "reverse_orientation":I
    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/magicwach/rdefense/Enemy;->reverseOrientation()V

    goto :goto_0
.end method

.method public finished()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/magicwach/rdefense/Enemy;->at_exit:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeathFrame()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->death_frame:I

    return v0
.end method

.method public getFireCounter()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    return v0
.end method

.method public getHealth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    return v0
.end method

.method public getMaxHealth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->max_health:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    return v0
.end method

.method public getPathNum()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->path_num:I

    return v0
.end method

.method public getSlowCounter()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    return v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    return v0
.end method

.method public init(IIIIIII)V
    .locals 7
    .param p1, "gridx"    # I
    .param p2, "gridy"    # I
    .param p3, "orientation"    # I
    .param p4, "type"    # I
    .param p5, "first_state"    # I
    .param p6, "health"    # I
    .param p7, "path_num"    # I

    .prologue
    const/4 v6, 0x0

    .line 10
    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/magicwach/rdefense/Enemy;->init_base(IIIII)V

    .line 11
    iput p6, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    .line 12
    iput p6, p0, Lcom/magicwach/rdefense/Enemy;->max_health:I

    .line 13
    iput p7, p0, Lcom/magicwach/rdefense/Enemy;->path_num:I

    .line 14
    iput-boolean v6, p0, Lcom/magicwach/rdefense/Enemy;->at_exit:Z

    .line 15
    iput v6, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    .line 16
    iput v6, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/magicwach/rdefense/Enemy;->death_frame:I

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/magicwach/rdefense/Enemy;->teleportTo(III)V

    .line 19
    return-void
.end method

.method public loadState(Ljava/io/ObjectInputStream;Lcom/magicwach/rdefense/GameState;)Z
    .locals 6
    .param p1, "oin"    # Ljava/io/ObjectInputStream;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x140

    const/16 v4, -0x140

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/magicwach/rdefense/Enemy;->loadBaseState(Ljava/io/ObjectInputStream;Lcom/magicwach/rdefense/GameState;)Z

    move-result v1

    .line 160
    .local v1, "ok":Z
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v0

    .line 162
    .local v0, "level_data":Lcom/magicwach/rdefense/LevelData;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    .line 163
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->max_health:I

    .line 164
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->path_num:I

    .line 165
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    .line 166
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    .line 167
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    .line 168
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    .line 169
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/magicwach/rdefense/Enemy;->at_exit:Z

    .line 171
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    .line 172
    const/4 v2, -0x1

    iput v2, p0, Lcom/magicwach/rdefense/Enemy;->death_frame:I

    .line 173
    invoke-virtual {p0}, Lcom/magicwach/rdefense/Enemy;->getClassType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Data: unexpected class type for enemy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/magicwach/rdefense/Enemy;->getClassType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 175
    const/4 v1, 0x0

    .line 176
    :cond_0
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    if-gez v2, :cond_2

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Data: enemy health < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x0

    .line 202
    .end local v0    # "level_data":Lcom/magicwach/rdefense/LevelData;
    :cond_1
    :goto_0
    return v1

    .line 179
    .restart local v0    # "level_data":Lcom/magicwach/rdefense/LevelData;
    :cond_2
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->max_health:I

    if-le v2, v3, :cond_3

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Data: health > max_health: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    goto :goto_0

    .line 182
    :cond_3
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->max_health:I

    if-gez v2, :cond_4

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Data: max_health < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->max_health:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 184
    const/4 v1, 0x0

    goto :goto_0

    .line 185
    :cond_4
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->path_num:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->path_num:I

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getPathCount()I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 186
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Data: invalid path number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->path_num:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x0

    goto :goto_0

    .line 188
    :cond_6
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    if-gez v2, :cond_7

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Data: slow_counter < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 191
    :cond_7
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    if-gez v2, :cond_8

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Data: fire_counter < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 194
    :cond_8
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    if-lt v2, v4, :cond_9

    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    if-le v2, v5, :cond_a

    .line 195
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Data: invalid x-offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 197
    :cond_a
    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    if-lt v2, v4, :cond_b

    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    if-le v2, v5, :cond_1

    .line 198
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Data: invalid y-offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public nextState(Lcom/magicwach/rdefense/MovementGrid;I)Z
    .locals 6
    .param p1, "movement_grid"    # Lcom/magicwach/rdefense/MovementGrid;
    .param p2, "state_index"    # I

    .prologue
    const/16 v5, 0x140

    const/16 v4, 0xa0

    const/16 v2, -0xa0

    const/4 v3, 0x1

    .line 29
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->type:I

    invoke-static {v1}, Lcom/magicwach/rdefense/EnemyData;->speed(I)I

    move-result v0

    .line 30
    .local v0, "speed":I
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    if-lez v1, :cond_0

    .line 31
    shr-int/lit8 v0, v0, 0x1

    .line 32
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    .line 34
    :cond_0
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    if-lez v1, :cond_1

    .line 35
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    .line 36
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    .line 38
    :cond_1
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    if-lez v1, :cond_2

    .line 39
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 82
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/magicwach/rdefense/Enemy;->at_exit:Z

    return v1

    .line 41
    :pswitch_0
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    .line 42
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    if-lt v1, v4, :cond_3

    .line 43
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    .line 44
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    invoke-direct {p0, p1, v1, v2}, Lcom/magicwach/rdefense/Enemy;->move(Lcom/magicwach/rdefense/MovementGrid;II)V

    goto :goto_0

    .line 45
    :cond_3
    iget-boolean v1, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    if-ltz v1, :cond_2

    .line 47
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/Enemy;->setOrientation(Lcom/magicwach/rdefense/MovementGrid;)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    .line 52
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    if-gt v1, v2, :cond_4

    .line 53
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    add-int/lit16 v1, v1, 0x140

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    .line 54
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/magicwach/rdefense/Enemy;->move(Lcom/magicwach/rdefense/MovementGrid;II)V

    goto :goto_0

    .line 55
    :cond_4
    iget-boolean v1, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    if-gtz v1, :cond_2

    .line 57
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/Enemy;->setOrientation(Lcom/magicwach/rdefense/MovementGrid;)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    .line 62
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    if-gt v1, v2, :cond_5

    .line 63
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    add-int/lit16 v1, v1, 0x140

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    .line 64
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    invoke-direct {p0, p1, v1, v2}, Lcom/magicwach/rdefense/Enemy;->move(Lcom/magicwach/rdefense/MovementGrid;II)V

    goto :goto_0

    .line 65
    :cond_5
    iget-boolean v1, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    if-gtz v1, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/Enemy;->setOrientation(Lcom/magicwach/rdefense/MovementGrid;)V

    goto :goto_0

    .line 71
    :pswitch_3
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    .line 72
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    if-lt v1, v4, :cond_6

    .line 73
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    .line 74
    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    iget v2, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/magicwach/rdefense/Enemy;->move(Lcom/magicwach/rdefense/MovementGrid;II)V

    goto/16 :goto_0

    .line 75
    :cond_6
    iget-boolean v1, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    if-ltz v1, :cond_2

    .line 77
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/Enemy;->setOrientation(Lcom/magicwach/rdefense/MovementGrid;)V

    goto/16 :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public saveState(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "oout"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/magicwach/rdefense/Enemy;->saveBaseState(Ljava/io/ObjectOutputStream;)V

    .line 146
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->health:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->max_health:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->path_num:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->slow_counter:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->fire_counter:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 154
    iget-boolean v0, p0, Lcom/magicwach/rdefense/Enemy;->at_exit:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 155
    iget-boolean v0, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 156
    return-void
.end method

.method public setDeathFrame(I)V
    .locals 0
    .param p1, "frame"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/magicwach/rdefense/Enemy;->death_frame:I

    return-void
.end method

.method public teleportTo(III)V
    .locals 1
    .param p1, "gridx"    # I
    .param p2, "gridy"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 21
    iput p1, p0, Lcom/magicwach/rdefense/Enemy;->gridx:I

    .line 22
    iput p2, p0, Lcom/magicwach/rdefense/Enemy;->gridy:I

    .line 23
    iput p3, p0, Lcom/magicwach/rdefense/Enemy;->orientation:I

    .line 24
    iput v0, p0, Lcom/magicwach/rdefense/Enemy;->x_offset:I

    .line 25
    iput v0, p0, Lcom/magicwach/rdefense/Enemy;->y_offset:I

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/magicwach/rdefense/Enemy;->exiting_grid:Z

    .line 27
    return-void
.end method
