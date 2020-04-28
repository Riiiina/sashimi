.class public final Lcom/magicwach/rdefense/LevelData;
.super Ljava/lang/Object;
.source "LevelData.java"


# static fields
.field public static final BASIC_LEVEL:I = 0x0

.field public static final COURTYARD_LEVEL:I = 0x3

.field public static final FACTORY_LEVEL:I = 0x2

.field public static final MIXER_LEVEL:I = 0x4

.field public static final NUM_LEVEL_TYPES:I = 0x5

.field public static final RUINS_LEVEL:I = 0x1

.field private static final basic_path_end:[I

.field private static final basic_path_start:[I

.field private static final courtyard_obstacles:[I

.field private static final courtyard_path_end:[I

.field private static final courtyard_path_start:[I

.field private static final factory_path_end:[I

.field private static final factory_path_start:[I

.field private static height:I = 0x0

.field private static image_id:I = 0x0

.field private static level_data:[I = null

.field private static final level_eye:I = 0x4c45564c

.field private static final name:[Ljava/lang/String;

.field private static overlays:[Lcom/magicwach/rdefense/LevelOverlay;

.field private static path_end:[I

.field private static path_obstacles:[I

.field private static path_start:[I

.field private static final ruins_path_end:[I

.field private static final ruins_path_start:[I

.field private static underlays:[Lcom/magicwach/rdefense/LevelOverlay;

.field private static width:I


# instance fields
.field private frame_index:I

.field private generated_diff_level:I

.field private generated_seed:I

.field private index:I

.field private level_num:I

.field private level_score_multiplier:I

.field private level_seed:I

.field private level_type:I

.field private mixer_seed:I

.field private path_num:I

.field private sub_index:I

.field private unit_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u521d\u7ea7"

    aput-object v1, v0, v3

    const-string v1, "\u5e9f\u589f"

    aput-object v1, v0, v4

    const-string v1, "\u5de5\u5382"

    aput-object v1, v0, v5

    const-string v1, "\u5ead\u9662"

    aput-object v1, v0, v6

    const-string v1, "\u865a\u62df\u73b0\u5b9e\u8bad\u7ec3"

    aput-object v1, v0, v2

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->name:[Ljava/lang/String;

    .line 349
    new-array v0, v4, [I

    const/16 v1, 0x306

    aput v1, v0, v3

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->basic_path_start:[I

    .line 350
    new-array v0, v4, [I

    const/16 v1, 0x106

    aput v1, v0, v3

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->basic_path_end:[I

    .line 351
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->ruins_path_start:[I

    .line 352
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->ruins_path_end:[I

    .line 353
    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->factory_path_start:[I

    .line 354
    new-array v0, v6, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->factory_path_end:[I

    .line 355
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->courtyard_path_start:[I

    .line 356
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->courtyard_path_end:[I

    .line 357
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->courtyard_obstacles:[I

    return-void

    .line 351
    :array_0
    .array-data 4
        0x306
        0x20a
    .end array-data

    .line 352
    :array_1
    .array-data 4
        0x106
        0x40a
    .end array-data

    .line 353
    :array_2
    .array-data 4
        0x303
        0x306
        0x309
    .end array-data

    .line 354
    :array_3
    .array-data 4
        0x103
        0x106
        0x109
    .end array-data

    .line 355
    :array_4
    .array-data 4
        0x306
        0x204
        0x40a
        0x20f
    .end array-data

    .line 356
    :array_5
    .array-data 4
        0x106
        0x404
        0x20a
        0x40f
    .end array-data

    .line 357
    :array_6
    .array-data 4
        0x4040201
        0xe040201
        0x4070201
        0xe070201    # 1.6641E-30f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "mixer_seed"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/magicwach/rdefense/LevelData;->mixer_seed:I

    .line 21
    return-void
.end method

.method public static getImageID()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/magicwach/rdefense/LevelData;->image_id:I

    return v0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "map_id"    # I

    .prologue
    .line 75
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->name:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private initLevelParms()V
    .locals 8

    .prologue
    const/16 v7, 0x1bb

    const/4 v6, 0x0

    const/16 v3, 0x14

    const/16 v2, 0xc

    .line 271
    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->level_type:I

    packed-switch v1, :pswitch_data_0

    .line 326
    :goto_0
    return-void

    .line 273
    :pswitch_0
    sput v3, Lcom/magicwach/rdefense/LevelData;->width:I

    .line 274
    sput v2, Lcom/magicwach/rdefense/LevelData;->height:I

    .line 275
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->basic_path_start:[I

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    .line 276
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->basic_path_end:[I

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    .line 277
    const v1, 0x7f020006

    sput v1, Lcom/magicwach/rdefense/LevelData;->image_id:I

    .line 278
    const/16 v1, 0x64

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->level_score_multiplier:I

    goto :goto_0

    .line 281
    :pswitch_1
    sput v3, Lcom/magicwach/rdefense/LevelData;->width:I

    .line 282
    sput v2, Lcom/magicwach/rdefense/LevelData;->height:I

    .line 283
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->ruins_path_start:[I

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    .line 284
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->ruins_path_end:[I

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    .line 285
    const v1, 0x7f02000d

    sput v1, Lcom/magicwach/rdefense/LevelData;->image_id:I

    .line 286
    const/16 v1, 0x7d

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->level_score_multiplier:I

    goto :goto_0

    .line 289
    :pswitch_2
    sput v3, Lcom/magicwach/rdefense/LevelData;->width:I

    .line 290
    sput v2, Lcom/magicwach/rdefense/LevelData;->height:I

    .line 291
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->factory_path_start:[I

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    .line 292
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->factory_path_end:[I

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    .line 293
    const v1, 0x7f02003c

    sput v1, Lcom/magicwach/rdefense/LevelData;->image_id:I

    .line 294
    const/16 v1, 0x8c

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->level_score_multiplier:I

    goto :goto_0

    .line 297
    :pswitch_3
    sput v3, Lcom/magicwach/rdefense/LevelData;->width:I

    .line 298
    sput v2, Lcom/magicwach/rdefense/LevelData;->height:I

    .line 299
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->courtyard_path_start:[I

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    .line 300
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->courtyard_path_end:[I

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    .line 301
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->courtyard_obstacles:[I

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_obstacles:[I

    .line 302
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/magicwach/rdefense/LevelOverlay;

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->overlays:[Lcom/magicwach/rdefense/LevelOverlay;

    .line 303
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->overlays:[Lcom/magicwach/rdefense/LevelOverlay;

    new-instance v2, Lcom/magicwach/rdefense/LevelOverlay;

    const v3, 0x7f020009

    const/16 v4, 0x259

    invoke-direct {v2, v3, v4, v6}, Lcom/magicwach/rdefense/LevelOverlay;-><init>(III)V

    aput-object v2, v1, v6

    .line 304
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->overlays:[Lcom/magicwach/rdefense/LevelOverlay;

    const/4 v2, 0x1

    new-instance v3, Lcom/magicwach/rdefense/LevelOverlay;

    const v4, 0x7f02000a

    const/16 v5, 0xb5

    invoke-direct {v3, v4, v5, v6}, Lcom/magicwach/rdefense/LevelOverlay;-><init>(III)V

    aput-object v3, v1, v2

    .line 305
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->overlays:[Lcom/magicwach/rdefense/LevelOverlay;

    const/4 v2, 0x2

    new-instance v3, Lcom/magicwach/rdefense/LevelOverlay;

    const v4, 0x7f02000c

    const/16 v5, 0xad

    invoke-direct {v3, v4, v5, v7}, Lcom/magicwach/rdefense/LevelOverlay;-><init>(III)V

    aput-object v3, v1, v2

    .line 306
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->overlays:[Lcom/magicwach/rdefense/LevelOverlay;

    const/4 v2, 0x3

    new-instance v3, Lcom/magicwach/rdefense/LevelOverlay;

    const v4, 0x7f02000b

    const/16 v5, 0x25a

    invoke-direct {v3, v4, v5, v7}, Lcom/magicwach/rdefense/LevelOverlay;-><init>(III)V

    aput-object v3, v1, v2

    .line 307
    const v1, 0x7f020008

    sput v1, Lcom/magicwach/rdefense/LevelData;->image_id:I

    .line 308
    const/16 v1, 0xa0

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->level_score_multiplier:I

    goto/16 :goto_0

    .line 311
    :pswitch_4
    sput v3, Lcom/magicwach/rdefense/LevelData;->width:I

    .line 312
    sput v2, Lcom/magicwach/rdefense/LevelData;->height:I

    .line 313
    const v1, 0x7f02002f

    sput v1, Lcom/magicwach/rdefense/LevelData;->image_id:I

    .line 314
    const/16 v1, 0xb4

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->level_score_multiplier:I

    .line 315
    new-instance v0, Lcom/magicwach/rdefense/MixerLevelGenerator;

    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->mixer_seed:I

    sget v2, Lcom/magicwach/rdefense/LevelData;->width:I

    sget v3, Lcom/magicwach/rdefense/LevelData;->height:I

    invoke-direct {v0, v1, v2, v3}, Lcom/magicwach/rdefense/MixerLevelGenerator;-><init>(III)V

    .line 318
    .local v0, "mlg":Lcom/magicwach/rdefense/MixerLevelGenerator;
    invoke-virtual {v0}, Lcom/magicwach/rdefense/MixerLevelGenerator;->createStartPaths()[I

    move-result-object v1

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    .line 319
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    invoke-virtual {v0, v1}, Lcom/magicwach/rdefense/MixerLevelGenerator;->createEndPaths([I)[I

    move-result-object v1

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    .line 320
    invoke-virtual {v0, p0}, Lcom/magicwach/rdefense/MixerLevelGenerator;->createObstacles(Lcom/magicwach/rdefense/LevelData;)[I

    move-result-object v1

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->path_obstacles:[I

    .line 321
    invoke-virtual {v0, p0}, Lcom/magicwach/rdefense/MixerLevelGenerator;->createUnderlays(Lcom/magicwach/rdefense/LevelData;)[Lcom/magicwach/rdefense/LevelOverlay;

    move-result-object v1

    sput-object v1, Lcom/magicwach/rdefense/LevelData;->underlays:[Lcom/magicwach/rdefense/LevelOverlay;

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public generateLevel(I)V
    .locals 2
    .param p1, "difficulty_level"    # I

    .prologue
    .line 41
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->level_data:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_seed:I

    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->generated_seed:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->generated_diff_level:I

    if-eq p1, v0, :cond_1

    .line 44
    :cond_0
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_seed:I

    invoke-virtual {p0}, Lcom/magicwach/rdefense/LevelData;->getPathCount()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/magicwach/rdefense/LevelDataGenerator;->generate(III)[I

    move-result-object v0

    sput-object v0, Lcom/magicwach/rdefense/LevelData;->level_data:[I

    .line 45
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_seed:I

    iput v0, p0, Lcom/magicwach/rdefense/LevelData;->generated_seed:I

    .line 46
    iput p1, p0, Lcom/magicwach/rdefense/LevelData;->generated_diff_level:I

    .line 48
    :cond_1
    return-void
.end method

.method public getEndX(I)I
    .locals 3
    .param p1, "path_num"    # I

    .prologue
    .line 165
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    aget v1, v1, p1

    shr-int/lit8 v1, v1, 0x8

    packed-switch v1, :pswitch_data_0

    .line 173
    :pswitch_0
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    aget v1, v1, p1

    and-int/lit16 v0, v1, 0xff

    .line 176
    .local v0, "x":I
    :goto_0
    return v0

    .line 167
    .end local v0    # "x":I
    :pswitch_1
    const/4 v0, 0x0

    .line 168
    .restart local v0    # "x":I
    goto :goto_0

    .line 170
    .end local v0    # "x":I
    :pswitch_2
    sget v1, Lcom/magicwach/rdefense/LevelData;->width:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 171
    .restart local v0    # "x":I
    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEndY(I)I
    .locals 3
    .param p1, "path_num"    # I

    .prologue
    .line 180
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    aget v1, v1, p1

    shr-int/lit8 v1, v1, 0x8

    packed-switch v1, :pswitch_data_0

    .line 188
    :pswitch_0
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    aget v1, v1, p1

    and-int/lit16 v0, v1, 0xff

    .line 191
    .local v0, "y":I
    :goto_0
    return v0

    .line 182
    .end local v0    # "y":I
    :pswitch_1
    const/4 v0, 0x0

    .line 183
    .restart local v0    # "y":I
    goto :goto_0

    .line 185
    .end local v0    # "y":I
    :pswitch_2
    sget v1, Lcom/magicwach/rdefense/LevelData;->height:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 186
    .restart local v0    # "y":I
    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getGridHeight()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/magicwach/rdefense/LevelData;->height:I

    return v0
.end method

.method public getGridWidth()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/magicwach/rdefense/LevelData;->width:I

    return v0
.end method

.method public getLevelNum()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_num:I

    return v0
.end method

.method public getLevelOverlays()[Lcom/magicwach/rdefense/LevelOverlay;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->overlays:[Lcom/magicwach/rdefense/LevelOverlay;

    return-object v0
.end method

.method public getLevelType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_type:I

    return v0
.end method

.method public getLevelUnderlays()[Lcom/magicwach/rdefense/LevelOverlay;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->underlays:[Lcom/magicwach/rdefense/LevelOverlay;

    return-object v0
.end method

.method public getObstacleCount()I
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->path_obstacles:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->path_obstacles:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getObstacleHeight(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 206
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->path_obstacles:[I

    aget v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getObstacleWidth(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 203
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->path_obstacles:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getObstacleX(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 197
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->path_obstacles:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getObstacleY(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 200
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->path_obstacles:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getPathCount()I
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    array-length v0, v0

    return v0
.end method

.method public getScoreMultiplier()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_score_multiplier:I

    return v0
.end method

.method public getStartOrientation(I)I
    .locals 2
    .param p1, "path_num"    # I

    .prologue
    .line 147
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    aget v1, v1, p1

    shr-int/lit8 v1, v1, 0x8

    packed-switch v1, :pswitch_data_0

    .line 158
    const/4 v0, 0x3

    .line 161
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 149
    .end local v0    # "orientation":I
    :pswitch_0
    const/4 v0, 0x4

    .line 150
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 152
    .end local v0    # "orientation":I
    :pswitch_1
    const/4 v0, 0x2

    .line 153
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 155
    .end local v0    # "orientation":I
    :pswitch_2
    const/4 v0, 0x1

    .line 156
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getStartX(I)I
    .locals 3
    .param p1, "path_num"    # I

    .prologue
    .line 117
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    aget v1, v1, p1

    shr-int/lit8 v1, v1, 0x8

    packed-switch v1, :pswitch_data_0

    .line 125
    :pswitch_0
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    aget v1, v1, p1

    and-int/lit16 v0, v1, 0xff

    .line 128
    .local v0, "x":I
    :goto_0
    return v0

    .line 119
    .end local v0    # "x":I
    :pswitch_1
    const/4 v0, 0x0

    .line 120
    .restart local v0    # "x":I
    goto :goto_0

    .line 122
    .end local v0    # "x":I
    :pswitch_2
    sget v1, Lcom/magicwach/rdefense/LevelData;->width:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 123
    .restart local v0    # "x":I
    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getStartY(I)I
    .locals 3
    .param p1, "path_num"    # I

    .prologue
    .line 132
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    aget v1, v1, p1

    shr-int/lit8 v1, v1, 0x8

    packed-switch v1, :pswitch_data_0

    .line 140
    :pswitch_0
    sget-object v1, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    aget v1, v1, p1

    and-int/lit16 v0, v1, 0xff

    .line 143
    .local v0, "y":I
    :goto_0
    return v0

    .line 134
    .end local v0    # "y":I
    :pswitch_1
    const/4 v0, 0x0

    .line 135
    .restart local v0    # "y":I
    goto :goto_0

    .line 137
    .end local v0    # "y":I
    :pswitch_2
    sget v1, Lcom/magicwach/rdefense/LevelData;->height:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 138
    .restart local v0    # "y":I
    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getUnitPathNum()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->path_num:I

    return v0
.end method

.method public getUnitType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->unit_type:I

    return v0
.end method

.method public init(I)V
    .locals 4
    .param p1, "level_type"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 23
    iput p1, p0, Lcom/magicwach/rdefense/LevelData;->level_type:I

    .line 24
    iput v0, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    .line 25
    iput v0, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    .line 26
    iput v0, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    .line 27
    iput v3, p0, Lcom/magicwach/rdefense/LevelData;->unit_type:I

    .line 28
    iput v3, p0, Lcom/magicwach/rdefense/LevelData;->path_num:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/LevelData;->level_num:I

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/magicwach/rdefense/LevelData;->level_seed:I

    .line 31
    iput v3, p0, Lcom/magicwach/rdefense/LevelData;->generated_seed:I

    .line 32
    iput v3, p0, Lcom/magicwach/rdefense/LevelData;->generated_diff_level:I

    .line 33
    sput-object v2, Lcom/magicwach/rdefense/LevelData;->path_start:[I

    .line 34
    sput-object v2, Lcom/magicwach/rdefense/LevelData;->path_end:[I

    .line 35
    sput-object v2, Lcom/magicwach/rdefense/LevelData;->path_obstacles:[I

    .line 36
    sput-object v2, Lcom/magicwach/rdefense/LevelData;->overlays:[Lcom/magicwach/rdefense/LevelOverlay;

    .line 37
    sput-object v2, Lcom/magicwach/rdefense/LevelData;->underlays:[Lcom/magicwach/rdefense/LevelOverlay;

    .line 38
    invoke-direct {p0}, Lcom/magicwach/rdefense/LevelData;->initLevelParms()V

    .line 39
    return-void
.end method

.method public levelHasEnded()Z
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/magicwach/rdefense/LevelData;->level_data:[I

    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadState(Ljava/io/ObjectInputStream;Lcom/magicwach/rdefense/GameState;)Z
    .locals 3
    .param p1, "oin"    # Ljava/io/ObjectInputStream;
    .param p2, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x1

    .line 229
    .local v0, "ok":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    const v2, 0x4c45564c    # 5.1730736E7f

    if-eq v1, v2, :cond_2

    .line 230
    const-string v1, "Load State: Bad level eyecatcher"

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    .line 265
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/magicwach/rdefense/LevelData;->initLevelParms()V

    .line 268
    :cond_1
    return v0

    .line 233
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->level_type:I

    .line 234
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    .line 236
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->unit_type:I

    .line 238
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->path_num:I

    .line 239
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->level_num:I

    .line 240
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->level_seed:I

    .line 241
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magicwach/rdefense/LevelData;->mixer_seed:I

    .line 242
    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->level_type:I

    if-gez v1, :cond_3

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Data: bad map id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/LevelData;->level_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_3
    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    if-gez v1, :cond_4

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Data: bad index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :cond_4
    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    const/16 v2, 0x80

    if-lt v1, v2, :cond_6

    .line 249
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Data: sub index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 251
    :cond_6
    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    if-ltz v1, :cond_7

    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    const/16 v2, 0x200

    if-lt v1, v2, :cond_8

    .line 252
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Data: bad frame index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 254
    :cond_8
    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->unit_type:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_9

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Data: bad level unit type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/LevelData;->unit_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 257
    :cond_9
    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->path_num:I

    invoke-virtual {p0}, Lcom/magicwach/rdefense/LevelData;->getPathCount()I

    move-result v2

    if-lt v1, v2, :cond_a

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Data: bad level path number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/LevelData;->path_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 260
    :cond_a
    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->level_num:I

    if-gez v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Data: bad level number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/LevelData;->level_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public nextLevel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    sget-object v1, Lcom/magicwach/rdefense/LevelData;->level_data:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/magicwach/rdefense/LevelData;->level_data:[I

    iget v1, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    .line 91
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/magicwach/rdefense/LevelData;->level_num:I

    move v0, v2

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 50
    iput v5, p0, Lcom/magicwach/rdefense/LevelData;->unit_type:I

    .line 51
    iput v5, p0, Lcom/magicwach/rdefense/LevelData;->path_num:I

    .line 52
    sget-object v5, Lcom/magicwach/rdefense/LevelData;->level_data:[I

    iget v6, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    aget v4, v5, v6

    .line 53
    .local v4, "val":I
    if-eqz v4, :cond_1

    .line 54
    iget v5, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    .line 55
    shr-int/lit8 v5, v4, 0xa

    and-int/lit8 v3, v5, 0x1f

    .line 56
    .local v3, "unit_type_val":I
    shr-int/lit8 v5, v4, 0x3

    and-int/lit8 v1, v5, 0x7f

    .line 57
    .local v1, "unit_count":I
    shr-int/lit8 v5, v4, 0x18

    and-int/lit8 v2, v5, 0x7f

    .line 58
    .local v2, "unit_delay":I
    and-int/lit8 v0, v4, 0x7

    .line 59
    .local v0, "path_num":I
    iget v5, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    if-nez v5, :cond_0

    .line 60
    shr-int/lit8 v5, v4, 0xf

    and-int/lit16 v2, v5, 0x1ff

    .line 62
    :cond_0
    iget v5, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    if-lt v5, v2, :cond_1

    .line 63
    iput v7, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    .line 64
    iput v3, p0, Lcom/magicwach/rdefense/LevelData;->unit_type:I

    .line 65
    iput v0, p0, Lcom/magicwach/rdefense/LevelData;->path_num:I

    .line 66
    iget v5, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    .line 67
    iget v5, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    if-lt v5, v1, :cond_1

    .line 68
    iput v7, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    .line 69
    iget v5, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    .line 73
    .end local v3    # "unit_type_val":I
    .end local v1    # "unit_count":I
    .end local v2    # "unit_delay":I
    .end local v0    # "path_num":I
    :cond_1
    return-void
.end method

.method public saveState(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "oout"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const v0, 0x4c45564c    # 5.1730736E7f

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 216
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_type:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 217
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->index:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->sub_index:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->frame_index:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->unit_type:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->path_num:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_num:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 223
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->level_seed:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 224
    iget v0, p0, Lcom/magicwach/rdefense/LevelData;->mixer_seed:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 225
    return-void
.end method
