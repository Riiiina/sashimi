.class public final Lcom/magicwach/rdefense/CollisionGrid;
.super Ljava/lang/Object;
.source "CollisionGrid.java"


# static fields
.field private static final CGRID_PIXEL_SIZE:I = 0x78


# instance fields
.field private grid:[Lcom/magicwach/rdefense/Enemy;

.field private gridh:I

.field private gridw:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "grid_width"    # I
    .param p2, "grid_height"    # I

    .prologue
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    mul-int/lit8 v0, p1, 0x28

    add-int/lit8 v0, v0, 0x78

    sub-int p1, v0, v1

    .line 7
    mul-int/lit8 v0, p2, 0x28

    add-int/lit8 v0, v0, 0x78

    sub-int p2, v0, v1

    .line 8
    div-int/lit8 v0, p1, 0x78

    iput v0, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridw:I

    .line 9
    div-int/lit8 v0, p2, 0x78

    iput v0, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridh:I

    .line 10
    iget v0, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridw:I

    iget v1, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridh:I

    mul-int/2addr v0, v1

    new-array v0, v0, [Lcom/magicwach/rdefense/Enemy;

    iput-object v0, p0, Lcom/magicwach/rdefense/CollisionGrid;->grid:[Lcom/magicwach/rdefense/Enemy;

    .line 11
    return-void
.end method


# virtual methods
.method public add(Lcom/magicwach/rdefense/Enemy;)V
    .locals 3
    .param p1, "e"    # Lcom/magicwach/rdefense/Enemy;

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->calcPixelY()I

    move-result v1

    div-int/lit8 v1, v1, 0x78

    iget v2, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridw:I

    mul-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/magicwach/rdefense/Enemy;->calcPixelX()I

    move-result v2

    div-int/lit8 v2, v2, 0x78

    add-int v0, v1, v2

    .line 18
    .local v0, "idx":I
    iget-object v1, p0, Lcom/magicwach/rdefense/CollisionGrid;->grid:[Lcom/magicwach/rdefense/Enemy;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/magicwach/rdefense/Enemy;->grid_next:Lcom/magicwach/rdefense/Enemy;

    .line 19
    iget-object v1, p0, Lcom/magicwach/rdefense/CollisionGrid;->grid:[Lcom/magicwach/rdefense/Enemy;

    aput-object p1, v1, v0

    .line 20
    return-void
.end method

.method public getList(II)Lcom/magicwach/rdefense/Enemy;
    .locals 2
    .param p1, "gridx"    # I
    .param p2, "gridy"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/magicwach/rdefense/CollisionGrid;->grid:[Lcom/magicwach/rdefense/Enemy;

    iget v1, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/magicwach/rdefense/CollisionGrid;->grid:[Lcom/magicwach/rdefense/Enemy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public setupGrid(Lcom/magicwach/rdefense/GameTower;)V
    .locals 9
    .param p1, "tower"    # Lcom/magicwach/rdefense/GameTower;

    .prologue
    const/4 v8, 0x1

    .line 25
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getGridX()I

    move-result v7

    mul-int/lit8 v5, v7, 0x28

    .line 26
    .local v5, "tower_x":I
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getGridY()I

    move-result v7

    mul-int/lit8 v6, v7, 0x28

    .line 27
    .local v6, "tower_y":I
    invoke-virtual {p1}, Lcom/magicwach/rdefense/GameTower;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/magicwach/rdefense/TowerData;->attackRadius(I)I

    move-result v2

    .line 28
    .local v2, "radius":I
    sub-int v7, v5, v2

    div-int/lit8 v1, v7, 0x78

    .line 29
    .local v1, "left":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 30
    :cond_0
    add-int v7, v5, v2

    div-int/lit8 v3, v7, 0x78

    .line 31
    .local v3, "right":I
    iget v7, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridw:I

    if-lt v3, v7, :cond_1

    iget v7, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridw:I

    sub-int v3, v7, v8

    .line 32
    :cond_1
    sub-int v7, v6, v2

    div-int/lit8 v4, v7, 0x78

    .line 33
    .local v4, "top":I
    if-gez v4, :cond_2

    const/4 v4, 0x0

    .line 34
    :cond_2
    add-int v7, v6, v2

    div-int/lit8 v0, v7, 0x78

    .line 35
    .local v0, "bottom":I
    iget v7, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridh:I

    if-lt v0, v7, :cond_3

    iget v7, p0, Lcom/magicwach/rdefense/CollisionGrid;->gridh:I

    sub-int v0, v7, v8

    .line 36
    :cond_3
    invoke-virtual {p1, v1, v3, v4, v0}, Lcom/magicwach/rdefense/GameTower;->setCollisionBounds(IIII)V

    .line 37
    return-void
.end method
