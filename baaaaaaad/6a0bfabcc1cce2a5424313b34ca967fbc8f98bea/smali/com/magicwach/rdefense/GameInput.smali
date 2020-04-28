.class public Lcom/magicwach/rdefense/GameInput;
.super Ljava/lang/Object;
.source "GameInput.java"


# static fields
.field private static final STATE_NONE:I = 0x0

.field private static final STATE_TOWER_BUTTON_ACTIVE:I = 0x1

.field private static final STATE_TOWER_SELECTED:I = 0x2

.field private static final STATE_UPGRADE_CANCEL:I = 0x4

.field private static final STATE_UPGRADE_DIALOG:I = 0x3

.field private static final TOUCH_TOLERANCE_SQ:I = 0xe1


# instance fields
.field private last_move_x:I

.field private last_move_y:I

.field private pressed_x:I

.field private pressed_y:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameInput;->init()V

    .line 5
    return-void
.end method


# virtual methods
.method public backPressed(Lcom/magicwach/rdefense/Display;Lcom/magicwach/rdefense/GameState;)Z
    .locals 2
    .param p1, "game_display"    # Lcom/magicwach/rdefense/Display;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/4 v1, 0x0

    .line 137
    iget v0, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    packed-switch v0, :pswitch_data_0

    .line 153
    iput v1, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    .line 156
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    move v0, v1

    .line 139
    goto :goto_1

    .line 141
    :pswitch_1
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Display;->clearTowerButtons()V

    .line 142
    iput v1, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Display;->clearActiveTower()V

    .line 146
    iput v1, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    goto :goto_0

    .line 149
    :pswitch_3
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Display;->upgradeDialogCancel()V

    .line 150
    iput v1, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public fingerDown(IILcom/magicwach/rdefense/Display;Lcom/magicwach/rdefense/GameState;)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "game_display"    # Lcom/magicwach/rdefense/Display;
    .param p4, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/4 v2, 0x4

    .line 12
    invoke-virtual {p4}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v6

    .line 13
    .local v6, "run_state":I
    if-eqz v6, :cond_0

    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    if-ne v6, v2, :cond_4

    .line 16
    :cond_0
    iput p1, p0, Lcom/magicwach/rdefense/GameInput;->pressed_x:I

    .line 17
    iput p2, p0, Lcom/magicwach/rdefense/GameInput;->pressed_y:I

    .line 18
    iput p1, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    .line 19
    iput p2, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    .line 20
    iget v0, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    packed-switch v0, :pswitch_data_0

    .line 28
    if-eqz v6, :cond_1

    if-ne v6, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    move-object v0, p3

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/magicwach/rdefense/Display;->checkTowerButtons(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    .line 32
    :cond_2
    iget v0, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    iget v1, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    invoke-virtual {p3, v0, v1, v6}, Lcom/magicwach/rdefense/Display;->pauseButtonFingerDown(III)V

    .line 34
    iget v0, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    iget v1, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    invoke-virtual {p3, v0, v1, v6}, Lcom/magicwach/rdefense/Display;->fastFwdButtonFingerDown(III)V

    .line 41
    :cond_3
    :goto_0
    return-void

    .line 22
    :pswitch_0
    iget v0, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    iget v1, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    invoke-virtual {p3, v0, v1}, Lcom/magicwach/rdefense/Display;->upgradeDialogFingerDown(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 23
    iput v2, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    .line 24
    invoke-virtual {p3}, Lcom/magicwach/rdefense/Display;->clearActiveTower()V

    goto :goto_0

    .line 38
    :cond_4
    const/4 v0, 0x5

    if-ne v6, v0, :cond_3

    .line 39
    invoke-virtual {p4}, Lcom/magicwach/rdefense/GameState;->resumeGame()V

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public fingerDrag(IILcom/magicwach/rdefense/Display;Lcom/magicwach/rdefense/GameState;)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "game_display"    # Lcom/magicwach/rdefense/Display;
    .param p4, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p4}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v8

    .line 46
    .local v8, "run_state":I
    if-eqz v8, :cond_0

    const/4 v0, 0x3

    if-eq v8, v0, :cond_0

    const/4 v0, 0x4

    if-ne v8, v0, :cond_2

    .line 49
    :cond_0
    invoke-virtual {p3, p1}, Lcom/magicwach/rdefense/Display;->screen2GridX(I)I

    move-result v6

    .line 50
    .local v6, "gridx":I
    invoke-virtual {p3, p2, v1}, Lcom/magicwach/rdefense/Display;->screen2GridY(IZ)I

    move-result v7

    .line 51
    .local v7, "gridy":I
    iget v0, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :cond_1
    :goto_0
    iput p1, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    .line 76
    iput p2, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    .line 80
    .end local v6    # "gridx":I
    .end local v7    # "gridy":I
    :goto_1
    return-void

    .line 53
    .restart local v6    # "gridx":I
    .restart local v7    # "gridy":I
    :pswitch_0
    iget v0, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    sub-int v1, p2, v1

    invoke-virtual {p4}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/magicwach/rdefense/Display;->scrollView(IILcom/magicwach/rdefense/LevelData;)V

    goto :goto_0

    .line 58
    :pswitch_1
    iget v4, p0, Lcom/magicwach/rdefense/GameInput;->pressed_x:I

    iget v5, p0, Lcom/magicwach/rdefense/GameInput;->pressed_y:I

    move-object v0, p3

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/magicwach/rdefense/Display;->checkTowerButtons(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    .line 61
    invoke-virtual {p4}, Lcom/magicwach/rdefense/GameState;->getStateIndex()I

    move-result v0

    invoke-virtual {p3, v6, v7, v0}, Lcom/magicwach/rdefense/Display;->moveActiveTower(III)V

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-virtual {p4}, Lcom/magicwach/rdefense/GameState;->getStateIndex()I

    move-result v0

    invoke-virtual {p3, v6, v7, v0}, Lcom/magicwach/rdefense/Display;->moveActiveTower(III)V

    goto :goto_0

    .line 70
    :pswitch_3
    iget v0, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    iget v1, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    invoke-virtual {p3, v0, v1}, Lcom/magicwach/rdefense/Display;->upgradeDialogFingerDrag(II)V

    goto :goto_0

    .line 78
    .end local v6    # "gridx":I
    .end local v7    # "gridy":I
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public fingerUp(Lcom/magicwach/rdefense/Display;Lcom/magicwach/rdefense/GameState;)V
    .locals 11
    .param p1, "game_display"    # Lcom/magicwach/rdefense/Display;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 82
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v2

    .line 83
    .local v2, "run_state":I
    if-eqz v2, :cond_0

    if-eq v2, v9, :cond_0

    if-ne v2, v10, :cond_5

    .line 86
    :cond_0
    iget v6, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    invoke-virtual {p1, v6}, Lcom/magicwach/rdefense/Display;->screen2GridX(I)I

    move-result v0

    .line 87
    .local v0, "gridx":I
    iget v6, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Lcom/magicwach/rdefense/Display;->screen2GridY(IZ)I

    move-result v1

    .line 88
    .local v1, "gridy":I
    iget v6, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    packed-switch v6, :pswitch_data_0

    .line 129
    iput v8, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    .line 135
    .end local v0    # "gridx":I
    .end local v1    # "gridy":I
    :cond_1
    :goto_0
    return-void

    .line 90
    .restart local v0    # "gridx":I
    .restart local v1    # "gridy":I
    :pswitch_0
    iget v6, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    iget v7, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    invoke-virtual {p1, v6, v7, v2}, Lcom/magicwach/rdefense/Display;->pauseButtonFingerUp(III)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->togglePause()V

    goto :goto_0

    .line 94
    :cond_2
    iget v6, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    iget v7, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    invoke-virtual {p1, v6, v7, v2}, Lcom/magicwach/rdefense/Display;->fastFwdButtonFingerUp(III)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->toggleFastFwd()V

    goto :goto_0

    .line 98
    :cond_3
    if-eqz v2, :cond_4

    if-ne v2, v10, :cond_1

    .line 100
    :cond_4
    iget v6, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    iget v7, p0, Lcom/magicwach/rdefense/GameInput;->pressed_x:I

    sub-int v4, v6, v7

    .line 101
    .local v4, "xdelta":I
    iget v6, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    iget v7, p0, Lcom/magicwach/rdefense/GameInput;->pressed_y:I

    sub-int v5, v6, v7

    .line 102
    .local v5, "ydelta":I
    mul-int v6, v4, v4

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    const/16 v7, 0xe1

    if-gt v6, v7, :cond_1

    .line 103
    iget v6, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    invoke-virtual {p1, v6, v8}, Lcom/magicwach/rdefense/Display;->screen2GridY(IZ)I

    move-result v1

    .line 104
    .restart local v1    # "gridy":I
    invoke-virtual {p2, v0, v1}, Lcom/magicwach/rdefense/GameState;->findTowerAt(II)Lcom/magicwach/rdefense/GameTower;

    move-result-object v3

    .line 105
    .local v3, "selected_tower":Lcom/magicwach/rdefense/GameTower;
    if-eqz v3, :cond_1

    .line 106
    iput v9, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    .line 107
    invoke-virtual {p1, v3}, Lcom/magicwach/rdefense/Display;->activateUpgradeDialog(Lcom/magicwach/rdefense/GameTower;)V

    goto :goto_0

    .line 113
    .end local v4    # "xdelta":I
    .end local v5    # "ydelta":I
    .end local v3    # "selected_tower":Lcom/magicwach/rdefense/GameTower;
    :pswitch_1
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Display;->clearTowerButtons()V

    .line 114
    iput v8, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Display;->getActiveTowerID()I

    move-result v6

    invoke-virtual {p2, v6, v0, v1}, Lcom/magicwach/rdefense/GameState;->tryPlaceTower(III)V

    .line 119
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Display;->clearActiveTower()V

    .line 120
    iput v8, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    goto :goto_0

    .line 123
    :pswitch_3
    iget v6, p0, Lcom/magicwach/rdefense/GameInput;->last_move_x:I

    iget v7, p0, Lcom/magicwach/rdefense/GameInput;->last_move_y:I

    invoke-virtual {p1, v6, v7, p2}, Lcom/magicwach/rdefense/Display;->upgradeDialogFingerUp(IILcom/magicwach/rdefense/GameState;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    iput v8, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    goto :goto_0

    .line 133
    .end local v0    # "gridx":I
    .end local v1    # "gridy":I
    :cond_5
    iput v8, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/GameInput;->state:I

    .line 8
    return-void
.end method
