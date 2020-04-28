.class public final Lcom/magicwach/rdefense/AchievementData;
.super Ljava/lang/Object;
.source "AchievementData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    }
.end annotation


# static fields
.field public static final ACHIEVEMENT_TYPE_COUNT:I = 0x39

.field public static final ADDICT:I = 0x17

.field public static final AMAZING_GAME:I = 0x22

.field public static final BASIC_10:I = 0x23

.field public static final BASIC_25:I = 0x24

.field public static final BASIC_LVL_40:I = 0x25

.field public static final BASIC_LVL_60:I = 0x26

.field public static final BIG_ONE:I = 0x1e

.field public static final BIG_SAVER:I = 0x1c

.field public static final BIG_SCORE:I = 0x11

.field public static final BIG_SPENDER:I = 0xf

.field public static final CHEAPSKATE:I = 0xe

.field public static final COMPLETE_DIFFICULTY_0:I = 0x0

.field public static final COMPLETE_DIFFICULTY_11:I = 0x4

.field public static final COMPLETE_DIFFICULTY_14:I = 0x5

.field public static final COMPLETE_DIFFICULTY_17:I = 0x6

.field public static final COMPLETE_DIFFICULTY_2:I = 0x1

.field public static final COMPLETE_DIFFICULTY_20:I = 0x7

.field public static final COMPLETE_DIFFICULTY_5:I = 0x2

.field public static final COMPLETE_DIFFICULTY_8:I = 0x3

.field public static final COURTYARD_10:I = 0x30

.field public static final COURTYARD_25:I = 0x31

.field public static final COURTYARD_LVL_15:I = 0x32

.field public static final COURTYARD_LVL_25:I = 0x33

.field public static final CRAZY_SAVER:I = 0x1d

.field public static final DEFEAT_TITAN:I = 0x38

.field public static final EXPERIENCED:I = 0x13

.field public static final FACTORY_10:I = 0x2b

.field public static final FACTORY_25:I = 0x2c

.field public static final FACTORY_LVL_20:I = 0x2d

.field public static final FACTORY_LVL_40:I = 0x2e

.field public static final FAST_LANE:I = 0x16

.field public static final FAST_PACED:I = 0xb

.field public static final GOOD_GAME:I = 0x20

.field public static final GREAT_GAME:I = 0x21

.field public static final GUNNER:I = 0xd

.field public static final HUGE_SCORE:I = 0x12

.field public static final MIXER_A:I = 0x34

.field public static final MIXER_B:I = 0x35

.field public static final MIXER_C:I = 0x36

.field public static final MIXER_D:I = 0x37

.field public static final NO_SALE:I = 0x15

.field public static final PERFECT_100:I = 0xa

.field public static final PERFECT_25:I = 0x8

.field public static final PERFECT_50:I = 0x9

.field public static final POWERED_UP:I = 0x14

.field private static final PREFS_PREFIX:Ljava/lang/String; = "ADAchievement:"

.field public static final RAINY_DAY:I = 0x1b

.field public static final RISK_TAKER:I = 0x19

.field public static final ROCKETMAN:I = 0xc

.field public static final RUINS_10:I = 0x27

.field public static final RUINS_25:I = 0x28

.field public static final RUINS_LVL_30:I = 0x29

.field public static final RUINS_LVL_50:I = 0x2a

.field public static final SEVENTY_FIVE_K:I = 0x18

.field public static final SOLID_EFFORT:I = 0x1a

.field public static final THIRTY_THIRTY:I = 0x2f

.field public static final TWENTY_FIVE_K:I = 0x10

.field public static final WHOPPER:I = 0x1f

.field private static achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

.field private static new_achievements:[I

.field private static new_head:I

.field private static new_tail:I

.field private static prefs:Landroid/content/SharedPreferences;

.field private static total_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method static synthetic access$004()I
    .locals 1

    .prologue
    .line 3
    sget v0, Lcom/magicwach/rdefense/AchievementData;->total_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/magicwach/rdefense/AchievementData;->total_count:I

    return v0
.end method

.method public static dequeueEarned()I
    .locals 4

    .prologue
    .line 258
    const/4 v0, -0x1

    .line 259
    .local v0, "type":I
    sget v1, Lcom/magicwach/rdefense/AchievementData;->new_tail:I

    sget v2, Lcom/magicwach/rdefense/AchievementData;->new_head:I

    if-le v1, v2, :cond_0

    .line 260
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->new_achievements:[I

    sget v2, Lcom/magicwach/rdefense/AchievementData;->new_head:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/magicwach/rdefense/AchievementData;->new_head:I

    aget v0, v1, v2

    .line 262
    :cond_0
    return v0
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 244
    sget-object v0, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 241
    sget-object v0, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static increaseLevel(II)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "amount"    # I

    .prologue
    .line 253
    sget-object v0, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aget-object v0, v0, p0

    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p1, v1}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->increaseLevel(ILandroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/magicwach/rdefense/AchievementData;->new_achievements:[I

    sget v1, Lcom/magicwach/rdefense/AchievementData;->new_tail:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/magicwach/rdefense/AchievementData;->new_tail:I

    aput p0, v0, v1

    .line 256
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/SharedPreferences;)V
    .locals 7
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x19

    const/16 v5, 0xa

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 63
    sput-object p0, Lcom/magicwach/rdefense/AchievementData;->prefs:Landroid/content/SharedPreferences;

    .line 64
    sput v2, Lcom/magicwach/rdefense/AchievementData;->total_count:I

    .line 65
    const/16 v1, 0x39

    new-array v1, v1, [Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    sput-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .line 66
    const/16 v1, 0x39

    new-array v1, v1, [I

    sput-object v1, Lcom/magicwach/rdefense/AchievementData;->new_achievements:[I

    .line 67
    sput v2, Lcom/magicwach/rdefense/AchievementData;->new_tail:I

    sput v2, Lcom/magicwach/rdefense/AchievementData;->new_head:I

    .line 68
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const-string v1, "\u5b8c\u6210\u4efb\u610f\u5730\u56fe"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 69
    .local v0, "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aput-object v0, v1, v2

    .line 70
    const-string v1, "\u5b8c\u6210\u4efb\u610f\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7b49\u7ea7 2"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 72
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aput-object v0, v1, v3

    .line 73
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 2 \u6216\u66f4\u9ad8\u7684\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7b49\u7ea7 5"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 75
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 76
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 5 \u6216\u66f4\u9ad8\u7684\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7b49\u7ea7 8"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 78
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 79
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 8 \u6216\u66f4\u9ad8\u7684\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7b49\u7ea7 11"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 81
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 82
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 11 \u6216\u66f4\u9ad8\u7684\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7b49\u7ea7 14"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 84
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aput-object v0, v1, v4

    .line 85
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 14 \u6216\u66f4\u9ad8\u7684\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7b49\u7ea7 17"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 87
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 88
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 17 \u6216\u66f4\u9ad8\u7684\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7b49\u7ea7 20"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 90
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 91
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 20 \u6216\u66f4\u9ad8\u7684\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210 25"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 93
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 94
    const-string v1, "\u83b7\u5f97\u7b49\u7ea7\u5956\u91d1 25"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210 50"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 96
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 97
    const-string v1, "\u83b7\u5f97\u7b49\u7ea7\u5956\u91d1 50"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5b8c\u6210 100"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 99
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aput-object v0, v1, v5

    .line 100
    const-string v1, "\u5b8c\u6210\u4efb\u610f\u5730\u56fe\uff0c\u800c\u4e0d\u51cf\u5c11\u751f\u547d\u503c"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5feb\u8282\u594f"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 102
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 103
    const-string v1, "\u5b8c\u6210\u4e00\u5f20\u6ca1\u6709\u4ea7\u751f\u51cf\u901f\u6162\u5854\u7684\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u706b\u7bad\u4eba"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 105
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    .line 106
    const-string v1, "\u5b8c\u6210\u4e00\u4e2a\u6ca1\u6709\u4ea7\u751f\u4efb\u4f55\u67aa\u5854\u7684\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u70ae\u624b"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 108
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    .line 109
    const-string v1, "\u5b8c\u6210\u4e00\u4e2a\u6ca1\u6709\u4ea7\u751f\u4efb\u4f55\u706b\u7bad\u5854\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u541d\u556c\u9b3c"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 111
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    .line 112
    const-string v1, "\u5b8c\u6210\u4e00\u5f20\u5730\u56fe\u6ca1\u6709\u5347\u7ea7\u4efb\u4f55\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5927\u5bcc\u8c6a"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 114
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    .line 115
    const-string v1, "\u5b8c\u6210\u5730\u56fe\u4e0a\u6240\u6709\u70ae\u5854\u5347\u7ea7"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "25K \u4ff1\u4e50\u90e8"

    const/16 v2, 0x61a8

    invoke-direct {v0, v1, p0, v2}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 117
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    .line 118
    const-string v1, "\u6218\u80dc 25K \u654c\u4eba"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5927\u5206\u6570"

    const v2, 0xf4240

    invoke-direct {v0, v1, p0, v2}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 120
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    .line 121
    const-string v1, "\u5f97\u5230 1,000,000 \u751f\u547d\u70b9"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5de8\u5927\u7684\u5206\u6570"

    const v2, 0x2faf080

    invoke-direct {v0, v1, p0, v2}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 123
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    .line 124
    const-string v1, "\u5f97\u5230 5,000,000 \u751f\u547d\u70b9"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u6709\u7ecf\u9a8c\u7684"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, p0, v2}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 126
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x13

    aput-object v0, v1, v2

    .line 127
    const-string v1, "\u5b8c\u6210 1000 \u7b49\u7ea7"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u529b\u91cf\u5347\u7ea7"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 129
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    .line 130
    const-string v1, "\u4ee5 12 \u4e2a\u6216\u66f4\u5c11\u7684\u5854\u5b8c\u6210\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u65e0\u51fa\u552e"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 132
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x15

    aput-object v0, v1, v2

    .line 133
    const-string v1, "\u5b8c\u6210\u5730\u56fe\u800c\u6ca1\u6709\u51fa\u552e\u70ae\u5854"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5feb\u901f\u9053"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 135
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x16

    aput-object v0, v1, v2

    .line 136
    const-string v1, "\u5728\u6e38\u620f\u4e2d\u4ee5\u5feb\u8fdb\u6253\u5f00\uff0c\u5b8c\u6210\u81f3\u5c11 75 \u7ea7"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u4e0a\u763e\u8005"

    const/16 v2, 0x1388

    invoke-direct {v0, v1, p0, v2}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 138
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x17

    aput-object v0, v1, v2

    .line 139
    const-string v1, "\u5b8c\u6210 5000 \u7b49\u7ea7"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "75K \u4ff1\u4e50\u90e8"

    const v2, 0x124f8

    invoke-direct {v0, v1, p0, v2}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 141
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x18

    aput-object v0, v1, v2

    .line 142
    const-string v1, "\u51fb\u8d25 75K \u654c\u4eba"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5192\u9669\u8005"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 144
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aput-object v0, v1, v6

    .line 145
    const-string v1, "\u5b8c\u6210\u5730\u56fe\uff0c\u5269\u4f59 1 \u751f\u547d\u503c"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u575a\u5b9e\u7684\u6210\u5c31"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 147
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    .line 148
    const-string v1, "\u7528\u81f3\u5c11 18 \u751f\u547d\u503c\u5b8c\u6210\u5730\u56fe"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u7a77\u56f0\u671f"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 150
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    .line 151
    const-string v1, "\u5728\u6e38\u620f\u4e2d\u6536\u96c6 $1000"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5927\u50a8\u84c4\u8005"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 153
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    .line 154
    const-string v1, "\u5728\u6e38\u620f\u4e2d\u6536\u96c6 $2500"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 155
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u75af\u72c2\u7684\u50a8\u84c4\u8005"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 156
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    .line 157
    const-string v1, "\u5728\u6e38\u620f\u4e2d\u6536\u96c6$5000"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5927\u5bb6\u4f19"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 159
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    .line 160
    const-string v1, "\u4ece\u5355\u72ec\u4e00\u4e2a\u654c\u4eba\u8eab\u4e0a\u8d5a\u5230500+ \u70b9"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u7855\u5927\u7684\u7269\u4f53"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 162
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    .line 163
    const-string v1, "\u4ece\u5355\u4e00\u7684\u654c\u4eba\u8d5a1000 +\u70b9"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u7cbe\u5f69\u7684\u6bd4\u8d5b"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 165
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x20

    aput-object v0, v1, v2

    .line 166
    const-string v1, "\u5728\u6e38\u620f\u4e2d\u8d5a\u53d6 250000+ \u70b9\u6570"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5927\u6e38\u620f"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 168
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x21

    aput-object v0, v1, v2

    .line 169
    const-string v1, "\u5728\u6e38\u620f\u4e2d\u8d5a\u53d6 500000+ \u70b9\u6570"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u523a\u6fc0\u7684\u6e38\u620f"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 171
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x22

    aput-object v0, v1, v2

    .line 172
    const-string v1, "\u5728\u6e38\u620f\u4e2d\u8d5a\u53d61000000 +\u70b9"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 173
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u521d\u7ea7 10"

    invoke-direct {v0, v1, p0, v5}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 174
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x23

    aput-object v0, v1, v2

    .line 175
    const-string v1, "\u5b8c\u6210\u521d\u7ea7 10 \u6b21"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u521d\u7ea7 25"

    invoke-direct {v0, v1, p0, v6}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 177
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x24

    aput-object v0, v1, v2

    .line 178
    const-string v1, "\u5b8c\u6210\u521d\u7ea7 25 \u6b21"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u521d\u7ea7 40"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 180
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x25

    aput-object v0, v1, v2

    .line 181
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 40 \u7684\u521d\u7ea7"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 182
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u521d\u7ea7 60"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 183
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x26

    aput-object v0, v1, v2

    .line 184
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 60 \u7684\u521d\u7ea7"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 185
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5e9f\u589f 10"

    invoke-direct {v0, v1, p0, v5}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 186
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x27

    aput-object v0, v1, v2

    .line 187
    const-string v1, "\u5b8c\u6210\u5e9f\u589f 10 \u6b21"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5e9f\u589f 25"

    invoke-direct {v0, v1, p0, v6}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 189
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x28

    aput-object v0, v1, v2

    .line 190
    const-string v1, "\u5b8c\u6210\u5e9f\u589f 25 \u6b21"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "30\u7ea7 \u5e9f\u589f"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 192
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x29

    aput-object v0, v1, v2

    .line 193
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 30 \u7684\u5e9f\u589f"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "50\u7ea7 \u5e9f\u589f"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 195
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    .line 196
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 50 \u7684\u5e9f\u589f"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5de5\u5382 10"

    invoke-direct {v0, v1, p0, v5}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 198
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    .line 199
    const-string v1, "\u5b8c\u6210\u5de5\u5382 10 \u6b21"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 200
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5de5\u5382 25"

    invoke-direct {v0, v1, p0, v6}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 201
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    .line 202
    const-string v1, "\u5b8c\u6210\u5de5\u5382 25 \u6b21"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5de5\u5382\u7ea7\u522b20"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 204
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    .line 205
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 20 \u7684\u5de5\u5382"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5de5\u5382\u7ea7\u522b 40"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 207
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    .line 208
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 40 \u7684\u5de5\u5382"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 209
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "30/30"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 210
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    .line 211
    const-string v1, "30 \u5b8c\u6210\u7ea7\u522b>= 30 \u4e14\u5065\u5eb7>= 30 \u7684\u6e38\u620f"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 212
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5ead\u9662 10"

    invoke-direct {v0, v1, p0, v5}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 213
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x30

    aput-object v0, v1, v2

    .line 214
    const-string v1, "\u5b8c\u6210\u5ead\u9662 10 \u6b21"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 215
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5ead\u9662 25"

    invoke-direct {v0, v1, p0, v6}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 216
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x31

    aput-object v0, v1, v2

    .line 217
    const-string v1, "\u5b8c\u6210\u5ead\u9662 25 \u6b21"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5ead\u9662\u7ea7\u522b 15"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 219
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x32

    aput-object v0, v1, v2

    .line 220
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 15 \u7684\u5ead\u9662"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 221
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u5ead\u9662\u7ea7\u522b25"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 222
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x33

    aput-object v0, v1, v2

    .line 223
    const-string v1, "\u5b8c\u6210\u96be\u5ea6\u7ea7\u522b\u4e3a 25 \u7684\u5ead\u9662"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 224
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "VR-A"

    invoke-direct {v0, v1, p0, v4}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 225
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x34

    aput-object v0, v1, v2

    .line 226
    const-string v1, "\u5b8c\u6210 5 D-Coded VR \u53d7\u8bad\u4efb\u52a1"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 227
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "VR-B"

    invoke-direct {v0, v1, p0, v4}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 228
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x35

    aput-object v0, v1, v2

    .line 229
    const-string v1, "\u5b8c\u6210 5 D-Coded VR \u53d7\u8bad\u4efb\u52a1"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "VR-C"

    invoke-direct {v0, v1, p0, v4}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 231
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x36

    aput-object v0, v1, v2

    .line 232
    const-string v1, "\u5b8c\u6210 5 D-Coded VR \u53d7\u8bad\u4efb\u52a1"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 233
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "VR-D"

    invoke-direct {v0, v1, p0, v4}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 234
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x37

    aput-object v0, v1, v2

    .line 235
    const-string v1, "\u5b8c\u6210 5 D-Coded VR \u53d7\u8bad\u4efb\u52a1"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 236
    new-instance v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    .end local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    const-string v1, "\u6253\u8d25\u6cf0\u5766"

    invoke-direct {v0, v1, p0, v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 237
    .restart local v0    # "ap":Lcom/magicwach/rdefense/AchievementData$AchievementProp;
    sget-object v1, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    const/16 v2, 0x38

    aput-object v0, v1, v2

    .line 238
    const-string v1, "\u627e\u5230\u5e76\u51fb\u8d25\u6cf0\u5766"

    iput-object v1, v0, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->description:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public static isAchieved(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 247
    sget-object v0, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->isAchieved()Z

    move-result v0

    return v0
.end method

.method public static totalCount()I
    .locals 1

    .prologue
    .line 250
    sget v0, Lcom/magicwach/rdefense/AchievementData;->total_count:I

    return v0
.end method

.method public static trySaveProgress()V
    .locals 5

    .prologue
    const/16 v4, 0x39

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "first_pending":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 267
    sget-object v3, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->saveIsPending()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    :cond_0
    if-ge v1, v4, :cond_3

    .line 272
    sget-object v3, Lcom/magicwach/rdefense/AchievementData;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .local v2, "type":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 274
    sget-object v3, Lcom/magicwach/rdefense/AchievementData;->achievement_props:[Lcom/magicwach/rdefense/AchievementData$AchievementProp;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/magicwach/rdefense/AchievementData$AchievementProp;->trySaveLevel(Landroid/content/SharedPreferences$Editor;)V

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "type":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "type":I
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "type":I
    :cond_3
    return-void
.end method
