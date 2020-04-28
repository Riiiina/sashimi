.class Lcom/magicwach/rdefense/AchievementData$AchievementProp;
.super Ljava/lang/Object;
.source "AchievementData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/AchievementData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AchievementProp"
.end annotation


# instance fields
.field private cached_description:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field private level:I

.field public name:Ljava/lang/String;

.field private saved_level:I

.field private trigger_level:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "trigger_level"    # I

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->name:Ljava/lang/String;

    .line 286
    iput p3, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->trigger_level:I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADAchievement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    .line 288
    iget v0, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    iput v0, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->saved_level:I

    .line 289
    iget v0, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    if-lt v0, p3, :cond_0

    .line 290
    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->access$004()I

    .line 292
    :cond_0
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->cached_description:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 295
    iget v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->trigger_level:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 296
    iget-object v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    iput-object v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->cached_description:Ljava/lang/String;

    .line 308
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->cached_description:Ljava/lang/String;

    return-object v1

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 299
    .local v0, "buff":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    iget v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 302
    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    iget v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->trigger_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 304
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->cached_description:Ljava/lang/String;

    goto :goto_0
.end method

.method public increaseLevel(ILandroid/content/SharedPreferences;)Z
    .locals 4
    .param p1, "amount"    # I
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "achieved":Z
    iget v2, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    iget v3, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->trigger_level:I

    if-ge v2, v3, :cond_0

    if-lez p1, :cond_0

    .line 314
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->cached_description:Ljava/lang/String;

    .line 315
    iget v2, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    .line 316
    iget v2, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    iget v3, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->trigger_level:I

    if-lt v2, v3, :cond_0

    .line 317
    iget v2, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->trigger_level:I

    iput v2, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    .line 318
    const/4 v0, 0x1

    .line 319
    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->access$004()I

    .line 320
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 321
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->trySaveLevel(Landroid/content/SharedPreferences$Editor;)V

    .line 322
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v0
.end method

.method public isAchieved()Z
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    iget v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->trigger_level:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveIsPending()Z
    .locals 2

    .prologue
    .line 334
    iget v0, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->saved_level:I

    iget v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public trySaveLevel(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 328
    iget v0, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->saved_level:I

    iget v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    if-eq v0, v1, :cond_0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADAchievement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    iget v0, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->level:I

    iput v0, p0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->saved_level:I

    .line 332
    :cond_0
    return-void
.end method
