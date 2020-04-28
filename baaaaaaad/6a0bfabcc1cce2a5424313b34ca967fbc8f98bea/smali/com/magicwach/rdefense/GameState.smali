.class public final Lcom/magicwach/rdefense/GameState;
.super Ljava/lang/Object;
.source "GameState.java"


# static fields
.field public static final GAME_FAST_FWD:I = 0x4

.field public static final GAME_LOST:I = 0x1

.field public static final GAME_NOT_STARTED:I = 0x5

.field public static final GAME_PAUSED:I = 0x3

.field public static final GAME_RUNNING:I = 0x0

.field public static final GAME_WON:I = 0x2

.field private static final HEALTH_BONUS_PCT:I = 0x1

.field public static final MINIMUM_TITAN_DIFFICULTY:I = 0x19

.field private static final PERFECT_GAME_PCT:I = 0x14

.field public static final PERFECT_LEVELS_FOR_TITAN:I = 0x4d

.field private static final POWERED_UP_TRIGGER:I = 0xc

.field private static final WON_BONUS_PCT:I = 0x14

.field private static final enemy_eye:I = 0x454e4d59

.field private static final eof_eye:I = 0x454e4446

.field private static final game_eye:I = 0x47414d45

.field private static final tower_eye:I = 0x544f5752


# instance fields
.field private active_events:I

.field private bullet_list:Lcom/magicwach/rdefense/Bullet;

.field private bullet_pool:Lcom/magicwach/rdefense/Bullet;

.field private cheapskate:Z

.field private collision_grid:Lcom/magicwach/rdefense/CollisionGrid;

.field private difficulty_level:I

.field private enemies_allocated:I

.field private enemy_graveyard:Lcom/magicwach/rdefense/Enemy;

.field private enemy_list:Lcom/magicwach/rdefense/Enemy;

.field private enemy_pool:Lcom/magicwach/rdefense/Enemy;

.field private event_list:[Lcom/magicwach/rdefense/GameEvent;

.field private event_pool:Lcom/magicwach/rdefense/GameEvent;

.field private events_allocated:I

.field private fast_fwd_counter:I

.field private grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

.field private health:I

.field private level_bonus:I

.field private level_data:Lcom/magicwach/rdefense/LevelData;

.field private money:I

.field private movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

.field private no_gun_towers_created:Z

.field private no_rocket_towers_created:Z

.field private no_sale:Z

.field private no_slow_towers_created:Z

.field private run_state:I

.field private score:I

.field private starting_health:I

.field private state_index:I

.field private tower_list:Lcom/magicwach/rdefense/GameTower;

.field private tower_powup_counter:I

.field private unit_created_this_level:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "difficulty_level"    # I
    .param p2, "mixer_seed"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/magicwach/rdefense/LevelData;

    invoke-direct {v0, p2}, Lcom/magicwach/rdefense/LevelData;-><init>(I)V

    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    .line 16
    new-instance v0, Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-direct {v0}, Lcom/magicwach/rdefense/GridObjectOrder;-><init>()V

    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    .line 17
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/magicwach/rdefense/GameEvent;

    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    .line 18
    iput p1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    .line 19
    return-void
.end method

.method private advanceActiveEnemiesState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 512
    const-string v3, "GS.advEnemySt"

    invoke-static {v3}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .local v0, "ge":Lcom/magicwach/rdefense/Enemy;
    :goto_0
    if-eqz v0, :cond_4

    .line 515
    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->getPathNum()I

    move-result v4

    aget-object v3, v3, v4

    iget v4, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    invoke-virtual {v0, v3, v4}, Lcom/magicwach/rdefense/Enemy;->nextState(Lcom/magicwach/rdefense/MovementGrid;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 516
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/magicwach/rdefense/OptionsData;->optionValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    const/4 v3, 0x3

    iput v3, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    .line 520
    :cond_0
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->health:I

    sub-int/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/magicwach/rdefense/GameState;->setHealth(I)V

    .line 521
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->health:I

    if-lez v3, :cond_2

    .line 522
    const/4 v3, 0x0

    iput v3, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    .line 523
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    .line 514
    :cond_1
    :goto_1
    iget-object v0, v0, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_0

    .line 525
    :cond_2
    invoke-virtual {p0, v5}, Lcom/magicwach/rdefense/GameState;->endGame(I)V

    goto :goto_1

    .line 527
    :cond_3
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->getHealth()I

    move-result v3

    if-lez v3, :cond_1

    .line 528
    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->collision_grid:Lcom/magicwach/rdefense/CollisionGrid;

    invoke-virtual {v3, v0}, Lcom/magicwach/rdefense/CollisionGrid;->add(Lcom/magicwach/rdefense/Enemy;)V

    goto :goto_1

    .line 531
    :cond_4
    const/4 v1, 0x0

    .line 532
    .local v1, "last_ge":Lcom/magicwach/rdefense/Enemy;
    const/4 v2, 0x0

    .line 533
    .local v2, "next_ge":Lcom/magicwach/rdefense/Enemy;
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .restart local v0    # "ge":Lcom/magicwach/rdefense/Enemy;
    :goto_2
    if-eqz v0, :cond_7

    .line 534
    iget-object v2, v0, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    .line 535
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->atExit()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 536
    invoke-direct {p0, v0, v1}, Lcom/magicwach/rdefense/GameState;->freeGameEnemy(Lcom/magicwach/rdefense/Enemy;Lcom/magicwach/rdefense/Enemy;)V

    .line 533
    :goto_3
    move-object v0, v2

    goto :goto_2

    .line 537
    :cond_5
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->getHealth()I

    move-result v3

    if-gtz v3, :cond_6

    .line 538
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    invoke-virtual {v0, v3}, Lcom/magicwach/rdefense/Enemy;->setDeathFrame(I)V

    .line 539
    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/GameState;->enemyDefeated(Lcom/magicwach/rdefense/Enemy;)V

    .line 540
    invoke-direct {p0, v0, v1}, Lcom/magicwach/rdefense/GameState;->killGameEnemy(Lcom/magicwach/rdefense/Enemy;Lcom/magicwach/rdefense/Enemy;)V

    goto :goto_3

    .line 542
    :cond_6
    move-object v1, v0

    goto :goto_3

    .line 545
    :cond_7
    const/4 v1, 0x0

    .line 546
    const/4 v2, 0x0

    .line 547
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_graveyard:Lcom/magicwach/rdefense/Enemy;

    .restart local v0    # "ge":Lcom/magicwach/rdefense/Enemy;
    :goto_4
    if-eqz v0, :cond_9

    .line 548
    iget-object v2, v0, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    .line 549
    .restart local v2    # "next_ge":Lcom/magicwach/rdefense/Enemy;
    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->getDeathFrame()I

    move-result v3

    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/magicwach/rdefense/EnemyData;->deathFrames(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    if-gt v3, v4, :cond_8

    .line 550
    invoke-direct {p0, v0, v1}, Lcom/magicwach/rdefense/GameState;->freeDeadGameEnemy(Lcom/magicwach/rdefense/Enemy;Lcom/magicwach/rdefense/Enemy;)V

    .line 547
    :goto_5
    move-object v0, v2

    goto :goto_4

    .line 552
    :cond_8
    move-object v1, v0

    goto :goto_5

    .line 555
    :cond_9
    return-void
.end method

.method private advanceBulletsState()V
    .locals 4

    .prologue
    .line 475
    const-string v3, "GS.advBulletSt"

    invoke-static {v3}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, "last_b":Lcom/magicwach/rdefense/Bullet;
    const/4 v2, 0x0

    .line 478
    .local v2, "next_b":Lcom/magicwach/rdefense/Bullet;
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->bullet_list:Lcom/magicwach/rdefense/Bullet;

    .local v0, "b":Lcom/magicwach/rdefense/Bullet;
    :goto_0
    if-eqz v0, :cond_2

    .line 479
    iget-object v2, v0, Lcom/magicwach/rdefense/Bullet;->next:Lcom/magicwach/rdefense/Bullet;

    .line 480
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    invoke-virtual {v0, v3, p0}, Lcom/magicwach/rdefense/Bullet;->nextState(ILcom/magicwach/rdefense/GameState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    if-nez v1, :cond_0

    .line 482
    iget-object v3, v0, Lcom/magicwach/rdefense/Bullet;->next:Lcom/magicwach/rdefense/Bullet;

    iput-object v3, p0, Lcom/magicwach/rdefense/GameState;->bullet_list:Lcom/magicwach/rdefense/Bullet;

    .line 486
    :goto_1
    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    iput-object v3, v0, Lcom/magicwach/rdefense/Bullet;->next:Lcom/magicwach/rdefense/Bullet;

    .line 487
    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    .line 478
    :goto_2
    move-object v0, v2

    goto :goto_0

    .line 484
    :cond_0
    iget-object v3, v0, Lcom/magicwach/rdefense/Bullet;->next:Lcom/magicwach/rdefense/Bullet;

    iput-object v3, v1, Lcom/magicwach/rdefense/Bullet;->next:Lcom/magicwach/rdefense/Bullet;

    goto :goto_1

    .line 489
    :cond_1
    move-object v1, v0

    goto :goto_2

    .line 492
    :cond_2
    return-void
.end method

.method private advanceLevelState()V
    .locals 1

    .prologue
    .line 644
    const-string v0, "GS.advLevelSt"

    invoke-static {v0}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->nextState()V

    .line 646
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getUnitType()I

    move-result v0

    if-ltz v0, :cond_1

    .line 647
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->deployNewUnit()V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->levelHasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    if-nez v0, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->nextLevel()V

    goto :goto_0
.end method

.method private advanceTowersState()V
    .locals 4

    .prologue
    .line 494
    const-string v2, "GS.advTowerState"

    invoke-static {v2}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 495
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    if-nez v2, :cond_0

    .line 496
    new-instance v2, Lcom/magicwach/rdefense/Bullet;

    invoke-direct {v2}, Lcom/magicwach/rdefense/Bullet;-><init>()V

    iput-object v2, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    .local v1, "t":Lcom/magicwach/rdefense/GameTower;
    :goto_0
    if-eqz v1, :cond_3

    .line 499
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->collision_grid:Lcom/magicwach/rdefense/CollisionGrid;

    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    invoke-virtual {v1, p0, v2, v3}, Lcom/magicwach/rdefense/GameTower;->nextState(Lcom/magicwach/rdefense/GameState;Lcom/magicwach/rdefense/CollisionGrid;Lcom/magicwach/rdefense/Bullet;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    iget-object v0, v2, Lcom/magicwach/rdefense/Bullet;->next:Lcom/magicwach/rdefense/Bullet;

    .line 501
    .local v0, "b":Lcom/magicwach/rdefense/Bullet;
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->bullet_list:Lcom/magicwach/rdefense/Bullet;

    iput-object v3, v2, Lcom/magicwach/rdefense/Bullet;->next:Lcom/magicwach/rdefense/Bullet;

    .line 502
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    iput-object v2, p0, Lcom/magicwach/rdefense/GameState;->bullet_list:Lcom/magicwach/rdefense/Bullet;

    .line 503
    if-nez v0, :cond_2

    .line 504
    new-instance v2, Lcom/magicwach/rdefense/Bullet;

    invoke-direct {v2}, Lcom/magicwach/rdefense/Bullet;-><init>()V

    iput-object v2, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    .line 498
    .end local v0    # "b":Lcom/magicwach/rdefense/Bullet;
    :cond_1
    :goto_1
    iget-object v1, v1, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    goto :goto_0

    .line 506
    .restart local v0    # "b":Lcom/magicwach/rdefense/Bullet;
    :cond_2
    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->bullet_pool:Lcom/magicwach/rdefense/Bullet;

    goto :goto_1

    .line 510
    .end local v0    # "b":Lcom/magicwach/rdefense/Bullet;
    :cond_3
    return-void
.end method

.method private allocateGameEnemy()Lcom/magicwach/rdefense/Enemy;
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 699
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_pool:Lcom/magicwach/rdefense/Enemy;

    .line 700
    .local v0, "ge":Lcom/magicwach/rdefense/Enemy;
    if-nez v0, :cond_1

    .line 701
    new-instance v0, Lcom/magicwach/rdefense/Enemy;

    .end local v0    # "ge":Lcom/magicwach/rdefense/Enemy;
    invoke-direct {v0}, Lcom/magicwach/rdefense/Enemy;-><init>()V

    .line 702
    .restart local v0    # "ge":Lcom/magicwach/rdefense/Enemy;
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->enemies_allocated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/magicwach/rdefense/GameState;->enemies_allocated:I

    .line 703
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->enemies_allocated:I

    if-le v1, v3, :cond_0

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal Error: Enemies Allocated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/GameState;->enemies_allocated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 707
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/GameState;->endGame(I)V

    .line 712
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    iput-object v1, v0, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    .line 713
    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .line 714
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-virtual {v1, v0}, Lcom/magicwach/rdefense/GridObjectOrder;->insertObject(Lcom/magicwach/rdefense/GridObject;)V

    .line 715
    return-object v0

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->enemy_pool:Lcom/magicwach/rdefense/Enemy;

    iget-object v1, v1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    iput-object v1, p0, Lcom/magicwach/rdefense/GameState;->enemy_pool:Lcom/magicwach/rdefense/Enemy;

    goto :goto_0
.end method

.method private allocateGameTower()Lcom/magicwach/rdefense/GameTower;
    .locals 2

    .prologue
    .line 718
    new-instance v0, Lcom/magicwach/rdefense/GameTower;

    invoke-direct {v0}, Lcom/magicwach/rdefense/GameTower;-><init>()V

    .line 719
    .local v0, "t":Lcom/magicwach/rdefense/GameTower;
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    iput-object v1, v0, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    .line 720
    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    .line 721
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-virtual {v1, v0}, Lcom/magicwach/rdefense/GridObjectOrder;->insertObject(Lcom/magicwach/rdefense/GridObject;)V

    .line 722
    return-object v0
.end method

.method private bigSpenderAchievement()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 900
    const/4 v0, 0x1

    .line 901
    .local v0, "big_spender":Z
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    .local v1, "t":Lcom/magicwach/rdefense/GameTower;
    :goto_0
    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_1

    .line 902
    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v2

    invoke-static {v2, v4}, Lcom/magicwach/rdefense/TowerData;->upgradeType(II)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v3

    .line 901
    :goto_1
    iget-object v1, v1, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    goto :goto_0

    :cond_0
    move v0, v4

    .line 902
    goto :goto_1

    .line 904
    :cond_1
    if-eqz v0, :cond_2

    .line 905
    const/16 v2, 0xf

    invoke-static {v2, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 907
    :cond_2
    return-void
.end method

.method private clearEventQueue(I)V
    .locals 2
    .param p1, "event_type"    # I

    .prologue
    .line 429
    :goto_0
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 430
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->events_allocated:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/magicwach/rdefense/GameState;->events_allocated:I

    .line 431
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    aput-object v1, v0, p1

    goto :goto_0

    .line 433
    :cond_0
    return-void
.end method

.method private createMessageEvent(Ljava/lang/String;I)V
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "display_frames"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 460
    const/4 v2, 0x0

    .line 461
    .local v2, "used_slots":I
    invoke-virtual {p0, v6}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    :goto_0
    if-eqz v0, :cond_0

    .line 462
    iget-object v3, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aget v3, v3, v5

    shl-int v3, v5, v3

    or-int/2addr v2, v3

    .line 461
    iget-object v0, v0, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_0

    .line 464
    :cond_0
    const/4 v1, 0x0

    .line 465
    .local v1, "slot_num":I
    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    shl-int v3, v5, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 468
    :cond_1
    invoke-virtual {p0, v6}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 469
    .restart local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    iput-object p1, v0, Lcom/magicwach/rdefense/GameEvent;->str:Ljava/lang/String;

    .line 470
    iget-object v3, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    add-int/lit8 v4, p2, 0x1e

    aput v4, v3, v6

    .line 472
    iget-object v3, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aput v1, v3, v5

    .line 473
    return-void
.end method

.method private deployNewUnit()V
    .locals 8

    .prologue
    .line 682
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/LevelData;->getUnitType()I

    move-result v4

    .line 683
    .local v4, "unit_type":I
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/LevelData;->getUnitPathNum()I

    move-result v7

    .line 684
    .local v7, "path_num":I
    iget-boolean v1, p0, Lcom/magicwach/rdefense/GameState;->unit_created_this_level:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    .line 687
    const/16 v4, 0x9

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->allocateGameEnemy()Lcom/magicwach/rdefense/Enemy;

    move-result-object v0

    .line 690
    .local v0, "ge":Lcom/magicwach/rdefense/Enemy;
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v1, v7}, Lcom/magicwach/rdefense/LevelData;->getStartX(I)I

    move-result v1

    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v2, v7}, Lcom/magicwach/rdefense/LevelData;->getStartY(I)I

    move-result v2

    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v3, v7}, Lcom/magicwach/rdefense/LevelData;->getStartOrientation(I)I

    move-result v3

    iget v5, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    iget-object v6, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v6}, Lcom/magicwach/rdefense/LevelData;->getLevelNum()I

    move-result v6

    invoke-static {v4, v6}, Lcom/magicwach/rdefense/EnemyData;->baseHealth(II)I

    move-result v6

    invoke-virtual/range {v0 .. v7}, Lcom/magicwach/rdefense/Enemy;->init(IIIIIII)V

    .line 696
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/magicwach/rdefense/GameState;->unit_created_this_level:Z

    .line 697
    return-void
.end method

.method private dequeueAchievements()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 909
    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->dequeueEarned()I

    move-result v1

    .line 910
    .local v1, "type":I
    :goto_0
    if-ltz v1, :cond_0

    .line 912
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 913
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aput v1, v2, v4

    .line 914
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x1

    aput v4, v2, v3

    .line 915
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x2

    aput v4, v2, v3

    .line 911
    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->dequeueEarned()I

    move-result v1

    goto :goto_0

    .line 917
    .end local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    :cond_0
    return-void
.end method

.method private enemyDefeated(Lcom/magicwach/rdefense/Enemy;)V
    .locals 9
    .param p1, "ge"    # Lcom/magicwach/rdefense/Enemy;

    .prologue
    const/4 v8, 0x1

    .line 557
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v2

    .line 558
    .local v2, "enemy_type":I
    iget v4, p0, Lcom/magicwach/rdefense/GameState;->money:I

    invoke-static {v2}, Lcom/magicwach/rdefense/EnemyData;->value(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/magicwach/rdefense/GameState;->setMoney(I)V

    .line 559
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->getMaxHealth()I

    move-result v4

    iget-object v5, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v5}, Lcom/magicwach/rdefense/LevelData;->getScoreMultiplier()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit16 v0, v4, 0x1f4

    .line 560
    .local v0, "base_score_add":I
    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v1

    .line 561
    .local v1, "e":Lcom/magicwach/rdefense/GameEvent;
    iget-object v4, v1, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    aput v6, v4, v5

    .line 562
    iget-object v4, v1, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aput v2, v4, v8

    .line 563
    iget-object v4, v1, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->getOrientation()I

    move-result v6

    aput v6, v4, v5

    .line 564
    iget-object v4, v1, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v6

    aput v6, v4, v5

    .line 565
    iget-object v4, v1, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v6

    aput v6, v4, v5

    .line 566
    iget-object v4, v1, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v5, 0x5

    aput v0, v4, v5

    .line 567
    iget-object v4, v1, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v5, 0x6

    iget v6, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    add-int/2addr v6, v0

    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->totalCount()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 568
    iget v4, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    add-int/2addr v4, v0

    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->totalCount()I

    move-result v5

    add-int v3, v4, v5

    .line 569
    .local v3, "score_add":I
    iget v4, p0, Lcom/magicwach/rdefense/GameState;->score:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/magicwach/rdefense/GameState;->score:I

    .line 570
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_0

    .line 571
    const/16 v4, 0x1e

    invoke-static {v4, v8}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 572
    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_0

    .line 573
    const/16 v4, 0x1f

    invoke-static {v4, v8}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 576
    :cond_0
    iget v4, p0, Lcom/magicwach/rdefense/GameState;->score:I

    const v5, 0x3d090

    if-lt v4, v5, :cond_2

    .line 577
    const/16 v4, 0x20

    invoke-static {v4, v8}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 578
    iget v4, p0, Lcom/magicwach/rdefense/GameState;->score:I

    const v5, 0x7a120

    if-lt v4, v5, :cond_1

    .line 579
    const/16 v4, 0x21

    invoke-static {v4, v8}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 581
    :cond_1
    iget v4, p0, Lcom/magicwach/rdefense/GameState;->score:I

    const v5, 0xf4240

    if-lt v4, v5, :cond_2

    .line 582
    const/16 v4, 0x22

    invoke-static {v4, v8}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 585
    :cond_2
    const/16 v4, 0x9

    if-ne v2, v4, :cond_3

    .line 586
    const/16 v4, 0x38

    invoke-static {v4, v8}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 588
    :cond_3
    const/16 v4, 0x11

    invoke-static {v4, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 589
    const/16 v4, 0x12

    invoke-static {v4, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 590
    const/16 v4, 0x10

    invoke-static {v4, v8}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 591
    const/16 v4, 0x18

    invoke-static {v4, v8}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 592
    return-void
.end method

.method private freeDeadGameEnemy(Lcom/magicwach/rdefense/Enemy;Lcom/magicwach/rdefense/Enemy;)V
    .locals 1
    .param p1, "ge"    # Lcom/magicwach/rdefense/Enemy;
    .param p2, "last_ge"    # Lcom/magicwach/rdefense/Enemy;

    .prologue
    .line 624
    if-nez p2, :cond_0

    .line 625
    iget-object v0, p1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_graveyard:Lcom/magicwach/rdefense/Enemy;

    .line 629
    :goto_0
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_pool:Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    .line 630
    iput-object p1, p0, Lcom/magicwach/rdefense/GameState;->enemy_pool:Lcom/magicwach/rdefense/Enemy;

    .line 631
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-virtual {v0, p1}, Lcom/magicwach/rdefense/GridObjectOrder;->deleteObject(Lcom/magicwach/rdefense/GridObject;)V

    .line 632
    return-void

    .line 627
    :cond_0
    iget-object v0, p1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p2, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_0
.end method

.method private freeGameEnemy(Lcom/magicwach/rdefense/Enemy;Lcom/magicwach/rdefense/Enemy;)V
    .locals 1
    .param p1, "ge"    # Lcom/magicwach/rdefense/Enemy;
    .param p2, "last_ge"    # Lcom/magicwach/rdefense/Enemy;

    .prologue
    .line 634
    if-nez p2, :cond_0

    .line 635
    iget-object v0, p1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .line 639
    :goto_0
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_pool:Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    .line 640
    iput-object p1, p0, Lcom/magicwach/rdefense/GameState;->enemy_pool:Lcom/magicwach/rdefense/Enemy;

    .line 641
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-virtual {v0, p1}, Lcom/magicwach/rdefense/GridObjectOrder;->deleteObject(Lcom/magicwach/rdefense/GridObject;)V

    .line 642
    return-void

    .line 637
    :cond_0
    iget-object v0, p1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p2, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_0
.end method

.method private gameWonAchievements()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x28

    const/16 v5, 0x1e

    const/16 v4, 0x14

    const/4 v3, 0x1

    .line 785
    const/4 v1, 0x0

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 786
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    if-lt v1, v7, :cond_0

    .line 787
    invoke-static {v3, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 789
    :cond_0
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 790
    invoke-static {v7, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 792
    :cond_1
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 793
    const/4 v1, 0x3

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 795
    :cond_2
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 796
    const/4 v1, 0x4

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 798
    :cond_3
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_4

    .line 799
    const/4 v1, 0x5

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 801
    :cond_4
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_5

    .line 802
    const/4 v1, 0x6

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 804
    :cond_5
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    if-lt v1, v4, :cond_6

    .line 805
    const/4 v1, 0x7

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 807
    :cond_6
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->health:I

    iget v2, p0, Lcom/magicwach/rdefense/GameState;->starting_health:I

    if-ne v1, v2, :cond_7

    .line 808
    const/16 v1, 0xa

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 810
    :cond_7
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->health:I

    if-ne v1, v3, :cond_8

    .line 811
    const/16 v1, 0x19

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 813
    :cond_8
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->health:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_9

    .line 814
    const/16 v1, 0x1a

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 816
    :cond_9
    iget-boolean v1, p0, Lcom/magicwach/rdefense/GameState;->no_slow_towers_created:Z

    if-eqz v1, :cond_a

    .line 817
    const/16 v1, 0xb

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 819
    :cond_a
    iget-boolean v1, p0, Lcom/magicwach/rdefense/GameState;->no_gun_towers_created:Z

    if-eqz v1, :cond_b

    .line 820
    const/16 v1, 0xc

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 822
    :cond_b
    iget-boolean v1, p0, Lcom/magicwach/rdefense/GameState;->no_rocket_towers_created:Z

    if-eqz v1, :cond_c

    .line 823
    const/16 v1, 0xd

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 825
    :cond_c
    iget-boolean v1, p0, Lcom/magicwach/rdefense/GameState;->cheapskate:Z

    if-eqz v1, :cond_d

    .line 826
    const/16 v1, 0xe

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 828
    :cond_d
    iget-boolean v1, p0, Lcom/magicwach/rdefense/GameState;->no_sale:Z

    if-eqz v1, :cond_e

    .line 829
    const/16 v1, 0x15

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 831
    :cond_e
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    const/16 v2, 0xc

    if-gt v1, v2, :cond_f

    .line 832
    invoke-static {v4, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 834
    :cond_f
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    if-lt v1, v5, :cond_10

    iget v1, p0, Lcom/magicwach/rdefense/GameState;->health:I

    if-lt v1, v5, :cond_10

    .line 835
    const/16 v1, 0x2f

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 837
    :cond_10
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/LevelData;->getLevelType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 897
    :cond_11
    :goto_0
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->bigSpenderAchievement()V

    .line 898
    return-void

    .line 839
    :pswitch_0
    const/16 v1, 0x23

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 840
    const/16 v1, 0x24

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 841
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    if-lt v1, v6, :cond_12

    .line 842
    const/16 v1, 0x25

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 844
    :cond_12
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_11

    .line 845
    const/16 v1, 0x26

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    goto :goto_0

    .line 849
    :pswitch_1
    const/16 v1, 0x27

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 850
    invoke-static {v6, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 851
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    if-lt v1, v5, :cond_13

    .line 852
    const/16 v1, 0x29

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 854
    :cond_13
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_11

    .line 855
    const/16 v1, 0x2a

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    goto :goto_0

    .line 859
    :pswitch_2
    const/16 v1, 0x2b

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 860
    const/16 v1, 0x2c

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 861
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    if-lt v1, v4, :cond_14

    .line 862
    const/16 v1, 0x2d

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 864
    :cond_14
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    if-lt v1, v6, :cond_11

    .line 865
    const/16 v1, 0x2e

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    goto :goto_0

    .line 869
    :pswitch_3
    const/16 v1, 0x30

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 870
    const/16 v1, 0x31

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 871
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_15

    .line 872
    const/16 v1, 0x32

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 874
    :cond_15
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_11

    .line 875
    const/16 v1, 0x33

    invoke-static {v1, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    goto :goto_0

    .line 879
    :pswitch_4
    const/4 v0, 0x0

    .line 880
    .local v0, "code":I
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/LevelData;->getPathCount()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 891
    const/16 v0, 0x37

    .line 894
    :goto_1
    invoke-static {v0, v3}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    goto/16 :goto_0

    .line 882
    :pswitch_5
    const/16 v0, 0x34

    .line 883
    goto :goto_1

    .line 885
    :pswitch_6
    const/16 v0, 0x35

    .line 886
    goto :goto_1

    .line 888
    :pswitch_7
    const/16 v0, 0x36

    .line 889
    goto :goto_1

    .line 837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 880
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initMovementGrid()V
    .locals 4

    .prologue
    .line 435
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/LevelData;->getPathCount()I

    move-result v1

    new-array v1, v1, [Lcom/magicwach/rdefense/MovementGrid;

    iput-object v1, p0, Lcom/magicwach/rdefense/GameState;->movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

    new-instance v2, Lcom/magicwach/rdefense/MovementGrid;

    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-direct {v2, v3, v0}, Lcom/magicwach/rdefense/MovementGrid;-><init>(Lcom/magicwach/rdefense/LevelData;I)V

    aput-object v2, v1, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method private killGameEnemy(Lcom/magicwach/rdefense/Enemy;Lcom/magicwach/rdefense/Enemy;)V
    .locals 1
    .param p1, "ge"    # Lcom/magicwach/rdefense/Enemy;
    .param p2, "last_ge"    # Lcom/magicwach/rdefense/Enemy;

    .prologue
    .line 615
    if-nez p2, :cond_0

    .line 616
    iget-object v0, p1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .line 620
    :goto_0
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_graveyard:Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    .line 621
    iput-object p1, p0, Lcom/magicwach/rdefense/GameState;->enemy_graveyard:Lcom/magicwach/rdefense/Enemy;

    .line 622
    return-void

    .line 618
    :cond_0
    iget-object v0, p1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p2, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_0
.end method

.method private nextLevel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 654
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 655
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->fast_fwd_counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/GameState;->fast_fwd_counter:I

    .line 656
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->fast_fwd_counter:I

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_0

    .line 657
    const/16 v0, 0x16

    invoke-static {v0, v2}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 659
    :cond_0
    invoke-static {v2}, Lcom/magicwach/rdefense/OptionsData;->optionValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iput v3, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getLevelNum()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 664
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    .line 665
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_4

    .line 666
    const/16 v0, 0x8

    invoke-static {v0, v2}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 671
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->nextLevel()Z

    move-result v0

    if-nez v0, :cond_5

    .line 672
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/GameState;->endGame(I)V

    .line 676
    :cond_3
    :goto_1
    const/16 v0, 0x13

    invoke-static {v0, v2}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 677
    const/16 v0, 0x17

    invoke-static {v0, v2}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 678
    iput-boolean v3, p0, Lcom/magicwach/rdefense/GameState;->unit_created_this_level:Z

    .line 679
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 680
    return-void

    .line 667
    :cond_4
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    .line 668
    const/16 v0, 0x9

    invoke-static {v0, v2}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    goto :goto_0

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getLevelNum()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_3

    .line 674
    invoke-static {p0, v3}, Lcom/magicwach/rdefense/QuickSave;->saveState(Lcom/magicwach/rdefense/GameState;Z)Z

    goto :goto_1
.end method

.method private recycleGameEvents()V
    .locals 6

    .prologue
    .line 594
    const/4 v0, 0x0

    .local v0, "event_type":I
    :goto_0
    const/16 v4, 0xc

    if-ge v0, v4, :cond_3

    .line 595
    const/4 v2, 0x0

    .line 596
    .local v2, "last_ge":Lcom/magicwach/rdefense/GameEvent;
    const/4 v3, 0x0

    .line 597
    .local v3, "next_ge":Lcom/magicwach/rdefense/GameEvent;
    iget-object v4, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    aget-object v1, v4, v0

    .local v1, "ge":Lcom/magicwach/rdefense/GameEvent;
    :goto_1
    if-eqz v1, :cond_2

    .line 598
    iget-object v3, v1, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    .line 599
    iget-boolean v4, v1, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    if-eqz v4, :cond_1

    .line 600
    if-nez v2, :cond_0

    .line 601
    iget-object v4, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    iget-object v5, v1, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    aput-object v5, v4, v0

    .line 605
    :goto_2
    iget-object v4, p0, Lcom/magicwach/rdefense/GameState;->event_pool:Lcom/magicwach/rdefense/GameEvent;

    iput-object v4, v1, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    .line 606
    iput-object v1, p0, Lcom/magicwach/rdefense/GameState;->event_pool:Lcom/magicwach/rdefense/GameEvent;

    .line 607
    iget v4, p0, Lcom/magicwach/rdefense/GameState;->active_events:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/magicwach/rdefense/GameState;->active_events:I

    .line 597
    :goto_3
    move-object v1, v3

    goto :goto_1

    .line 603
    :cond_0
    iget-object v4, v1, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    iput-object v4, v2, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_2

    .line 609
    :cond_1
    move-object v2, v1

    goto :goto_3

    .line 594
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v2    # "last_ge":Lcom/magicwach/rdefense/GameEvent;
    .end local v1    # "ge":Lcom/magicwach/rdefense/GameEvent;
    .end local v3    # "next_ge":Lcom/magicwach/rdefense/GameEvent;
    :cond_3
    return-void
.end method

.method private saveScore(I)V
    .locals 10
    .param p1, "new_run_state"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 754
    iget v5, p0, Lcom/magicwach/rdefense/GameState;->score:I

    if-lez v5, :cond_2

    .line 755
    const/4 v4, 0x0

    .line 756
    .local v4, "won_bonus":I
    const/4 v1, 0x0

    .line 757
    .local v1, "health_bonus":I
    const/4 v3, 0x0

    .line 758
    .local v3, "perfect_bonus":I
    const/4 v2, 0x0

    .line 759
    .local v2, "money_bonus":I
    if-ne p1, v7, :cond_1

    .line 760
    iget v5, p0, Lcom/magicwach/rdefense/GameState;->score:I

    mul-int/lit8 v5, v5, 0x14

    div-int/lit8 v4, v5, 0x64

    .line 761
    iget v5, p0, Lcom/magicwach/rdefense/GameState;->score:I

    iget v6, p0, Lcom/magicwach/rdefense/GameState;->health:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x1

    div-int/lit8 v1, v5, 0x64

    .line 762
    iget v5, p0, Lcom/magicwach/rdefense/GameState;->health:I

    iget v6, p0, Lcom/magicwach/rdefense/GameState;->starting_health:I

    if-ne v5, v6, :cond_0

    .line 763
    iget v5, p0, Lcom/magicwach/rdefense/GameState;->score:I

    mul-int/lit8 v5, v5, 0x14

    div-int/lit8 v3, v5, 0x64

    .line 765
    :cond_0
    iget v5, p0, Lcom/magicwach/rdefense/GameState;->money:I

    iget v6, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    mul-int/2addr v5, v6

    mul-int/lit8 v2, v5, 0x2

    .line 767
    :cond_1
    invoke-virtual {p0, v9}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 768
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    iget-object v5, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aput v8, v5, v8

    .line 769
    iget-object v5, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v6, 0x1

    aput v8, v5, v6

    .line 770
    iget-object v5, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    invoke-static {}, Lcom/magicwach/rdefense/RewardData;->getRewardPoints()I

    move-result v6

    aput v6, v5, v7

    .line 771
    iget-object v5, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v6, 0x3

    iget v7, p0, Lcom/magicwach/rdefense/GameState;->score:I

    aput v7, v5, v6

    .line 772
    iget-object v5, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v6, 0x4

    aput v4, v5, v6

    .line 773
    iget-object v5, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v6, 0x5

    aput v1, v5, v6

    .line 774
    iget-object v5, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v6, 0x6

    aput v3, v5, v6

    .line 775
    iget-object v5, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    aput v2, v5, v9

    .line 776
    iget v5, p0, Lcom/magicwach/rdefense/GameState;->score:I

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-static {v5}, Lcom/magicwach/rdefense/RewardData;->increaseRewardPoints(I)V

    .line 781
    iput v8, p0, Lcom/magicwach/rdefense/GameState;->score:I

    .line 783
    .end local v2    # "money_bonus":I
    .end local v4    # "won_bonus":I
    .end local v1    # "health_bonus":I
    .end local v3    # "perfect_bonus":I
    .end local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    :cond_2
    return-void
.end method

.method private sellTower(Lcom/magicwach/rdefense/GameTower;)V
    .locals 4
    .param p1, "tower"    # Lcom/magicwach/rdefense/GameTower;

    .prologue
    .line 725
    iget v2, p0, Lcom/magicwach/rdefense/GameState;->money:I

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/magicwach/rdefense/TowerData;->sellValue(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/magicwach/rdefense/GameState;->setMoney(I)V

    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, "last_t":Lcom/magicwach/rdefense/GameTower;
    const/4 v1, 0x0

    .line 728
    .local v1, "t":Lcom/magicwach/rdefense/GameTower;
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    :goto_0
    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 729
    move-object v0, v1

    .line 728
    iget-object v1, v1, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    .restart local v1    # "t":Lcom/magicwach/rdefense/GameTower;
    goto :goto_0

    .line 731
    :cond_0
    if-eqz v1, :cond_1

    .line 732
    if-nez v0, :cond_2

    .line 733
    iget-object v2, v1, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    iput-object v2, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    .line 737
    :goto_1
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    .line 739
    :cond_1
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-virtual {v2, p1}, Lcom/magicwach/rdefense/GridObjectOrder;->deleteObject(Lcom/magicwach/rdefense/GridObject;)V

    .line 740
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->towersChanged()V

    .line 741
    return-void

    .line 735
    :cond_2
    iget-object v2, v1, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    iput-object v2, v0, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    goto :goto_1
.end method

.method private setHealth(I)V
    .locals 1
    .param p1, "new_health"    # I

    .prologue
    .line 455
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    .line 456
    iput p1, p0, Lcom/magicwach/rdefense/GameState;->health:I

    .line 457
    return-void
.end method

.method private setMoney(I)V
    .locals 5
    .param p1, "new_money"    # I

    .prologue
    const/4 v4, 0x1

    .line 441
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 442
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    iget-object v1, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/magicwach/rdefense/GameState;->money:I

    aput v3, v1, v2

    .line 443
    iput p1, p0, Lcom/magicwach/rdefense/GameState;->money:I

    .line 444
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->money:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    .line 445
    const/16 v1, 0x1b

    invoke-static {v1, v4}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 447
    :cond_0
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->money:I

    const/16 v2, 0x9c4

    if-lt v1, v2, :cond_1

    .line 448
    const/16 v1, 0x1c

    invoke-static {v1, v4}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 450
    :cond_1
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->money:I

    const/16 v2, 0x1388

    if-lt v1, v2, :cond_2

    .line 451
    const/16 v1, 0x1d

    invoke-static {v1, v4}, Lcom/magicwach/rdefense/AchievementData;->increaseLevel(II)V

    .line 453
    :cond_2
    return-void
.end method

.method private towersChanged()V
    .locals 4

    .prologue
    .line 743
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    .line 744
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 745
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    invoke-virtual {v2, v3}, Lcom/magicwach/rdefense/MovementGrid;->calcPaths(Lcom/magicwach/rdefense/GameTower;)V

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .line 748
    .local v0, "e":Lcom/magicwach/rdefense/Enemy;
    :goto_1
    if-eqz v0, :cond_1

    .line 750
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/Enemy;->getPathNum()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/magicwach/rdefense/Enemy;->checkOrientation(Lcom/magicwach/rdefense/MovementGrid;)V

    .line 749
    iget-object v0, v0, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_1

    .line 752
    :cond_1
    return-void
.end method


# virtual methods
.method public activeEventCount()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->active_events:I

    return v0
.end method

.method public allocEnemyCount()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->enemies_allocated:I

    return v0
.end method

.method public allocEventCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->events_allocated:I

    return v0
.end method

.method public allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;
    .locals 3
    .param p1, "event_type"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->event_pool:Lcom/magicwach/rdefense/GameEvent;

    .line 412
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    if-nez v0, :cond_1

    .line 413
    new-instance v0, Lcom/magicwach/rdefense/GameEvent;

    .end local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    invoke-direct {v0}, Lcom/magicwach/rdefense/GameEvent;-><init>()V

    .line 414
    .restart local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->events_allocated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/magicwach/rdefense/GameState;->events_allocated:I

    .line 415
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->events_allocated:I

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_0

    .line 416
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/GameState;->clearEventQueue(I)V

    .line 417
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/GameState;->clearEventQueue(I)V

    .line 422
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameEvent;->init()V

    .line 423
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    aget-object v1, v1, p1

    iput-object v1, v0, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    .line 424
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    aput-object v0, v1, p1

    .line 425
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->active_events:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/magicwach/rdefense/GameState;->active_events:I

    .line 426
    return-object v0

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->event_pool:Lcom/magicwach/rdefense/GameEvent;

    iget-object v1, v1, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    iput-object v1, p0, Lcom/magicwach/rdefense/GameState;->event_pool:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_0
.end method

.method public checkTowerPlacement(IIIZ)Z
    .locals 9
    .param p1, "gridx"    # I
    .param p2, "gridy"    # I
    .param p3, "tower_type"    # I
    .param p4, "iterate_all"    # Z

    .prologue
    .line 194
    const/4 v8, 0x1

    .line 195
    .local v8, "valid":Z
    iget-object v7, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .local v7, "ge":Lcom/magicwach/rdefense/Enemy;
    :goto_0
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 196
    invoke-virtual {v7}, Lcom/magicwach/rdefense/Enemy;->getGridX()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {v7}, Lcom/magicwach/rdefense/Enemy;->getGridY()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v8, v0

    .line 195
    :goto_1
    iget-object v7, v7, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .line 198
    :cond_2
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_2
    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

    array-length v0, v0

    if-ge v5, v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->movement_grid:[Lcom/magicwach/rdefense/MovementGrid;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    :goto_3
    invoke-static {p3}, Lcom/magicwach/rdefense/TowerData;->isBlocking(I)Z

    move-result v6

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/magicwach/rdefense/MovementGrid;->checkTowerPlacement(Lcom/magicwach/rdefense/GameTower;Lcom/magicwach/rdefense/Enemy;IIIZ)Z

    move-result v8

    .line 198
    .restart local v8    # "valid":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 199
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 206
    :cond_4
    return v8
.end method

.method public endGame(I)V
    .locals 1
    .param p1, "new_run_state"    # I

    .prologue
    .line 93
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->trySaveProgress()V

    .line 118
    return-void

    .line 97
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 101
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/GameState;->saveScore(I)V

    .line 102
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 103
    invoke-static {}, Lcom/magicwach/rdefense/RewardData;->gameWon()V

    .line 104
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->gameWonAchievements()V

    .line 106
    :cond_0
    invoke-static {}, Lcom/magicwach/rdefense/QuickSave;->clearSave()V

    .line 107
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getLevelType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/GameState;->initGame(I)V

    .line 108
    iput p1, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 97
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findTowerAt(II)Lcom/magicwach/rdefense/GameTower;
    .locals 2
    .param p1, "gridx"    # I
    .param p2, "gridy"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "ret":Lcom/magicwach/rdefense/GameTower;
    invoke-virtual {p0, p1, p2}, Lcom/magicwach/rdefense/GameState;->inBounds(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    :goto_0
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 223
    :cond_0
    return-object v0

    .line 217
    :cond_1
    iget-object v0, v0, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    .restart local v0    # "ret":Lcom/magicwach/rdefense/GameTower;
    goto :goto_0
.end method

.method public getBulletList()Lcom/magicwach/rdefense/Bullet;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->bullet_list:Lcom/magicwach/rdefense/Bullet;

    return-object v0
.end method

.method public getDifficultyLevel()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    return v0
.end method

.method public getEnemyList()Lcom/magicwach/rdefense/Enemy;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    return-object v0
.end method

.method public getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;
    .locals 1
    .param p1, "event_type"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHealth()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->health:I

    return v0
.end method

.method public getLevelBonus()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    return v0
.end method

.method public getLevelData()Lcom/magicwach/rdefense/LevelData;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    return-object v0
.end method

.method public getMoney()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->money:I

    return v0
.end method

.method public getRunState()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->score:I

    return v0
.end method

.method public getSortedList()Lcom/magicwach/rdefense/GridObject;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GridObjectOrder;->getSortedList()Lcom/magicwach/rdefense/GridObject;

    move-result-object v0

    return-object v0
.end method

.method public getStateIndex()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    return v0
.end method

.method public getTowerList()Lcom/magicwach/rdefense/GameTower;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    return-object v0
.end method

.method public inBounds(II)Z
    .locals 1
    .param p1, "gridx"    # I
    .param p2, "gridy"    # I

    .prologue
    .line 226
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getGridWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getGridHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initGame(I)V
    .locals 8
    .param p1, "map_id"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 21
    iput v6, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    .line 22
    iput v6, p0, Lcom/magicwach/rdefense/GameState;->score:I

    .line 23
    iput v6, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    .line 24
    const/4 v3, 0x5

    iput v3, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    .line 25
    iput-object v4, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .line 26
    iput-object v4, p0, Lcom/magicwach/rdefense/GameState;->enemy_graveyard:Lcom/magicwach/rdefense/Enemy;

    .line 27
    iput-object v4, p0, Lcom/magicwach/rdefense/GameState;->enemy_pool:Lcom/magicwach/rdefense/Enemy;

    .line 28
    iput v6, p0, Lcom/magicwach/rdefense/GameState;->enemies_allocated:I

    .line 29
    iput-object v4, p0, Lcom/magicwach/rdefense/GameState;->bullet_list:Lcom/magicwach/rdefense/Bullet;

    .line 30
    iput-object v4, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    .line 31
    iput-boolean v6, p0, Lcom/magicwach/rdefense/GameState;->unit_created_this_level:Z

    .line 32
    iput-object v4, p0, Lcom/magicwach/rdefense/GameState;->event_pool:Lcom/magicwach/rdefense/GameEvent;

    .line 33
    iput v6, p0, Lcom/magicwach/rdefense/GameState;->events_allocated:I

    .line 34
    const/4 v2, 0x0

    .local v2, "event_type":I
    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    .line 35
    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->event_list:[Lcom/magicwach/rdefense/GameEvent;

    aget-object v1, v3, v2

    .local v1, "ev":Lcom/magicwach/rdefense/GameEvent;
    :goto_1
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/magicwach/rdefense/GameState;->events_allocated:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/magicwach/rdefense/GameState;->events_allocated:I

    iget-object v1, v1, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "ev":Lcom/magicwach/rdefense/GameEvent;
    :cond_1
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 38
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-virtual {v3}, Lcom/magicwach/rdefense/GridObjectOrder;->clear()V

    .line 39
    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v3, p1}, Lcom/magicwach/rdefense/LevelData;->init(I)V

    .line 40
    new-instance v3, Lcom/magicwach/rdefense/CollisionGrid;

    iget-object v4, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v4}, Lcom/magicwach/rdefense/LevelData;->getGridWidth()I

    move-result v4

    iget-object v5, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v5}, Lcom/magicwach/rdefense/LevelData;->getGridHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/magicwach/rdefense/CollisionGrid;-><init>(II)V

    iput-object v3, p0, Lcom/magicwach/rdefense/GameState;->collision_grid:Lcom/magicwach/rdefense/CollisionGrid;

    .line 42
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 43
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_slow_towers_created:Z

    .line 44
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_rocket_towers_created:Z

    .line 45
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_gun_towers_created:Z

    .line 46
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->cheapskate:Z

    .line 47
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_sale:Z

    .line 48
    iput v6, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    .line 49
    iput v6, p0, Lcom/magicwach/rdefense/GameState;->fast_fwd_counter:I

    .line 50
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->initMovementGrid()V

    .line 51
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/magicwach/rdefense/RewardData;->rewardFactor(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-direct {p0, v3}, Lcom/magicwach/rdefense/GameState;->setMoney(I)V

    .line 53
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/magicwach/rdefense/RewardData;->rewardFactor(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    iput v3, p0, Lcom/magicwach/rdefense/GameState;->starting_health:I

    .line 55
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->starting_health:I

    invoke-direct {p0, v3}, Lcom/magicwach/rdefense/GameState;->setHealth(I)V

    .line 56
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 57
    return-void
.end method

.method public loadState(Ljava/io/ObjectInputStream;)Z
    .locals 11
    .param p1, "oin"    # Ljava/io/ObjectInputStream;

    .prologue
    const/16 v10, 0x64

    .line 271
    const/4 v4, 0x1

    .line 272
    .local v4, "ok":Z
    const/4 v6, 0x0

    .line 273
    .local v6, "tower_count":I
    const/4 v2, 0x0

    .line 274
    .local v2, "enemy_count":I
    const/4 v3, 0x0

    .line 275
    .local v3, "grid_size":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->initGame(I)V

    .line 276
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->unit_created_this_level:Z

    .line 278
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    const v8, 0x47414d45

    if-eq v7, v8, :cond_0

    .line 279
    const-string v7, "Load Error: Bad Game Eyecatcher"

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 280
    const/4 v4, 0x0

    .line 282
    :cond_0
    if-eqz v4, :cond_1

    .line 283
    iget-object v7, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v7, p1, p0}, Lcom/magicwach/rdefense/LevelData;->loadState(Ljava/io/ObjectInputStream;Lcom/magicwach/rdefense/GameState;)Z

    move-result v4

    .line 285
    :cond_1
    if-eqz v4, :cond_2

    .line 286
    iget-object v7, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v7}, Lcom/magicwach/rdefense/LevelData;->getGridWidth()I

    move-result v7

    iget-object v8, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v8}, Lcom/magicwach/rdefense/LevelData;->getGridHeight()I

    move-result v8

    mul-int v3, v7, v8

    .line 287
    new-instance v7, Lcom/magicwach/rdefense/CollisionGrid;

    iget-object v8, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v8}, Lcom/magicwach/rdefense/LevelData;->getGridWidth()I

    move-result v8

    iget-object v9, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v9}, Lcom/magicwach/rdefense/LevelData;->getGridHeight()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/magicwach/rdefense/CollisionGrid;-><init>(II)V

    iput-object v7, p0, Lcom/magicwach/rdefense/GameState;->collision_grid:Lcom/magicwach/rdefense/CollisionGrid;

    .line 289
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->initMovementGrid()V

    .line 291
    :cond_2
    if-eqz v4, :cond_3

    .line 292
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    .line 293
    iget v7, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    if-gez v7, :cond_3

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: invalid state index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 295
    const/4 v4, 0x0

    .line 298
    :cond_3
    if-eqz v4, :cond_4

    .line 299
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    .line 300
    iget v7, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    if-gez v7, :cond_4

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: invalid difficulty level:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 302
    const/4 v4, 0x0

    .line 305
    :cond_4
    if-eqz v4, :cond_5

    .line 306
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/magicwach/rdefense/GameState;->setMoney(I)V

    .line 307
    iget v7, p0, Lcom/magicwach/rdefense/GameState;->money:I

    if-gez v7, :cond_5

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: invalid money amount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/magicwach/rdefense/GameState;->money:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 309
    const/4 v4, 0x0

    .line 312
    :cond_5
    if-eqz v4, :cond_7

    .line 313
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/magicwach/rdefense/GameState;->setHealth(I)V

    .line 314
    iget v7, p0, Lcom/magicwach/rdefense/GameState;->health:I

    if-lez v7, :cond_6

    iget v7, p0, Lcom/magicwach/rdefense/GameState;->health:I

    const/16 v8, 0xfa

    if-le v7, v8, :cond_7

    .line 315
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: invalid health amount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/magicwach/rdefense/GameState;->health:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 316
    const/4 v4, 0x0

    .line 319
    :cond_7
    if-eqz v4, :cond_8

    .line 320
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/magicwach/rdefense/GameState;->score:I

    .line 321
    iget v7, p0, Lcom/magicwach/rdefense/GameState;->score:I

    if-gez v7, :cond_8

    .line 322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: invalid score: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/magicwach/rdefense/GameState;->score:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 323
    const/4 v4, 0x0

    .line 326
    :cond_8
    if-eqz v4, :cond_a

    .line 327
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    .line 328
    iget v7, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    if-ltz v7, :cond_9

    iget v7, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    if-le v7, v10, :cond_a

    .line 329
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: invalid level bous: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 330
    const/4 v4, 0x0

    .line 333
    :cond_a
    if-eqz v4, :cond_c

    .line 334
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_slow_towers_created:Z

    .line 335
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_gun_towers_created:Z

    .line 336
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_rocket_towers_created:Z

    .line 337
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->cheapskate:Z

    .line 338
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_sale:Z

    .line 339
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    .line 340
    if-eqz v4, :cond_c

    iget v7, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    if-ltz v7, :cond_b

    iget v7, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    const/16 v8, 0x2710

    if-le v7, v8, :cond_c

    .line 342
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: Bad Tower Popup Counter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 343
    const/4 v4, 0x0

    .line 346
    :cond_c
    if-eqz v4, :cond_e

    .line 347
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/magicwach/rdefense/GameState;->fast_fwd_counter:I

    .line 348
    if-eqz v4, :cond_e

    iget v7, p0, Lcom/magicwach/rdefense/GameState;->fast_fwd_counter:I

    if-ltz v7, :cond_d

    iget v7, p0, Lcom/magicwach/rdefense/GameState;->fast_fwd_counter:I

    if-le v7, v10, :cond_e

    .line 350
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: Bad Fast Forward Counter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/magicwach/rdefense/GameState;->fast_fwd_counter:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 351
    const/4 v4, 0x0

    .line 354
    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    const v8, 0x544f5752

    if-eq v7, v8, :cond_f

    .line 355
    const-string v7, "Load Error: Bad Tower Eyecatcher"

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 356
    const/4 v4, 0x0

    .line 358
    :cond_f
    if-eqz v4, :cond_11

    .line 359
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 360
    if-ltz v6, :cond_10

    if-lt v6, v3, :cond_11

    .line 362
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: invalid tower count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 363
    const/4 v4, 0x0

    .line 366
    :cond_11
    :goto_0
    if-eqz v4, :cond_12

    if-lez v6, :cond_12

    .line 367
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->allocateGameTower()Lcom/magicwach/rdefense/GameTower;

    move-result-object v5

    .line 368
    .local v5, "tower":Lcom/magicwach/rdefense/GameTower;
    iget-object v7, p0, Lcom/magicwach/rdefense/GameState;->collision_grid:Lcom/magicwach/rdefense/CollisionGrid;

    invoke-virtual {v5, p1, p0, v7}, Lcom/magicwach/rdefense/GameTower;->loadState(Ljava/io/ObjectInputStream;Lcom/magicwach/rdefense/GameState;Lcom/magicwach/rdefense/CollisionGrid;)Z

    move-result v4

    .line 366
    .restart local v4    # "ok":Z
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 370
    .end local v5    # "tower":Lcom/magicwach/rdefense/GameTower;
    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    const v8, 0x454e4d59

    if-eq v7, v8, :cond_13

    .line 371
    const-string v7, "Load Error: Bad Enemy Eyecatcher"

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 372
    const/4 v4, 0x0

    .line 374
    :cond_13
    if-eqz v4, :cond_15

    .line 375
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 376
    if-ltz v2, :cond_14

    if-lt v2, v3, :cond_15

    .line 378
    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Error: invalid enemy count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 379
    const/4 v4, 0x0

    .line 382
    :cond_15
    :goto_1
    if-eqz v4, :cond_16

    if-lez v2, :cond_16

    .line 383
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->allocateGameEnemy()Lcom/magicwach/rdefense/Enemy;

    move-result-object v1

    .line 384
    .local v1, "enemy":Lcom/magicwach/rdefense/Enemy;
    invoke-virtual {v1, p1, p0}, Lcom/magicwach/rdefense/Enemy;->loadState(Ljava/io/ObjectInputStream;Lcom/magicwach/rdefense/GameState;)Z

    move-result v4

    .line 382
    .restart local v4    # "ok":Z
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 386
    .end local v1    # "enemy":Lcom/magicwach/rdefense/Enemy;
    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    const v8, 0x454e4446

    if-eq v7, v8, :cond_17

    .line 387
    const-string v7, "Load Error: Bad EOF Eyecatcher"

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 388
    const/4 v4, 0x0

    .line 390
    :cond_17
    if-eqz v4, :cond_18

    .line 391
    iget-object v7, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    iget v8, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    invoke-virtual {v7, v8}, Lcom/magicwach/rdefense/LevelData;->generateLevel(I)V

    .line 392
    iget-object v7, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-virtual {v7}, Lcom/magicwach/rdefense/GridObjectOrder;->ensureSorted()V

    .line 393
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->towersChanged()V

    .line 394
    const/4 v7, 0x3

    iput v7, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    .line 395
    const/16 v7, 0xb

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_18
    :goto_2
    return v4

    .line 398
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 399
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "Load Error: I/O Exception"

    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 400
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public nextState()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "GS.nextState()"

    invoke-static {v0}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->recycleGameEvents()V

    .line 136
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->dequeueAchievements()V

    .line 137
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 138
    :cond_0
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    .line 139
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->collision_grid:Lcom/magicwach/rdefense/CollisionGrid;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/CollisionGrid;->reset()V

    .line 140
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->advanceActiveEnemiesState()V

    .line 141
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->advanceTowersState()V

    .line 142
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->advanceBulletsState()V

    .line 143
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->advanceLevelState()V

    .line 144
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->grid_order:Lcom/magicwach/rdefense/GridObjectOrder;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GridObjectOrder;->ensureSorted()V

    .line 146
    :cond_1
    return-void
.end method

.method public resumeGame()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    .line 90
    iget-object v0, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    iget v1, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/LevelData;->generateLevel(I)V

    .line 91
    return-void
.end method

.method public saveState(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "oout"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 238
    :cond_0
    const v3, 0x47414d45

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 239
    iget-object v3, p0, Lcom/magicwach/rdefense/GameState;->level_data:Lcom/magicwach/rdefense/LevelData;

    invoke-virtual {v3, p1}, Lcom/magicwach/rdefense/LevelData;->saveState(Ljava/io/ObjectOutputStream;)V

    .line 240
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 241
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->difficulty_level:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 242
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->money:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 243
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->health:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 244
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->score:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 245
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->level_bonus:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 246
    iget-boolean v3, p0, Lcom/magicwach/rdefense/GameState;->no_slow_towers_created:Z

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 247
    iget-boolean v3, p0, Lcom/magicwach/rdefense/GameState;->no_gun_towers_created:Z

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 248
    iget-boolean v3, p0, Lcom/magicwach/rdefense/GameState;->no_rocket_towers_created:Z

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 249
    iget-boolean v3, p0, Lcom/magicwach/rdefense/GameState;->cheapskate:Z

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 250
    iget-boolean v3, p0, Lcom/magicwach/rdefense/GameState;->no_sale:Z

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 251
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 252
    iget v3, p0, Lcom/magicwach/rdefense/GameState;->fast_fwd_counter:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 253
    const v3, 0x544f5752

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "count":I
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    .local v2, "t":Lcom/magicwach/rdefense/GameTower;
    :goto_0
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object v2, v2, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 257
    iget-object v2, p0, Lcom/magicwach/rdefense/GameState;->tower_list:Lcom/magicwach/rdefense/GameTower;

    .restart local v2    # "t":Lcom/magicwach/rdefense/GameTower;
    :goto_1
    if-eqz v2, :cond_2

    .line 258
    invoke-virtual {v2, p1}, Lcom/magicwach/rdefense/GameTower;->saveState(Ljava/io/ObjectOutputStream;)V

    .line 257
    iget-object v2, v2, Lcom/magicwach/rdefense/GameTower;->next:Lcom/magicwach/rdefense/GameTower;

    .restart local v2    # "t":Lcom/magicwach/rdefense/GameTower;
    goto :goto_1

    .line 260
    :cond_2
    const v3, 0x454e4d59

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 261
    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .local v1, "e":Lcom/magicwach/rdefense/Enemy;
    :goto_2
    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    goto :goto_2

    .line 263
    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 264
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->enemy_list:Lcom/magicwach/rdefense/Enemy;

    .restart local v1    # "e":Lcom/magicwach/rdefense/Enemy;
    :goto_3
    if-eqz v1, :cond_4

    .line 265
    invoke-virtual {v1, p1}, Lcom/magicwach/rdefense/Enemy;->saveState(Ljava/io/ObjectOutputStream;)V

    .line 264
    iget-object v1, v1, Lcom/magicwach/rdefense/Enemy;->next:Lcom/magicwach/rdefense/Enemy;

    .restart local v1    # "e":Lcom/magicwach/rdefense/Enemy;
    goto :goto_3

    .line 267
    :cond_4
    const v3, 0x454e4446

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 269
    .end local v0    # "count":I
    .end local v2    # "t":Lcom/magicwach/rdefense/GameTower;
    .end local v1    # "e":Lcom/magicwach/rdefense/Enemy;
    :cond_5
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 408
    const/16 v0, 0x5a

    invoke-direct {p0, p1, v0}, Lcom/magicwach/rdefense/GameState;->createMessageEvent(Ljava/lang/String;I)V

    .line 409
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 405
    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0}, Lcom/magicwach/rdefense/GameState;->createMessageEvent(Ljava/lang/String;I)V

    .line 406
    return-void
.end method

.method public toggleFastFwd()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 127
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    if-nez v0, :cond_1

    .line 128
    iput v1, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    if-ne v0, v1, :cond_0

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    goto :goto_0
.end method

.method public togglePause()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 120
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 121
    :cond_0
    iput v2, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    if-ne v0, v2, :cond_1

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/GameState;->run_state:I

    goto :goto_0
.end method

.method public tryPlaceTower(III)V
    .locals 8
    .param p1, "object_type"    # I
    .param p2, "gridx"    # I
    .param p3, "gridy"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 168
    if-ltz p1, :cond_1

    invoke-virtual {p0, p2, p3, p1, v3}, Lcom/magicwach/rdefense/GameState;->checkTowerPlacement(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/magicwach/rdefense/TowerData;->cost(I)I

    move-result v1

    iget v2, p0, Lcom/magicwach/rdefense/GameState;->money:I

    if-gt v1, v2, :cond_1

    move v6, v3

    .line 171
    .local v6, "placement_ok":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->allocateGameTower()Lcom/magicwach/rdefense/GameTower;

    move-result-object v0

    .line 173
    .local v0, "tower":Lcom/magicwach/rdefense/GameTower;
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->collision_grid:Lcom/magicwach/rdefense/CollisionGrid;

    iget v5, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    move v2, p2

    move v3, p3

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/magicwach/rdefense/GameTower;->init(Lcom/magicwach/rdefense/CollisionGrid;IIII)V

    .line 174
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->towersChanged()V

    .line 175
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->money:I

    invoke-static {p1}, Lcom/magicwach/rdefense/TowerData;->cost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/GameState;->setMoney(I)V

    .line 176
    iget v1, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    .line 177
    sparse-switch p1, :sswitch_data_0

    .line 191
    .end local v0    # "tower":Lcom/magicwach/rdefense/GameTower;
    :cond_0
    :goto_1
    return-void

    .end local v6    # "placement_ok":Z
    :cond_1
    move v6, v7

    .line 168
    goto :goto_0

    .line 179
    .restart local v0    # "tower":Lcom/magicwach/rdefense/GameTower;
    .restart local v6    # "placement_ok":Z
    :sswitch_0
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_slow_towers_created:Z

    goto :goto_1

    .line 182
    :sswitch_1
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_gun_towers_created:Z

    goto :goto_1

    .line 185
    :sswitch_2
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_rocket_towers_created:Z

    goto :goto_1

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public upgradeTower(Lcom/magicwach/rdefense/GameTower;I)V
    .locals 8
    .param p1, "tower"    # Lcom/magicwach/rdefense/GameTower;
    .param p2, "new_tower_id"    # I

    .prologue
    const/4 v7, 0x0

    .line 148
    if-nez p2, :cond_1

    .line 149
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/GameState;->sellTower(Lcom/magicwach/rdefense/GameTower;)V

    .line 150
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->no_sale:Z

    .line 151
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    .line 152
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/magicwach/rdefense/GameState;->tower_powup_counter:I

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-static {p2}, Lcom/magicwach/rdefense/TowerData;->cost(I)I

    move-result v0

    iget v1, p0, Lcom/magicwach/rdefense/GameState;->money:I

    if-gt v0, v1, :cond_0

    .line 155
    iget v0, p0, Lcom/magicwach/rdefense/GameState;->money:I

    invoke-static {p2}, Lcom/magicwach/rdefense/TowerData;->cost(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/GameState;->setMoney(I)V

    .line 156
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v6

    .line 157
    .local v6, "old_id":I
    iget-object v1, p0, Lcom/magicwach/rdefense/GameState;->collision_grid:Lcom/magicwach/rdefense/CollisionGrid;

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v2

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v3

    iget v5, p0, Lcom/magicwach/rdefense/GameState;->state_index:I

    move-object v0, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/magicwach/rdefense/GameTower;->init(Lcom/magicwach/rdefense/CollisionGrid;IIII)V

    .line 159
    invoke-static {v6}, Lcom/magicwach/rdefense/TowerData;->isBlocking(I)Z

    move-result v0

    invoke-static {p2}, Lcom/magicwach/rdefense/TowerData;->isBlocking(I)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/magicwach/rdefense/GameState;->towersChanged()V

    .line 164
    :goto_1
    iput-boolean v7, p0, Lcom/magicwach/rdefense/GameState;->cheapskate:Z

    goto :goto_0

    .line 162
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/GameState;->allocateGameEvent(I)Lcom/magicwach/rdefense/GameEvent;

    goto :goto_1
.end method
