.class public final Lcom/magicwach/rdefense/GridObjectOrder;
.super Ljava/lang/Object;
.source "GridObjectOrder.java"


# instance fields
.field private obj_list:Lcom/magicwach/rdefense/GridObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcy(Lcom/magicwach/rdefense/GridObject;)I
    .locals 4
    .param p1, "obj"    # Lcom/magicwach/rdefense/GridObject;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GridObject;->getClassType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GridObject;->getGridY()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    const/16 v3, 0xf

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/magicwach/rdefense/GridObject;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/magicwach/rdefense/TowerData;->towerHeight(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 58
    .end local p1    # "obj":Lcom/magicwach/rdefense/GridObject;
    :goto_0
    return v2

    .line 57
    .restart local p1    # "obj":Lcom/magicwach/rdefense/GridObject;
    :cond_0
    check-cast p1, Lcom/magicwach/rdefense/Enemy;

    .end local p1    # "obj":Lcom/magicwach/rdefense/GridObject;
    move-object v0, p1

    check-cast v0, Lcom/magicwach/rdefense/Enemy;

    move-object v1, v0

    .line 58
    .local v1, "e":Lcom/magicwach/rdefense/Enemy;
    invoke-virtual {v1}, Lcom/magicwach/rdefense/Enemy;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/magicwach/rdefense/EnemyData;->isFlyer(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v2

    const v3, 0x186a0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v2

    goto :goto_0
.end method

.method private shiftDown(Lcom/magicwach/rdefense/GridObject;)V
    .locals 4
    .param p1, "obj"    # Lcom/magicwach/rdefense/GridObject;

    .prologue
    .line 86
    move-object v0, p1

    .line 87
    .local v0, "iter_obj":Lcom/magicwach/rdefense/GridObject;
    const/4 v1, 0x0

    .line 89
    .local v1, "prev_obj":Lcom/magicwach/rdefense/GridObject;
    :goto_0
    iget-object v1, v0, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 90
    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/GridObjectOrder;->calcy(Lcom/magicwach/rdefense/GridObject;)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/GridObjectOrder;->calcy(Lcom/magicwach/rdefense/GridObject;)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 96
    :cond_0
    if-eq v0, p1, :cond_1

    .line 97
    invoke-virtual {p0, p1}, Lcom/magicwach/rdefense/GridObjectOrder;->deleteObject(Lcom/magicwach/rdefense/GridObject;)V

    .line 98
    iput-object p1, v0, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 99
    iput-object v0, p1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 100
    if-eqz v1, :cond_3

    .line 101
    iput-object v1, p1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 102
    iput-object p1, v1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 108
    :cond_1
    :goto_1
    return-void

    .line 94
    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 104
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 105
    iput-object p1, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    goto :goto_1
.end method

.method private shiftUp(Lcom/magicwach/rdefense/GridObject;)V
    .locals 4
    .param p1, "obj"    # Lcom/magicwach/rdefense/GridObject;

    .prologue
    .line 63
    move-object v0, p1

    .line 64
    .local v0, "iter_obj":Lcom/magicwach/rdefense/GridObject;
    const/4 v1, 0x0

    .line 66
    .local v1, "next_obj":Lcom/magicwach/rdefense/GridObject;
    :goto_0
    iget-object v1, v0, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 67
    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/GridObjectOrder;->calcy(Lcom/magicwach/rdefense/GridObject;)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/GridObjectOrder;->calcy(Lcom/magicwach/rdefense/GridObject;)I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 73
    :cond_0
    if-eq v0, p1, :cond_1

    .line 74
    invoke-virtual {p0, p1}, Lcom/magicwach/rdefense/GridObjectOrder;->deleteObject(Lcom/magicwach/rdefense/GridObject;)V

    .line 75
    iput-object p1, v0, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 76
    iput-object v0, p1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 77
    if-eqz v1, :cond_3

    .line 78
    iput-object v1, p1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 79
    iput-object p1, v1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 84
    :cond_1
    :goto_1
    return-void

    .line 71
    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 81
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "next_obj":Lcom/magicwach/rdefense/GridObject;
    iget-object v1, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    .local v1, "obj":Lcom/magicwach/rdefense/GridObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 46
    iget-object v0, v1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 47
    iput-object v2, v1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 48
    iput-object v2, v1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 45
    move-object v1, v0

    goto :goto_0

    .line 50
    :cond_0
    iput-object v2, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    .line 51
    return-void
.end method

.method public deleteObject(Lcom/magicwach/rdefense/GridObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/magicwach/rdefense/GridObject;

    .prologue
    const/4 v2, 0x0

    .line 15
    iget-object v0, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    if-ne p1, v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    iget-object v0, v0, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    iput-object v0, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    .line 17
    iget-object v0, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    iput-object v2, v0, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    iget-object v1, p1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    iput-object v1, v0, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 26
    :cond_1
    iput-object v2, p1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 27
    iput-object v2, p1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 28
    return-void

    .line 21
    :cond_2
    iget-object v0, p1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    iget-object v1, p1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    iput-object v1, v0, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    goto :goto_0
.end method

.method public ensureSorted()V
    .locals 4

    .prologue
    .line 30
    const-string v3, "GO.ensureSorted"

    invoke-static {v3}, Lcom/magicwach/rdefense/Profiler;->add(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    .local v1, "obj":Lcom/magicwach/rdefense/GridObject;
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/GridObjectOrder;->calcy(Lcom/magicwach/rdefense/GridObject;)I

    move-result v2

    .line 34
    .local v2, "objy":I
    iget-object v0, v1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 35
    .local v0, "next_obj":Lcom/magicwach/rdefense/GridObject;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/GridObjectOrder;->calcy(Lcom/magicwach/rdefense/GridObject;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 36
    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/GridObjectOrder;->shiftUp(Lcom/magicwach/rdefense/GridObject;)V

    .line 32
    :cond_0
    :goto_1
    move-object v1, v0

    goto :goto_0

    .line 37
    :cond_1
    iget-object v3, v1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    invoke-direct {p0, v3}, Lcom/magicwach/rdefense/GridObjectOrder;->calcy(Lcom/magicwach/rdefense/GridObject;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 38
    move-object v0, v1

    .line 39
    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/GridObjectOrder;->shiftDown(Lcom/magicwach/rdefense/GridObject;)V

    goto :goto_1

    .line 42
    .end local v2    # "objy":I
    .end local v0    # "next_obj":Lcom/magicwach/rdefense/GridObject;
    :cond_2
    return-void
.end method

.method public getSortedList()Lcom/magicwach/rdefense/GridObject;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    return-object v0
.end method

.method public insertObject(Lcom/magicwach/rdefense/GridObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/magicwach/rdefense/GridObject;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    iput-object p1, v0, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 10
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/magicwach/rdefense/GridObject;->prev_y:Lcom/magicwach/rdefense/GridObject;

    .line 11
    iget-object v0, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    iput-object v0, p1, Lcom/magicwach/rdefense/GridObject;->next_y:Lcom/magicwach/rdefense/GridObject;

    .line 12
    iput-object p1, p0, Lcom/magicwach/rdefense/GridObjectOrder;->obj_list:Lcom/magicwach/rdefense/GridObject;

    .line 13
    return-void
.end method
