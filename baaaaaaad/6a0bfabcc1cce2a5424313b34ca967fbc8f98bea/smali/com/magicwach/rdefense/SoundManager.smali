.class public final Lcom/magicwach/rdefense/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/SoundManager$SoundGroup;
    }
.end annotation


# static fields
.field public static final DELAY_FRAMES:I = 0x8

.field public static final SOUND_COUNT:I = 0x5

.field public static final SOUND_CUSHION_MS:I = 0xa

.field private static audio_mgr:Landroid/media/AudioManager;

.field private static sound_group:[Lcom/magicwach/rdefense/SoundManager$SoundGroup;

.field private static sound_pool:Landroid/media/SoundPool;

.field private static sound_queue:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static bulletTypeToSound(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 56
    packed-switch p0, :pswitch_data_0

    .line 71
    :goto_0
    :pswitch_0
    return v0

    .line 61
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 66
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 69
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static fireBullet(I)V
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 39
    invoke-static {p0}, Lcom/magicwach/rdefense/SoundManager;->bulletTypeToSound(I)I

    move-result p0

    .line 40
    sget-object v0, Lcom/magicwach/rdefense/SoundManager;->sound_queue:[I

    aget v0, v0, p0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/magicwach/rdefense/SoundManager;->sound_queue:[I

    const/16 v1, 0x8

    aput v1, v0, p0

    .line 43
    :cond_0
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x5

    .line 20
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    sput-object v4, Lcom/magicwach/rdefense/SoundManager;->audio_mgr:Landroid/media/AudioManager;

    .line 21
    new-instance v4, Landroid/media/SoundPool;

    const/16 v5, 0x12

    const/4 v6, 0x3

    const/16 v7, 0x64

    invoke-direct {v4, v5, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v4, Lcom/magicwach/rdefense/SoundManager;->sound_pool:Landroid/media/SoundPool;

    .line 22
    new-array v4, v9, [Lcom/magicwach/rdefense/SoundManager$SoundGroup;

    sput-object v4, Lcom/magicwach/rdefense/SoundManager;->sound_group:[Lcom/magicwach/rdefense/SoundManager$SoundGroup;

    .line 23
    new-array v4, v9, [I

    sput-object v4, Lcom/magicwach/rdefense/SoundManager;->sound_queue:[I

    .line 24
    new-array v2, v9, [I

    fill-array-data v2, :array_0

    .line 25
    .local v2, "sound_ids":[I
    new-array v3, v9, [I

    fill-array-data v3, :array_1

    .line 27
    .local v3, "sound_times":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 28
    sget-object v4, Lcom/magicwach/rdefense/SoundManager;->sound_queue:[I

    const/4 v5, 0x0

    aput v5, v4, v1

    .line 29
    if-nez v1, :cond_0

    move v0, v10

    .line 30
    .local v0, "copies":I
    :goto_1
    sget-object v4, Lcom/magicwach/rdefense/SoundManager;->sound_group:[Lcom/magicwach/rdefense/SoundManager$SoundGroup;

    new-instance v5, Lcom/magicwach/rdefense/SoundManager$SoundGroup;

    sget-object v6, Lcom/magicwach/rdefense/SoundManager;->sound_pool:Landroid/media/SoundPool;

    sget-object v7, Lcom/magicwach/rdefense/SoundManager;->sound_pool:Landroid/media/SoundPool;

    aget v8, v2, v1

    invoke-virtual {v7, p0, v8, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v7

    aget v8, v3, v1

    add-int/lit8 v8, v8, 0xa

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/magicwach/rdefense/SoundManager$SoundGroup;-><init>(Landroid/media/SoundPool;III)V

    aput-object v5, v4, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "copies":I
    :cond_0
    const/4 v4, 0x2

    move v0, v4

    goto :goto_1

    .line 34
    :cond_1
    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        0x7f040001
        0x7f040002
        0x7f040004
        0x7f040000
        0x7f040003
    .end array-data

    .line 25
    :array_1
    .array-data 4
        0x258
        0x12c
        0x1f4
        0x2bc
        0x3b6
    .end array-data
.end method

.method public static play()V
    .locals 5

    .prologue
    .line 45
    sget-object v2, Lcom/magicwach/rdefense/SoundManager;->audio_mgr:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 46
    .local v1, "stream_volume":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 47
    sget-object v2, Lcom/magicwach/rdefense/SoundManager;->sound_queue:[I

    aget v2, v2, v0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 48
    sget-object v2, Lcom/magicwach/rdefense/SoundManager;->sound_group:[Lcom/magicwach/rdefense/SoundManager$SoundGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->play(I)V

    .line 50
    :cond_0
    sget-object v2, Lcom/magicwach/rdefense/SoundManager;->sound_queue:[I

    aget v2, v2, v0

    if-lez v2, :cond_1

    .line 51
    sget-object v2, Lcom/magicwach/rdefense/SoundManager;->sound_queue:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aput v3, v2, v0

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/magicwach/rdefense/SoundManager;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 37
    return-void
.end method
