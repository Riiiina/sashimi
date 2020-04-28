.class public final Lcom/magicwach/rdefense/RewardData;
.super Ljava/lang/Object;
.source "RewardData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/RewardData$RewardProp;
    }
.end annotation


# static fields
.field public static final ANTIAIR_SPEED_UPGRADE:I = 0x3

.field public static final ARTILLERY_SPEED_UPGRADE:I = 0x4

.field public static final BULLET_UPGRADE:I = 0x0

.field public static final EXPLOSIVES_UPGRADE:I = 0x1

.field public static final FLAME_DURATION_UPGRADE:I = 0x5

.field public static final HEALTH_UPGRADE:I = 0x7

.field public static final MINE_TOWER_UPGRADED:I = 0xa

.field private static final PERCENT_POWER:I = 0x1

.field private static final PERCENT_SPEED:I = 0x2

.field private static final PERCENT_TIME:I = 0x3

.field private static final POWER_UP:I = 0x0

.field private static final PREFS_PREFIX:Ljava/lang/String; = "ADReward:"

.field public static final REWARD_TYPE_COUNT:I = 0xb

.field public static final ROCKET_SPEED_UPGRADE:I = 0x2

.field public static final SLOW_DURATION_UPGRADE:I = 0x6

.field public static final STARTING_CASH_UPGRADE:I = 0x8

.field public static final TELEPORT_TOWER_UPGRADED:I = 0x9

.field private static final UNLOCKED:I = 0x4

.field private static prefs:Landroid/content/SharedPreferences;

.field private static reward_points:I

.field private static reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method public static applyAward(II)I
    .locals 3
    .param p0, "val"    # I
    .param p1, "type"    # I

    .prologue
    .line 87
    invoke-static {p1}, Lcom/magicwach/rdefense/RewardData;->rewardFactor(I)I

    move-result v0

    .line 88
    .local v0, "amount":I
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_0
    return p0

    .line 90
    :pswitch_0
    add-int/2addr p0, v0

    .line 91
    goto :goto_0

    .line 94
    :pswitch_1
    add-int/lit8 v1, v0, 0x64

    mul-int/2addr v1, p0

    div-int/lit8 p0, v1, 0x64

    .line 95
    goto :goto_0

    .line 97
    :pswitch_2
    mul-int/lit8 v1, p0, 0x64

    add-int/lit8 v2, v0, 0x64

    div-int p0, v1, v2

    .line 98
    .restart local p0    # "val":I
    goto :goto_0

    .line 100
    :pswitch_3
    move p0, v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static gameWon()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-string v7, "ADMaxLevelWon"

    const-string v6, "ADDifficultyLevel"

    .line 159
    sget-object v3, Lcom/magicwach/rdefense/RewardData;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "ADDifficultyLevel"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 160
    .local v1, "level":I
    sget-object v3, Lcom/magicwach/rdefense/RewardData;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "ADMaxLevelWon"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 161
    .local v2, "max_level_won":I
    sget-object v3, Lcom/magicwach/rdefense/RewardData;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "ADDifficultyLevel"

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    if-le v1, v2, :cond_0

    .line 164
    const-string v3, "ADMaxLevelWon"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method

.method public static getRewardPoints()I
    .locals 1

    .prologue
    .line 150
    sget v0, Lcom/magicwach/rdefense/RewardData;->reward_points:I

    return v0
.end method

.method public static increaseRewardPoints(I)V
    .locals 3
    .param p0, "num_points"    # I

    .prologue
    .line 153
    sget v1, Lcom/magicwach/rdefense/RewardData;->reward_points:I

    add-int/2addr v1, p0

    sput v1, Lcom/magicwach/rdefense/RewardData;->reward_points:I

    .line 154
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ADRewardPoints"

    sget v2, Lcom/magicwach/rdefense/RewardData;->reward_points:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void
.end method

.method public static init(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xa

    .line 17
    sput-object p0, Lcom/magicwach/rdefense/RewardData;->prefs:Landroid/content/SharedPreferences;

    .line 18
    const-string v1, "ADRewardPoints"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/magicwach/rdefense/RewardData;->reward_points:I

    .line 19
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/magicwach/rdefense/RewardData$RewardProp;

    sput-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    .line 20
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    const-string v1, "\u52a0\u5f3a\u5f39\u836f"

    const v2, 0xc350

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 21
    .local v0, "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 22
    const-string v1, "\u589e\u52a0\u5f39\u836f\u5a01\u529b"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u52a0\u5f3a\u7206\u70b8\u5a01\u529b"

    const v2, 0x124f8

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 24
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aput-object v0, v1, v4

    .line 25
    const-string v1, "\u589e\u52a0\u706b\u7bad/\u5bfc\u5f39/\u8feb\u51fb\u70ae\u5f39\u7206\u70b8\u5a01\u529b"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 26
    iput v3, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 27
    const-string v1, "%"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_suffix:Ljava/lang/String;

    .line 28
    iput v4, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    .line 29
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u63d0\u5347\u706b\u7bad\u586b\u5f39\u901f\u5ea6"

    const v2, 0x9c40

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 30
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aput-object v0, v1, v5

    .line 31
    const-string v1, "\u63d0\u5347\u706b\u7bad\u88c5\u586b"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 32
    iput v3, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 33
    const-string v1, "% \u901f\u5ea6"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_suffix:Ljava/lang/String;

    .line 34
    iput v5, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    .line 35
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u63d0\u5347\u9632\u7a7a\u88c5\u586b\u901f\u5ea6"

    const/16 v2, 0x4e20

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 36
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aput-object v0, v1, v6

    .line 37
    const-string v1, "\u63d0\u5347\u9632\u7a7a\u5bfc\u5f39\u88c5\u586b"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 38
    iput v3, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 39
    const-string v1, "% \u901f\u5ea6"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_suffix:Ljava/lang/String;

    .line 40
    iput v5, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    .line 41
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u63d0\u5347\u706b\u70ae\u88c5\u586b\u901f\u5ea6"

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 42
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aput-object v0, v1, v7

    .line 43
    const-string v1, "\u63d0\u5347\u88c5\u586b \u8feb\u51fb\u70ae/\u70ae\u5f39"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 44
    iput v3, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 45
    const-string v1, "% \u901f\u5ea6"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_suffix:Ljava/lang/String;

    .line 46
    iput v5, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    .line 47
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u706b\u7130\u4f24\u5bb3\u4f24\u65f6\u95f4"

    const/16 v2, 0x3a98

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 48
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 49
    const-string v1, "\u589e\u52a0\u706b\u7130\u7684\u5bb3\u4f24\u65f6\u95f4"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 50
    iput v3, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 51
    const-string v1, "%"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_suffix:Ljava/lang/String;

    .line 52
    iput v6, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    .line 53
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u51cf\u901f\u65f6\u95f4"

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 54
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 55
    const-string v1, "\u589e\u52a0\u70ae\u5854\u51cf\u901f\u5f71\u54cd\u7684\u6301\u7eed\u65f6\u95f4"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 56
    iput v3, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 57
    const-string v1, "%"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_suffix:Ljava/lang/String;

    .line 58
    iput v6, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    .line 59
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u589e\u52a0\u751f\u547d\u503c"

    const/16 v2, 0x2710

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 60
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 61
    const-string v1, "\u589e\u52a0\u57fa\u7840\u751f\u547d\u503c"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u589e\u52a0\u73b0\u91d1\u5956\u52b1"

    const/16 v2, 0x61a8

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 63
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 64
    const-string v1, "\u589e\u52a0\u5f00\u59cb\u73b0\u91d1"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 65
    const/4 v1, 0x5

    iput v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 66
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u89e3\u9501\u8fdc\u8ddd\u79bb\u4f20\u9001\u70ae\u5854"

    const v2, 0xf4240

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 67
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 68
    const-string v1, "\u628a\u5373\u5c06\u901a\u8fc7\u7684\u654c\u4eba\u4f20\u9001\u56de\u8d77\u70b9"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 69
    iput v4, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 70
    iput v7, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    .line 71
    new-instance v0, Lcom/magicwach/rdefense/RewardData$RewardProp;

    .end local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    const-string v1, "\u89e3\u9501\u5730\u96f7\u70ae\u5854"

    const v2, 0x7a120

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/RewardData$RewardProp;-><init>(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 72
    .restart local v0    # "up":Lcom/magicwach/rdefense/RewardData$RewardProp;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aput-object v0, v1, v3

    .line 73
    const-string v1, "\u589e\u52a0\u8e29\u5230\u5730\u96f7\u65f6\u7684\u4f24\u5bb3"

    iput-object v1, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->description_prefix:Ljava/lang/String;

    .line 74
    iput v4, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    .line 75
    iput v7, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    .line 76
    return-void
.end method

.method public static isUnlockable(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 84
    sget-object v0, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 106
    sget-object v0, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static nextLevelRewardCost(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 109
    sget-object v0, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/magicwach/rdefense/RewardData$RewardProp;->nextLevelRewardCost()I

    move-result v0

    return v0
.end method

.method public static nextLevelRewardString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 112
    sget-object v0, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/magicwach/rdefense/RewardData$RewardProp;->rewardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rewardFactor(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 81
    sget-object v0, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->reward_level:I

    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v1, v1, p0

    iget v1, v1, Lcom/magicwach/rdefense/RewardData$RewardProp;->multiplier:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public static rewardLevel(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 78
    sget-object v0, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/RewardData$RewardProp;->reward_level:I

    return v0
.end method

.method public static towerString(I)Ljava/lang/String;
    .locals 6
    .param p0, "type"    # I

    .prologue
    const-string v5, "\u653b\u51fb\u7b49\u7ea7 "

    const-string v4, "%)"

    const-string v3, " (+"

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "ret":Ljava/lang/String;
    sget-object v1, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v1, v1, p0

    iget v1, v1, Lcom/magicwach/rdefense/RewardData$RewardProp;->increase_type:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u653b\u51fb\u7b49\u7ea7 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/magicwach/rdefense/RewardData;->rewardLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/magicwach/rdefense/RewardData;->rewardFactor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u901f\u5ea6\u7b49\u7ea7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/magicwach/rdefense/RewardData;->rewardLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/magicwach/rdefense/RewardData;->rewardFactor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 124
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6548\u679c\u7b49\u7ea7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/magicwach/rdefense/RewardData;->rewardLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/magicwach/rdefense/RewardData;->rewardFactor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 127
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u653b\u51fb\u7b49\u7ea7 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/magicwach/rdefense/RewardData;->rewardLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/magicwach/rdefense/RewardData;->rewardFactor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 130
    :pswitch_4
    const-string v0, ""

    .restart local v0    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static tryReward(I)Z
    .locals 6
    .param p0, "type"    # I

    .prologue
    .line 136
    sget-object v4, Lcom/magicwach/rdefense/RewardData;->reward_props:[Lcom/magicwach/rdefense/RewardData$RewardProp;

    aget-object v3, v4, p0

    .line 137
    .local v3, "rp":Lcom/magicwach/rdefense/RewardData$RewardProp;
    invoke-virtual {v3}, Lcom/magicwach/rdefense/RewardData$RewardProp;->nextLevelRewardCost()I

    move-result v0

    .line 138
    .local v0, "cost":I
    sget v4, Lcom/magicwach/rdefense/RewardData;->reward_points:I

    if-gt v0, v4, :cond_1

    const/4 v4, 0x1

    move v2, v4

    .line 139
    .local v2, "ok":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v3}, Lcom/magicwach/rdefense/RewardData$RewardProp;->increaseLevel()V

    .line 141
    sget v4, Lcom/magicwach/rdefense/RewardData;->reward_points:I

    sub-int/2addr v4, v0

    sput v4, Lcom/magicwach/rdefense/RewardData;->reward_points:I

    .line 142
    sget-object v4, Lcom/magicwach/rdefense/RewardData;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 143
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ADRewardPoints"

    sget v5, Lcom/magicwach/rdefense/RewardData;->reward_points:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADReward:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/magicwach/rdefense/RewardData$RewardProp;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/magicwach/rdefense/RewardData$RewardProp;->reward_level:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v2

    .line 138
    .end local v2    # "ok":Z
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0
.end method
