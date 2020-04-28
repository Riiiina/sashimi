.class public Lcom/magicwach/rdefense/Bullet;
.super Ljava/lang/Object;
.source "Bullet.java"


# static fields
.field private static final MORTAR_FRAMES:I = 0xf

.field private static final SMOKE_MAX_ALPHA:I = 0x50

.field private static final SMOKE_NUM_STATES:I = 0xa

.field private static final SMOKE_SIZE:I = 0x3

.field private static final SMOKE_SLOWDOWN_THRESHOLD:I = 0x1e

.field private static final Z_ACCEL:I = -0x4

.field private static final Z_SCALE:I = 0xfa


# instance fields
.field private first_frame:Z

.field public next:Lcom/magicwach/rdefense/Bullet;

.field private shot_power:I

.field private shot_type:I

.field private speed:I

.field private target:Lcom/magicwach/rdefense/Enemy;

.field private targetx:I

.field private targety:I

.field private vect:Lcom/magicwach/rdefense/Vector;

.field private x:I

.field private y:I

.field private z:I

.field private z_vel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/magicwach/rdefense/Vector;

    invoke-direct {v0}, Lcom/magicwach/rdefense/Vector;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    .line 6
    return-void
.end method

.method private addExplosion(Lcom/magicwach/rdefense/GameState;I)V
    .locals 6
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p2, "state_index"    # I

    .prologue
    const/4 v5, 0x0

    .line 125
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 126
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    invoke-static {v5}, Lcom/magicwach/rdefense/ExplosionData;->size(I)I

    move-result v2

    shr-int/lit8 v1, v2, 0x1

    .line 127
    .local v1, "explosion_size":I
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    iget v3, p0, Lcom/magicwach/rdefense/Bullet;->targetx:I

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x3

    aput v3, v2, v5

    .line 128
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/magicwach/rdefense/Bullet;->targety:I

    sub-int/2addr v4, v1

    shl-int/lit8 v4, v4, 0x3

    aput v4, v2, v3

    .line 129
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x3

    aput p2, v2, v3

    .line 130
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x4

    invoke-static {v5}, Lcom/magicwach/rdefense/ExplosionData;->frames(I)I

    move-result v4

    aput v4, v2, v3

    .line 131
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 132
    return-void
.end method

.method private addSmokeParticle(Lcom/magicwach/rdefense/GameState;I)V
    .locals 7
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p2, "state_index"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 112
    and-int/lit8 v2, p2, 0x3

    add-int/lit8 v1, v2, 0x3

    .line 113
    .local v1, "smoke_size":I
    invoke-virtual {p1, v6}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 114
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    iget v3, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x3

    aput v3, v2, v5

    .line 115
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    sub-int/2addr v4, v1

    shl-int/lit8 v4, v4, 0x3

    aput v4, v2, v3

    .line 116
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v4, v4, Lcom/magicwach/rdefense/Vector;->x:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    .line 117
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v4, v4, Lcom/magicwach/rdefense/Vector;->y:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    .line 118
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x4

    aput v5, v2, v3

    .line 119
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x5

    const/16 v4, 0x50

    aput v4, v2, v3

    .line 120
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x6

    mul-int/lit8 v4, v1, 0x2

    aput v4, v2, v3

    .line 121
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x7

    aput p2, v2, v3

    .line 122
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/16 v3, 0xa

    aput v3, v2, v6

    .line 123
    return-void
.end method

.method private calcInitialZVelocity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 134
    iget v2, p0, Lcom/magicwach/rdefense/Bullet;->targetx:I

    iget v3, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0xf

    .line 135
    .local v0, "dx":I
    iget v2, p0, Lcom/magicwach/rdefense/Bullet;->targety:I

    iget v3, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0xf

    .line 136
    .local v1, "dy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/magicwach/rdefense/Bullet;->speed:I

    .line 137
    iget v2, p0, Lcom/magicwach/rdefense/Bullet;->speed:I

    if-ge v2, v4, :cond_0

    .line 138
    iput v4, p0, Lcom/magicwach/rdefense/Bullet;->speed:I

    .line 140
    :cond_0
    const/16 v2, 0x1c

    iput v2, p0, Lcom/magicwach/rdefense/Bullet;->z_vel:I

    .line 141
    return-void
.end method


# virtual methods
.method public clearThisTarget(Lcom/magicwach/rdefense/Enemy;)V
    .locals 1
    .param p1, "active_target"    # Lcom/magicwach/rdefense/Enemy;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    if-ne v0, p1, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    .line 110
    :cond_0
    return-void
.end method

.method public getDirection()Lcom/magicwach/rdefense/Vector;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    return-object v0
.end method

.method public getSize(I)I
    .locals 2
    .param p1, "state_index"    # I

    .prologue
    .line 143
    iget v1, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    invoke-static {v1}, Lcom/magicwach/rdefense/BulletData;->size(I)I

    move-result v0

    .line 144
    .local v0, "size":I
    iget v1, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    packed-switch v1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 146
    :pswitch_1
    and-int/lit8 v0, p1, 0x3

    .line 147
    goto :goto_0

    .line 150
    :pswitch_2
    iget v1, p0, Lcom/magicwach/rdefense/Bullet;->z:I

    if-lez v1, :cond_0

    .line 151
    iget v1, p0, Lcom/magicwach/rdefense/Bullet;->z:I

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0xfa

    add-int/2addr v0, v1

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    iget v1, p0, Lcom/magicwach/rdefense/Bullet;->z:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public init(IILcom/magicwach/rdefense/Enemy;II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "target"    # Lcom/magicwach/rdefense/Enemy;
    .param p4, "shot_type"    # I
    .param p5, "shot_power"    # I

    .prologue
    .line 9
    invoke-virtual {p3}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v0

    .line 10
    .local v0, "type":I
    iput p1, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    .line 11
    iput p2, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    .line 12
    const/4 v1, 0x0

    iput v1, p0, Lcom/magicwach/rdefense/Bullet;->z:I

    .line 13
    invoke-virtual {p3}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-static {v0}, Lcom/magicwach/rdefense/EnemyData;->drawShiftX(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/magicwach/rdefense/Bullet;->targetx:I

    .line 15
    invoke-virtual {p3}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-static {v0}, Lcom/magicwach/rdefense/EnemyData;->drawShiftY(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/magicwach/rdefense/Bullet;->targety:I

    .line 17
    iput-object p3, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    .line 18
    iput p4, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    .line 19
    iput p5, p0, Lcom/magicwach/rdefense/Bullet;->shot_power:I

    .line 20
    invoke-static {p4}, Lcom/magicwach/rdefense/BulletData;->speed(I)I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/Bullet;->speed:I

    .line 21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/magicwach/rdefense/Bullet;->first_frame:Z

    .line 22
    const/16 v1, 0x9

    if-eq p4, v1, :cond_0

    const/16 v1, 0x8

    if-ne p4, v1, :cond_1

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/magicwach/rdefense/Bullet;->calcInitialZVelocity()V

    .line 26
    :cond_1
    return-void
.end method

.method public nextState(ILcom/magicwach/rdefense/GameState;)Z
    .locals 12
    .param p1, "state_index"    # I
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/16 v11, 0x190

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 28
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    if-eqz v6, :cond_0

    .line 29
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    invoke-virtual {v6}, Lcom/magicwach/rdefense/Enemy;->finished()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 30
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    .line 39
    :cond_0
    :goto_0
    iget v2, p0, Lcom/magicwach/rdefense/Bullet;->speed:I

    .line 40
    .local v2, "this_speed":I
    iget-boolean v6, p0, Lcom/magicwach/rdefense/Bullet;->first_frame:Z

    if-eqz v6, :cond_1

    .line 41
    rem-int v2, p1, v2

    .line 42
    iput-boolean v9, p0, Lcom/magicwach/rdefense/Bullet;->first_frame:Z

    .line 44
    :cond_1
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    packed-switch v6, :pswitch_data_0

    .line 66
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v7, p0, Lcom/magicwach/rdefense/Bullet;->targetx:I

    iget v8, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/magicwach/rdefense/Vector;->x:I

    .line 67
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v7, p0, Lcom/magicwach/rdefense/Bullet;->targety:I

    iget v8, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/magicwach/rdefense/Vector;->y:I

    .line 68
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    invoke-static {v6, v2}, Lcom/magicwach/rdefense/VectorLookup;->scaleVector(Lcom/magicwach/rdefense/Vector;I)V

    .line 69
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    iget-object v7, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v7, v7, Lcom/magicwach/rdefense/Vector;->x:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    .line 70
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    iget-object v7, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v7, v7, Lcom/magicwach/rdefense/Vector;->y:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    .line 71
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v6, v6, Lcom/magicwach/rdefense/Vector;->x:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    iget v7, p0, Lcom/magicwach/rdefense/Bullet;->targetx:I

    if-ge v6, v7, :cond_6

    :cond_3
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v6, v6, Lcom/magicwach/rdefense/Vector;->x:I

    if-gez v6, :cond_4

    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    iget v7, p0, Lcom/magicwach/rdefense/Bullet;->targetx:I

    if-le v6, v7, :cond_6

    :cond_4
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v6, v6, Lcom/magicwach/rdefense/Vector;->y:I

    if-lez v6, :cond_5

    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    iget v7, p0, Lcom/magicwach/rdefense/Bullet;->targety:I

    if-ge v6, v7, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v6, v6, Lcom/magicwach/rdefense/Vector;->y:I

    if-gez v6, :cond_e

    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    iget v7, p0, Lcom/magicwach/rdefense/Bullet;->targety:I

    if-gt v6, v7, :cond_e

    :cond_6
    move v1, v10

    .line 75
    .local v1, "hit_target":Z
    :goto_2
    if-eqz v1, :cond_f

    .line 76
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    if-eqz v6, :cond_8

    .line 77
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    iget v7, p0, Lcom/magicwach/rdefense/Bullet;->shot_power:I

    iget v8, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    invoke-virtual {v6, v7, v8}, Lcom/magicwach/rdefense/Enemy;->applyDamage(II)V

    .line 78
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_8

    .line 79
    :cond_7
    invoke-direct {p0, p2, p1}, Lcom/magicwach/rdefense/Bullet;->addExplosion(Lcom/magicwach/rdefense/GameState;I)V

    .line 82
    :cond_8
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_9

    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_f

    .line 84
    :cond_9
    invoke-direct {p0, p2, p1}, Lcom/magicwach/rdefense/Bullet;->addExplosion(Lcom/magicwach/rdefense/GameState;I)V

    .line 85
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getEnemyList()Lcom/magicwach/rdefense/Enemy;

    move-result-object v0

    .local v0, "e":Lcom/magicwach/rdefense/Enemy;
    :goto_3
    if-eqz v0, :cond_f

    .line 86
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->x:I

    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v7

    sub-int v4, v6, v7

    .line 87
    .local v4, "xdelta":I
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->y:I

    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v7

    sub-int v5, v6, v7

    .line 88
    .local v5, "ydelta":I
    mul-int v6, v4, v4

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    if-ge v6, v11, :cond_a

    .line 89
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->shot_power:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/magicwach/rdefense/Bullet;->shot_type:I

    invoke-virtual {v0, v6, v7}, Lcom/magicwach/rdefense/Enemy;->applyDamage(II)V

    .line 85
    :cond_a
    iget-object v0, v0, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_3

    .line 32
    .end local v2    # "this_speed":I
    .end local v1    # "hit_target":Z
    .end local v4    # "xdelta":I
    .end local v5    # "ydelta":I
    .end local v0    # "e":Lcom/magicwach/rdefense/Enemy;
    :cond_b
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    invoke-virtual {v6}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v3

    .line 33
    .local v3, "type":I
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    invoke-virtual {v6}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    invoke-static {v3}, Lcom/magicwach/rdefense/EnemyData;->drawShiftX(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/magicwach/rdefense/Bullet;->targetx:I

    .line 35
    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    invoke-virtual {v6}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    invoke-static {v3}, Lcom/magicwach/rdefense/EnemyData;->drawShiftY(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/magicwach/rdefense/Bullet;->targety:I

    goto/16 :goto_0

    .line 47
    .end local v3    # "type":I
    .restart local v2    # "this_speed":I
    :pswitch_1
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->activeEventCount()I

    move-result v6

    if-ge v6, v11, :cond_2

    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->activeEventCount()I

    move-result v6

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_c

    and-int/lit8 v6, p1, 0x3

    if-nez v6, :cond_2

    .line 50
    :cond_c
    invoke-direct {p0, p2, p1}, Lcom/magicwach/rdefense/Bullet;->addSmokeParticle(Lcom/magicwach/rdefense/GameState;I)V

    goto/16 :goto_1

    .line 55
    :pswitch_2
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->z:I

    iget v7, p0, Lcom/magicwach/rdefense/Bullet;->z_vel:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/magicwach/rdefense/Bullet;->z:I

    .line 56
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->z_vel:I

    add-int/lit8 v6, v6, -0x4

    iput v6, p0, Lcom/magicwach/rdefense/Bullet;->z_vel:I

    .line 57
    iget v6, p0, Lcom/magicwach/rdefense/Bullet;->z:I

    if-gez v6, :cond_d

    .line 58
    iput v9, p0, Lcom/magicwach/rdefense/Bullet;->z:I

    .line 59
    const/16 v6, 0x64

    iput v6, p0, Lcom/magicwach/rdefense/Bullet;->speed:I

    .line 61
    :cond_d
    iget v2, p0, Lcom/magicwach/rdefense/Bullet;->speed:I

    .line 62
    .restart local v2    # "this_speed":I
    goto/16 :goto_1

    :cond_e
    move v1, v9

    .line 71
    goto/16 :goto_2

    .line 94
    .restart local v1    # "hit_target":Z
    :cond_f
    if-nez v1, :cond_10

    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->target:Lcom/magicwach/rdefense/Enemy;

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v6, v6, Lcom/magicwach/rdefense/Vector;->x:I

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/magicwach/rdefense/Bullet;->vect:Lcom/magicwach/rdefense/Vector;

    iget v6, v6, Lcom/magicwach/rdefense/Vector;->y:I

    if-nez v6, :cond_11

    :cond_10
    move v6, v10

    :goto_4
    return v6

    :cond_11
    move v6, v9

    goto :goto_4

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
