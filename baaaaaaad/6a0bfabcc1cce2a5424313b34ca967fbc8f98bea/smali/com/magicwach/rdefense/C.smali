.class public final Lcom/magicwach/rdefense/C;
.super Ljava/lang/Object;
.source "C.java"


# static fields
.field public static final BLOCKING_TOWER:I = 0x5

.field public static final BOTTOM_SCROLL_PAD:I = 0x32

.field public static final DEBUG_SAVE_FLAG_PREF_STR:Ljava/lang/String; = "ADDebugSaveFlag"

.field public static final DEBUG_SAVE_SLOT_PREF_STR:Ljava/lang/String; = "ADDebugSaveSlot"

.field public static final DIFFICULTY_PREF_STR:Ljava/lang/String; = "ADDifficultyLevel"

.field public static final DOWN:I = 0x4

.field public static final END:I = 0x7

.field public static final ENEMY_ALLOCATION_SANITY_LIMIT:I = 0x64

.field public static final EVENT_ALLOCATION_SANITY_LIMIT:I = 0x1f4

.field public static final FINGER_OFFSET:I = 0x3c

.field public static final GRID_HSIZE:I = 0xa0

.field public static final GRID_PIXEL_HSIZE:I = 0x14

.field public static final GRID_PIXEL_SIZE:I = 0x28

.field public static final GRID_SIZE:I = 0x140

.field public static final INFO_FONT_SIZE:I = 0xc

.field public static final LEFT:I = 0x3

.field public static final MAP_PREF_STR:Ljava/lang/String; = "ADMapSelection"

.field public static final MAX_LEVEL_WON_STR:Ljava/lang/String; = "ADMaxLevelWon"

.field public static final MESSAGE_DISPLAY_FRAMES:I = 0x2d

.field public static final MESSAGE_ERROR_FRAMES:I = 0x5a

.field public static final MESSAGE_FADE_FRAMES:I = 0x1e

.field public static final MIXER_VALUE_STR:Ljava/lang/String; = "AndroidDefenseMixerValue"

.field public static final NORMAL_FONT_SIZE:I = 0xe

.field public static final NUM_MESSAGE_SLOTS:I = 0xa

.field public static final OPEN:I = 0x0

.field public static PIXEL_HEIGHT:I = 0x0

.field public static PIXEL_WIDTH:I = 0x0

.field public static final QUICK_SAVE_AVAIL_PREF_STR:Ljava/lang/String; = "AndroidDefenseQuickSaveValid"

.field public static final REWARD_POINTS_PREF_STR:Ljava/lang/String; = "ADRewardPoints"

.field public static final RIGHT:I = 0x1

.field public static final SCALE_SHIFT:I = 0x3

.field public static final STARTING_HEALTH:I = 0x14

.field public static final STARTING_MONEY:I = 0x19

.field public static final TAG:Ljava/lang/String; = "RDefense"

.field public static final TIMES_LAUNCHED_PREF_STR:Ljava/lang/String; = "ADTimesLaunched"

.field public static final TITLE_FONT_SIZE:I = 0x10

.field public static final UP:I = 0x2

.field public static final VERSION:I = 0x1

.field public static final WALL:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x1e0

    sput v0, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    .line 22
    const/16 v0, 0x140

    sput v0, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
