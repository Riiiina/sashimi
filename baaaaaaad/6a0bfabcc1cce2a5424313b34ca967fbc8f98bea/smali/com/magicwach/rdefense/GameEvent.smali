.class final Lcom/magicwach/rdefense/GameEvent;
.super Ljava/lang/Object;
.source "GameEvent.java"


# static fields
.field public static final EVENT_ACHIEVEMENT_EARNED:I = 0xa

.field public static final EVENT_ENEMY_DEFEATED:I = 0x1

.field public static final EVENT_EXPLOSION:I = 0x9

.field public static final EVENT_GAME_INIT:I = 0x3

.field public static final EVENT_GAME_LOAD_SUCCESS:I = 0xb

.field public static final EVENT_HEALTH_CHANGED:I = 0x4

.field public static final EVENT_LEVEL_BONUS_LOST:I = 0x5

.field public static final EVENT_MESSAGE:I = 0x0

.field public static final EVENT_MONEY_CHANGED:I = 0x2

.field public static final EVENT_PARTICLE:I = 0x8

.field public static final EVENT_SCORE_SAVED:I = 0x7

.field public static final EVENT_TOWERS_CHANGED:I = 0x6

.field public static final NUM_EVENT_TYPES:I = 0xc

.field private static final NUM_VAR_SLOTS:I = 0x9

.field public static final VAR_ACHIEVEMENT_FRAME:I = 0x1

.field public static final VAR_ACHIEVEMENT_STATE:I = 0x2

.field public static final VAR_ACHIEVEMENT_TYPE:I = 0x0

.field public static final VAR_ENEMY_BASE_SCORE:I = 0x5

.field public static final VAR_ENEMY_FULL_SCORE:I = 0x6

.field public static final VAR_ENEMY_ORIENTATION:I = 0x2

.field public static final VAR_ENEMY_PIXEL_X:I = 0x3

.field public static final VAR_ENEMY_PIXEL_Y:I = 0x4

.field public static final VAR_ENEMY_STATE_IDX:I = 0x0

.field public static final VAR_ENEMY_TYPE:I = 0x1

.field public static final VAR_EXPLOSION_FIRST_STATE:I = 0x3

.field public static final VAR_EXPLOSION_NUM_STATES:I = 0x4

.field public static final VAR_EXPLOSION_TYPE:I = 0x2

.field public static final VAR_EXPLOSION_X:I = 0x0

.field public static final VAR_EXPLOSION_Y:I = 0x1

.field public static final VAR_MESSAGE_FRAMES:I = 0x0

.field public static final VAR_MESSAGE_Y_SLOT:I = 0x1

.field public static final VAR_MONEY_OLD_AMOUNT:I = 0x0

.field public static final VAR_PARTICLE_COLOR:I = 0x4

.field public static final VAR_PARTICLE_FIRST_STATE:I = 0x7

.field public static final VAR_PARTICLE_MAX_ALPHA:I = 0x5

.field public static final VAR_PARTICLE_NUM_STATES:I = 0x8

.field public static final VAR_PARTICLE_SIZE:I = 0x6

.field public static final VAR_PARTICLE_X:I = 0x0

.field public static final VAR_PARTICLE_XVEL:I = 0x2

.field public static final VAR_PARTICLE_Y:I = 0x1

.field public static final VAR_PARTICLE_YVEL:I = 0x3

.field public static final VAR_SCORE_ADD:I = 0x3

.field public static final VAR_SCORE_FRAME_INDEX:I = 0x0

.field public static final VAR_SCORE_HEALTH_BONUS:I = 0x5

.field public static final VAR_SCORE_MONEY_BONUS:I = 0x7

.field public static final VAR_SCORE_ORIGINAL:I = 0x2

.field public static final VAR_SCORE_PERFECT_BONUS:I = 0x6

.field public static final VAR_SCORE_STATE:I = 0x1

.field public static final VAR_SCORE_WON_BONUS:I = 0x4


# instance fields
.field finished:Z

.field public next:Lcom/magicwach/rdefense/GameEvent;

.field public str:Ljava/lang/String;

.field public var:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/magicwach/rdefense/GameEvent;->var:[I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/magicwach/rdefense/GameEvent;->str:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/magicwach/rdefense/GameEvent;->str:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/magicwach/rdefense/GameEvent;->finished:Z

    .line 63
    return-void
.end method
