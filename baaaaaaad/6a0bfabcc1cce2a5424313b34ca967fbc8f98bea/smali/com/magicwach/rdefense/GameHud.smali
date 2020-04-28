.class public final Lcom/magicwach/rdefense/GameHud;
.super Ljava/lang/Object;
.source "GameHud.java"


# static fields
.field private static bonus:Lcom/magicwach/rdefense/HudEntry;

.field private static health:Lcom/magicwach/rdefense/HudEntry;

.field private static last_state_idx:I

.field private static level:Lcom/magicwach/rdefense/HudEntry;

.field private static money:Lcom/magicwach/rdefense/HudEntry;

.field private static score:Lcom/magicwach/rdefense/HudEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/magicwach/rdefense/GameState;)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    .line 28
    const/4 v0, 0x5

    .line 29
    .local v0, "offset":I
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getStateIndex()I

    move-result v0

    .end local v0    # "offset":I
    sget v1, Lcom/magicwach/rdefense/GameHud;->last_state_idx:I

    sub-int v5, v0, v1

    .line 30
    .local v5, "frames":I
    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getStateIndex()I

    move-result v0

    sput v0, Lcom/magicwach/rdefense/GameHud;->last_state_idx:I

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/magicwach/rdefense/GameState;->getGameEventList(I)Lcom/magicwach/rdefense/GameEvent;

    move-result-object v0

    .line 32
    .local v0, "e":Lcom/magicwach/rdefense/GameEvent;
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    iget-object v1, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-lez v1, :cond_0

    .line 34
    iget-object v1, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    .line 35
    .local v1, "score_add":I
    iget-object v2, v0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 36
    sget-object v2, Lcom/magicwach/rdefense/GameHud;->score:Lcom/magicwach/rdefense/HudEntry;

    invoke-virtual {v2, v1}, Lcom/magicwach/rdefense/HudEntry;->appendAdder(I)V

    .line 32
    .end local v1    # "score_add":I
    :cond_0
    iget-object v0, v0, Lcom/magicwach/rdefense/GameEvent;->next:Lcom/magicwach/rdefense/GameEvent;

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .end local v0    # "e":Lcom/magicwach/rdefense/GameEvent;
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 40
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    sget-object v0, Lcom/magicwach/rdefense/GameHud;->money:Lcom/magicwach/rdefense/HudEntry;

    sget v1, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    const/16 v2, 0xa

    sub-int v3, v1, v2

    const/16 v4, 0x14

    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getMoney()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/magicwach/rdefense/HudEntry;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 42
    sget-object v0, Lcom/magicwach/rdefense/GameHud;->health:Lcom/magicwach/rdefense/HudEntry;

    sget v1, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    const/4 v2, 0x5

    sub-int v3, v1, v2

    const/16 v4, 0x28

    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getHealth()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/magicwach/rdefense/HudEntry;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 43
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    sget-object v0, Lcom/magicwach/rdefense/GameHud;->level:Lcom/magicwach/rdefense/HudEntry;

    sget v1, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    shr-int/lit8 v3, v1, 0x1

    const/16 v4, 0x14

    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getLevelData()Lcom/magicwach/rdefense/LevelData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magicwach/rdefense/LevelData;->getLevelNum()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/magicwach/rdefense/HudEntry;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 45
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 46
    sget-object v0, Lcom/magicwach/rdefense/GameHud;->bonus:Lcom/magicwach/rdefense/HudEntry;

    const/4 v3, 0x5

    const/16 v4, 0x14

    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getLevelBonus()I

    move-result v1

    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->totalCount()I

    move-result v2

    add-int v6, v1, v2

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/magicwach/rdefense/HudEntry;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 48
    sget-object v0, Lcom/magicwach/rdefense/GameHud;->score:Lcom/magicwach/rdefense/HudEntry;

    const/4 v3, 0x5

    const/16 v4, 0x28

    invoke-virtual {p2}, Lcom/magicwach/rdefense/GameState;->getScore()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/magicwach/rdefense/HudEntry;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 49
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .end local p0    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 50
    return-void
.end method

.method public static init(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "difficulty_level"    # I

    .prologue
    .line 17
    new-instance v0, Lcom/magicwach/rdefense/HudEntry;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/magicwach/rdefense/HudEntry;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magicwach/rdefense/GameHud;->health:Lcom/magicwach/rdefense/HudEntry;

    .line 18
    sget-object v0, Lcom/magicwach/rdefense/GameHud;->health:Lcom/magicwach/rdefense/HudEntry;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020015

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/HudEntry;->setPrefixImage(Landroid/graphics/Bitmap;)V

    .line 20
    new-instance v0, Lcom/magicwach/rdefense/HudEntry;

    const-string v1, "$:"

    invoke-direct {v0, v1}, Lcom/magicwach/rdefense/HudEntry;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magicwach/rdefense/GameHud;->money:Lcom/magicwach/rdefense/HudEntry;

    .line 21
    new-instance v0, Lcom/magicwach/rdefense/HudEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b49\u7ea7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/magicwach/rdefense/HudEntry;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magicwach/rdefense/GameHud;->level:Lcom/magicwach/rdefense/HudEntry;

    .line 22
    sget-object v0, Lcom/magicwach/rdefense/GameHud;->level:Lcom/magicwach/rdefense/HudEntry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/HudEntry;->setFader(Z)V

    .line 23
    new-instance v0, Lcom/magicwach/rdefense/HudEntry;

    const-string v1, "\u5f97\u5206:"

    invoke-direct {v0, v1}, Lcom/magicwach/rdefense/HudEntry;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magicwach/rdefense/GameHud;->score:Lcom/magicwach/rdefense/HudEntry;

    .line 24
    new-instance v0, Lcom/magicwach/rdefense/HudEntry;

    const-string v1, "\u5956\u91d1:"

    invoke-direct {v0, v1}, Lcom/magicwach/rdefense/HudEntry;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magicwach/rdefense/GameHud;->bonus:Lcom/magicwach/rdefense/HudEntry;

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/magicwach/rdefense/GameHud;->last_state_idx:I

    .line 26
    return-void
.end method
