.class public Lcom/magicwach/rdefense/GridObject;
.super Ljava/lang/Object;
.source "GridObject.java"


# static fields
.field public static final GAME_ENEMY_CLASS:I = 0x2

.field public static final GAME_TOWER_CLASS:I = 0x1


# instance fields
.field private class_type:I

.field protected first_state:I

.field protected gridx:I

.field protected gridy:I

.field public next_y:Lcom/magicwach/rdefense/GridObject;

.field public prev_y:Lcom/magicwach/rdefense/GridObject;

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassType()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->class_type:I

    return v0
.end method

.method public getFirstState()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->first_state:I

    return v0
.end method

.method public getGridX()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->gridx:I

    return v0
.end method

.method public getGridY()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->gridy:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->type:I

    return v0
.end method

.method protected init_base(IIIII)V
    .locals 0
    .param p1, "gridx"    # I
    .param p2, "gridy"    # I
    .param p3, "type"    # I
    .param p4, "class_type"    # I
    .param p5, "first_state"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/magicwach/rdefense/GridObject;->gridx:I

    .line 19
    iput p2, p0, Lcom/magicwach/rdefense/GridObject;->gridy:I

    .line 20
    iput p5, p0, Lcom/magicwach/rdefense/GridObject;->first_state:I

    .line 21
    iput p3, p0, Lcom/magicwach/rdefense/GridObject;->type:I

    .line 22
    iput p4, p0, Lcom/magicwach/rdefense/GridObject;->class_type:I

    .line 23
    return-void
.end method

.method protected loadBaseState(Ljava/io/ObjectInputStream;Lcom/magicwach/rdefense/GameState;)Z
    .locals 4
    .param p1, "oin"    # Ljava/io/ObjectInputStream;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v1, 0x1

    .line 34
    .local v1, "ok":Z
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v0

    .line 35
    .local v0, "level_data":Lcom/magicwach/rdefense/LevelData;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/GridObject;->gridx:I

    .line 36
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/GridObject;->gridy:I

    .line 37
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/GridObject;->type:I

    .line 38
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/GridObject;->first_state:I

    .line 39
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/magicwach/rdefense/GridObject;->class_type:I

    .line 40
    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->gridx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->gridx:I

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getGridWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->gridy:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->gridy:I

    invoke-virtual {v0}, Lcom/magicwach/rdefense/LevelData;->getGridHeight()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 42
    :cond_0
    const-string v2, "Load Error: object out-of-bounds"

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x0

    .line 70
    :cond_1
    :goto_0
    return v1

    .line 44
    :cond_2
    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->first_state:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->first_state:I

    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getStateIndex()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 46
    :cond_3
    const-string v2, "Load Error: invalid first state index"

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x0

    goto :goto_0

    .line 49
    :cond_4
    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->class_type:I

    packed-switch v2, :pswitch_data_0

    .line 65
    const-string v2, "Load Error: invalid class-type"

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    :pswitch_0
    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_5

    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->type:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1

    .line 52
    :cond_5
    const-string v2, "Load Error: invalid tower type"

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    .line 54
    goto :goto_0

    .line 58
    :pswitch_1
    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->type:I

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/magicwach/rdefense/GridObject;->type:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 59
    :cond_6
    const-string v2, "Load Error: invalid enemy type"

    invoke-virtual {p2, v2}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    .line 61
    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected saveBaseState(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "oout"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->gridx:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->gridy:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 27
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->type:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 28
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->first_state:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/magicwach/rdefense/GridObject;->class_type:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 30
    return-void
.end method
