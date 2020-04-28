.class public final Lcom/magicwach/rdefense/GameTower;
.super Lcom/magicwach/rdefense/GridObject;
.source "GameTower.java"


# static fields
.field private static vect:Lcom/magicwach/rdefense/Vector;


# instance fields
.field active_enemy:Lcom/magicwach/rdefense/Enemy;

.field private cbottom:I

.field private cleft:I

.field private cright:I

.field private ctop:I

.field last_direction:I

.field public next:Lcom/magicwach/rdefense/GameTower;

.field shot_delay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/magicwach/rdefense/GridObject;-><init>()V

    return-void
.end method

.method private addExplosion(Lcom/magicwach/rdefense/GameState;III)V
    .locals 5
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p2, "pixel_x"    # I
    .param p3, "pixel_y"    # I
    .param p4, "exp_type"    # I

    .prologue
    const/4 v4, 0x1

    .line 181
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 182
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    iget-object v1, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x0

    shl-int/lit8 v3, p2, 0x3

    aput v3, v1, v2

    .line 183
    iget-object v1, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    shl-int/lit8 v2, p3, 0x3

    aput v2, v1, v4

    .line 184
    iget-object v1, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameState;->getStateIndex()I

    move-result v3

    aput v3, v1, v2

    .line 185
    iget-object v1, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x4

    invoke-static {v4}, Lcom/magicwach/rdefense/ExplosionData;->frames(I)I

    move-result v3

    aput v3, v1, v2

    .line 186
    iget-object v1, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x2

    aput p4, v1, v2

    .line 187
    return-void
.end method

.method private chooseTarget(Lcom/magicwach/rdefense/CollisionGrid;)V
    .locals 5
    .param p1, "collision_grid"    # Lcom/magicwach/rdefense/CollisionGrid;

    .prologue
    .line 76
    iget-object v4, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    invoke-direct {p0, v4}, Lcom/magicwach/rdefense/GameTower;->validTarget(Lcom/magicwach/rdefense/Enemy;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 77
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    .line 78
    const v1, 0x3b9aca00

    .line 79
    .local v1, "oldest_state":I
    iget v3, p0, Lcom/magicwach/rdefense/GameTower;->ctop:I

    .local v3, "y":I
    :goto_0
    iget v4, p0, Lcom/magicwach/rdefense/GameTower;->cbottom:I

    if-gt v3, v4, :cond_3

    .line 80
    iget v2, p0, Lcom/magicwach/rdefense/GameTower;->cleft:I

    .local v2, "x":I
    :goto_1
    iget v4, p0, Lcom/magicwach/rdefense/GameTower;->cright:I

    if-gt v2, v4, :cond_2

    .line 81
    invoke-virtual {p1, v2, v3}, Lcom/magicwach/rdefense/CollisionGrid;->getList(II)Lcom/magicwach/rdefense/Enemy;

    move-result-object v0

    .local v0, "e":Lcom/magicwach/rdefense/Enemy;
    :goto_2
    if-eqz v0, :cond_1

    .line 82
    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/GameTower;->validTarget(Lcom/magicwach/rdefense/Enemy;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->getFirstState()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 84
    iput-object v0, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    .line 85
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->getFirstState()I

    move-result v1

    .line 81
    :cond_0
    iget-object v0, v0, Lcom/magicwach/rdefense/Enemy;->grid_next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_2

    .line 80
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "e":Lcom/magicwach/rdefense/Enemy;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "y":I
    .end local v2    # "x":I
    .end local v1    # "oldest_state":I
    :cond_3
    return-void
.end method

.method private handleMine(Lcom/magicwach/rdefense/GameState;)V
    .locals 9
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 155
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameState;->getEnemyList()Lcom/magicwach/rdefense/Enemy;

    move-result-object v0

    .local v0, "e":Lcom/magicwach/rdefense/Enemy;
    :goto_0
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/magicwach/rdefense/EnemyData;->isFlyer(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    :cond_0
    :goto_1
    iget-object v0, v0, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_0

    .line 158
    :cond_1
    iget v4, p0, Lcom/magicwach/rdefense/GameTower;->gridx:I

    mul-int/lit8 v4, v4, 0x28

    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v5

    sub-int v2, v4, v5

    .line 159
    .local v2, "xdelta":I
    iget v4, p0, Lcom/magicwach/rdefense/GameTower;->gridy:I

    mul-int/lit8 v4, v4, 0x28

    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v5

    sub-int v3, v4, v5

    .line 160
    .local v3, "ydelta":I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    const/16 v5, 0xc80

    if-gt v4, v5, :cond_0

    .line 161
    iget v4, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v4}, Lcom/magicwach/rdefense/TowerData;->power(I)I

    move-result v4

    iget v5, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v5}, Lcom/magicwach/rdefense/TowerData;->shotType(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/magicwach/rdefense/Enemy;->applyDamage(II)V

    .line 162
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v4

    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v5

    invoke-direct {p0, p1, v4, v5, v7}, Lcom/magicwach/rdefense/GameTower;->addExplosion(Lcom/magicwach/rdefense/GameState;III)V

    goto :goto_1

    .line 166
    .end local v2    # "xdelta":I
    .end local v3    # "ydelta":I
    :cond_2
    const/16 v4, 0x14

    iput v4, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    .line 167
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameState;->getTowerList()Lcom/magicwach/rdefense/GameTower;

    move-result-object v1

    .local v1, "gt":Lcom/magicwach/rdefense/GameTower;
    :goto_2
    if-eqz v1, :cond_4

    .line 168
    if-eq v1, p0, :cond_3

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_3

    .line 169
    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v4

    iget v5, p0, Lcom/magicwach/rdefense/GameTower;->gridx:I

    sub-int v2, v4, v5

    .line 170
    .restart local v2    # "xdelta":I
    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v4

    iget v5, p0, Lcom/magicwach/rdefense/GameTower;->gridy:I

    sub-int v3, v4, v5

    .line 171
    .restart local v3    # "ydelta":I
    if-gt v2, v8, :cond_3

    if-lt v2, v6, :cond_3

    if-gt v3, v8, :cond_3

    if-lt v3, v6, :cond_3

    .line 172
    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x28

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v5

    mul-int/lit8 v5, v5, 0x28

    invoke-direct {p0, p1, v4, v5, v7}, Lcom/magicwach/rdefense/GameTower;->addExplosion(Lcom/magicwach/rdefense/GameState;III)V

    .line 174
    invoke-direct {v1, p1}, Lcom/magicwach/rdefense/GameTower;->handleMine(Lcom/magicwach/rdefense/GameState;)V

    .line 167
    .end local v2    # "xdelta":I
    .end local v3    # "ydelta":I
    :cond_3
    iget-object v1, v1, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    goto :goto_2

    .line 178
    :cond_4
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    .line 179
    return-void
.end method

.method private handleTeleport(Lcom/magicwach/rdefense/GameState;Lcom/magicwach/rdefense/Enemy;)V
    .locals 7
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p2, "active_enemy"    # Lcom/magicwach/rdefense/Enemy;

    .prologue
    const/4 v6, 0x1

    .line 139
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v3

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v4

    invoke-direct {p0, p1, v3, v4, v6}, Lcom/magicwach/rdefense/GameTower;->addExplosion(Lcom/magicwach/rdefense/GameState;III)V

    .line 141
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v1

    .line 142
    .local v1, "level_data":Lcom/magicwach/rdefense/LevelData;
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->getPathNum()I

    move-result v2

    .line 143
    .local v2, "path_num":I
    invoke-virtual {v1, v2}, Lcom/magicwach/rdefense/LevelData;->getStartX(I)I

    move-result v3

    invoke-virtual {v1, v2}, Lcom/magicwach/rdefense/LevelData;->getStartY(I)I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/magicwach/rdefense/LevelData;->getStartOrientation(I)I

    move-result v5

    invoke-virtual {p2, v3, v4, v5}, Lcom/magicwach/rdefense/Enemy;->teleportTo(III)V

    .line 146
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameState;->getBulletList()Lcom/magicwach/rdefense/Bullet;

    move-result-object v0

    .local v0, "b":Lcom/magicwach/rdefense/Bullet;
    :goto_0
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p2}, Lcom/magicwach/rdefense/Bullet;->clearThisTarget(Lcom/magicwach/rdefense/Enemy;)V

    .line 146
    iget-object v0, v0, Lcom/magicwach/rdefense/Bullet;->next:Lcom/magicwach/rdefense/Bullet;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v3

    invoke-virtual {p2}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v4

    invoke-direct {p0, p1, v3, v4, v6}, Lcom/magicwach/rdefense/GameTower;->addExplosion(Lcom/magicwach/rdefense/GameState;III)V

    .line 151
    const/16 v3, 0x12

    iput v3, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    .line 152
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    .line 153
    return-void
.end method

.method private validTarget(Lcom/magicwach/rdefense/Enemy;)Z
    .locals 5
    .param p1, "e"    # Lcom/magicwach/rdefense/Enemy;

    .prologue
    const/4 v4, 0x0

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->finished()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    .line 122
    :goto_0
    return v2

    .line 97
    :cond_1
    iget v2, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v2}, Lcom/magicwach/rdefense/TowerData;->shotType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 120
    :cond_2
    :pswitch_0
    iget v2, p0, Lcom/magicwach/rdefense/GameTower;->gridx:I

    mul-int/lit8 v2, v2, 0x28

    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v3

    sub-int v0, v2, v3

    .line 121
    .local v0, "xdelta":I
    iget v2, p0, Lcom/magicwach/rdefense/GameTower;->gridy:I

    mul-int/lit8 v2, v2, 0x28

    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v3

    sub-int v1, v2, v3

    .line 122
    .local v1, "ydelta":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v3}, Lcom/magicwach/rdefense/TowerData;->attackRadiusSq(I)I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "xdelta":I
    .end local v1    # "ydelta":I
    :pswitch_1
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->getSlowCounter()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/magicwach/rdefense/EnemyData;->isFlyer(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_0

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->getFireCounter()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v4

    .line 105
    goto :goto_0

    .line 111
    :pswitch_3
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/magicwach/rdefense/EnemyData;->isFlyer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 115
    :pswitch_4
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/magicwach/rdefense/EnemyData;->isFlyer(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    .restart local v0    # "xdelta":I
    .restart local v1    # "ydelta":I
    :cond_4
    move v2, v4

    .line 122
    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getDirection()I
    .locals 4

    .prologue
    .line 125
    iget-object v2, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    if-eqz v2, :cond_0

    .line 126
    iget v2, p0, Lcom/magicwach/rdefense/GameTower;->gridx:I

    mul-int/lit8 v2, v2, 0x28

    iget-object v3, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    invoke-virtual {v3}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v3

    sub-int v0, v2, v3

    .line 127
    .local v0, "xdelta":I
    iget v2, p0, Lcom/magicwach/rdefense/GameTower;->gridy:I

    mul-int/lit8 v2, v2, 0x28

    iget-object v3, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    invoke-virtual {v3}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v3

    sub-int v1, v2, v3

    .line 128
    .local v1, "ydelta":I
    invoke-static {v0, v1}, Lcom/magicwach/rdefense/Vector;->arctan(II)I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/GameTower;->last_direction:I

    .line 130
    .end local v0    # "xdelta":I
    .end local v1    # "ydelta":I
    :cond_0
    iget v2, p0, Lcom/magicwach/rdefense/GameTower;->last_direction:I

    return v2
.end method

.method public init(Lcom/magicwach/rdefense/CollisionGrid;IIII)V
    .locals 6
    .param p1, "collision_grid"    # Lcom/magicwach/rdefense/CollisionGrid;
    .param p2, "gridx"    # I
    .param p3, "gridy"    # I
    .param p4, "type"    # I
    .param p5, "first_state"    # I

    .prologue
    .line 9
    sget-object v0, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/magicwach/rdefense/Vector;

    invoke-direct {v0}, Lcom/magicwach/rdefense/Vector;-><init>()V

    sput-object v0, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    .line 10
    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/magicwach/rdefense/GameTower;->init_base(IIIII)V

    .line 11
    invoke-static {p4}, Lcom/magicwach/rdefense/TowerData;->shotDelay(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    .line 12
    const/16 v0, 0x10e

    iput v0, p0, Lcom/magicwach/rdefense/GameTower;->last_direction:I

    .line 13
    invoke-virtual {p1, p0}, Lcom/magicwach/rdefense/CollisionGrid;->setupGrid(Lcom/magicwach/rdefense/GameTower;)V

    .line 14
    return-void
.end method

.method public loadState(Ljava/io/ObjectInputStream;Lcom/magicwach/rdefense/GameState;Lcom/magicwach/rdefense/CollisionGrid;)Z
    .locals 3
    .param p1, "oin"    # Ljava/io/ObjectInputStream;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p3, "collision_grid"    # Lcom/magicwach/rdefense/CollisionGrid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    .line 58
    sget-object v1, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    if-nez v1, :cond_0

    new-instance v1, Lcom/magicwach/rdefense/Vector;

    invoke-direct {v1}, Lcom/magicwach/rdefense/Vector;-><init>()V

    sput-object v1, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/magicwach/rdefense/GameTower;->loadBaseState(Ljava/io/ObjectInputStream;Lcom/magicwach/rdefense/GameState;)Z

    move-result v0

    .line 60
    .local v0, "ok":Z
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    .line 62
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameTower;->getClassType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Data: unexpected class type for tower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameTower;->getClassType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    .line 70
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p3, p0}, Lcom/magicwach/rdefense/CollisionGrid;->setupGrid(Lcom/magicwach/rdefense/GameTower;)V

    .line 73
    :cond_2
    return v0

    .line 65
    :cond_3
    iget v1, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    const/16 v2, 0x2710

    if-le v1, v2, :cond_1

    .line 66
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Data: invalid shot delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextState(Lcom/magicwach/rdefense/GameState;Lcom/magicwach/rdefense/CollisionGrid;Lcom/magicwach/rdefense/Bullet;)Z
    .locals 9
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p2, "collision_grid"    # Lcom/magicwach/rdefense/CollisionGrid;
    .param p3, "bullet"    # Lcom/magicwach/rdefense/Bullet;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 16
    iget v0, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v0}, Lcom/magicwach/rdefense/TowerData;->shotType(I)I

    move-result v4

    .line 17
    .local v4, "shot_type":I
    iget v0, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    .line 18
    iget v0, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    if-gtz v0, :cond_1

    .line 19
    if-nez v4, :cond_0

    .line 20
    iget v0, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v0}, Lcom/magicwach/rdefense/TowerData;->shotDelay(I)I

    move-result v0

    iput v0, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    move v0, v1

    .line 48
    :goto_0
    return v0

    .line 23
    :cond_0
    invoke-direct {p0, p2}, Lcom/magicwach/rdefense/GameTower;->chooseTarget(Lcom/magicwach/rdefense/CollisionGrid;)V

    .line 24
    iget-object v0, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    if-nez v0, :cond_2

    .line 25
    iput v1, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    :cond_1
    move v0, v1

    .line 48
    goto :goto_0

    .line 26
    :cond_2
    if-ne v4, v8, :cond_3

    .line 27
    iget-object v0, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    invoke-direct {p0, p1, v0}, Lcom/magicwach/rdefense/GameTower;->handleTeleport(Lcom/magicwach/rdefense/GameState;Lcom/magicwach/rdefense/Enemy;)V

    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const/16 v0, 0xa

    if-ne v4, v0, :cond_4

    .line 30
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/GameTower;->handleMine(Lcom/magicwach/rdefense/GameState;)V

    move v0, v1

    .line 31
    goto :goto_0

    .line 33
    :cond_4
    iget v0, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v0}, Lcom/magicwach/rdefense/TowerData;->shotDelay(I)I

    move-result v0

    iput v0, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    .line 34
    iget v0, p0, Lcom/magicwach/rdefense/GameTower;->gridx:I

    mul-int/lit8 v0, v0, 0x28

    add-int/lit8 v6, v0, 0x14

    .line 35
    .local v6, "x":I
    iget v0, p0, Lcom/magicwach/rdefense/GameTower;->gridy:I

    mul-int/lit8 v0, v0, 0x28

    add-int/lit8 v0, v0, 0x14

    iget v1, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v1}, Lcom/magicwach/rdefense/TowerData;->gunHeight(I)I

    move-result v1

    sub-int v7, v0, v1

    .line 36
    .local v7, "y":I
    sget-object v0, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    iget-object v1, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/magicwach/rdefense/Vector;->x:I

    .line 37
    sget-object v0, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    iget-object v1, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    sub-int/2addr v1, v7

    iput v1, v0, Lcom/magicwach/rdefense/Vector;->y:I

    .line 38
    sget-object v0, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    iget v1, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v1}, Lcom/magicwach/rdefense/TowerData;->gunRadius(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/magicwach/rdefense/VectorLookup;->scaleVector(Lcom/magicwach/rdefense/Vector;I)V

    .line 39
    sget-object v0, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    sget-object v1, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    iget v1, v1, Lcom/magicwach/rdefense/Vector;->y:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/magicwach/rdefense/Vector;->y:I

    .line 40
    sget-object v0, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    iget v0, v0, Lcom/magicwach/rdefense/Vector;->x:I

    add-int v1, v6, v0

    sget-object v0, Lcom/magicwach/rdefense/GameTower;->vect:Lcom/magicwach/rdefense/Vector;

    iget v0, v0, Lcom/magicwach/rdefense/Vector;->y:I

    add-int v2, v7, v0

    iget-object v3, p0, Lcom/magicwach/rdefense/GameTower;->active_enemy:Lcom/magicwach/rdefense/Enemy;

    iget v0, p0, Lcom/magicwach/rdefense/GameTower;->type:I

    invoke-static {v0}, Lcom/magicwach/rdefense/TowerData;->power(I)I

    move-result v5

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/magicwach/rdefense/Bullet;->init(IILcom/magicwach/rdefense/Enemy;II)V

    .line 44
    invoke-static {v4}, Lcom/magicwach/rdefense/SoundManager;->fireBullet(I)V

    move v0, v8

    .line 45
    goto/16 :goto_0
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
    .line 51
    invoke-virtual {p0, p1}, Lcom/magicwach/rdefense/GameTower;->saveBaseState(Ljava/io/ObjectOutputStream;)V

    .line 52
    iget v0, p0, Lcom/magicwach/rdefense/GameTower;->shot_delay:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 53
    return-void
.end method

.method public setCollisionBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/magicwach/rdefense/GameTower;->cleft:I

    .line 134
    iput p2, p0, Lcom/magicwach/rdefense/GameTower;->cright:I

    .line 135
    iput p3, p0, Lcom/magicwach/rdefense/GameTower;->ctop:I

    .line 136
    iput p4, p0, Lcom/magicwach/rdefense/GameTower;->cbottom:I

    .line 137
    return-void
.end method
