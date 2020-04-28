.class Lcom/magicwach/rdefense/RewardData$RewardProp;
.super Ljava/lang/Object;
.source "RewardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/RewardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RewardProp"
.end annotation


# static fields
.field private static str_buffer:Ljava/lang/StringBuffer;


# instance fields
.field public base_cost:I

.field private cached_reward_string:Ljava/lang/String;

.field public description_prefix:Ljava/lang/String;

.field public description_suffix:Ljava/lang/String;

.field public increase_type:I

.field public multiplier:I

.field public name:Ljava/lang/String;

.field public reward_level:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base_cost"    # I
    .param p3, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p2, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->base_cost:I

    .line 180
    iput-object p1, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->name:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_suffix:Ljava/lang/String;

    .line 183
    const/4 v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 184
    iput v2, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADReward:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->reward_level:I

    .line 186
    return-void
.end method


# virtual methods
.method public increaseLevel()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->cached_reward_string:Ljava/lang/String;

    .line 196
    iget v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->reward_level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->reward_level:I

    .line 197
    return-void
.end method

.method public nextLevelRewardCost()I
    .locals 3

    .prologue
    .line 188
    iget v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->base_cost:I

    .line 189
    .local v0, "base_cost":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->reward_level:I

    if-ge v1, v2, :cond_0

    .line 190
    mul-int/lit8 v2, v0, 0x6

    div-int/lit8 v0, v2, 0x5

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return v0
.end method

.method public rewardString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->cached_reward_string:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 200
    sget-object v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->str_buffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->str_buffer:Ljava/lang/StringBuffer;

    .line 205
    :goto_0
    sget-object v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->str_buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    iget v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 207
    sget-object v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->str_buffer:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    sget-object v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->str_buffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->reward_level:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_suffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 211
    sget-object v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->str_buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_1
    sget-object v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->str_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->cached_reward_string:Ljava/lang/String;

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/magicwach/rdefense/RewardData$RewardProp;->cached_reward_string:Ljava/lang/String;

    return-object v0

    .line 203
    :cond_3
    sget-object v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->str_buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    sget-object v2, Lcom/magicwach/rdefense/RewardData$RewardProp;->str_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
