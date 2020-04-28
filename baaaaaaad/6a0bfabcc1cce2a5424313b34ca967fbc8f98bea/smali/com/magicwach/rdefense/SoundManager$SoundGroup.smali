.class Lcom/magicwach/rdefense/SoundManager$SoundGroup;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundGroup"
.end annotation


# instance fields
.field private current:I

.field private expire_time:[J

.field private id:I

.field private pool:Landroid/media/SoundPool;

.field private sound_copies:I

.field private time:I


# direct methods
.method public constructor <init>(Landroid/media/SoundPool;III)V
    .locals 4
    .param p1, "sound_pool"    # Landroid/media/SoundPool;
    .param p2, "sound_id"    # I
    .param p3, "sound_time"    # I
    .param p4, "copies"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p4, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->sound_copies:I

    .line 82
    iget v1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->sound_copies:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->expire_time:[J

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->sound_copies:I

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->expire_time:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->current:I

    .line 87
    iput p2, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->id:I

    .line 88
    iput-object p1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->pool:Landroid/media/SoundPool;

    .line 89
    iput p3, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->time:I

    .line 90
    return-void
.end method


# virtual methods
.method public play(I)V
    .locals 9
    .param p1, "stream_volume"    # I

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 93
    .local v7, "now":J
    iget-object v0, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->expire_time:[J

    iget v1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->current:I

    aget-wide v0, v0, v1

    cmp-long v0, v0, v7

    if-gez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->expire_time:[J

    iget v1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->current:I

    iget v2, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->time:I

    int-to-long v2, v2

    add-long/2addr v2, v7

    aput-wide v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->id:I

    int-to-float v2, p1

    int-to-float v3, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 96
    iget v0, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->current:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->sound_copies:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/magicwach/rdefense/SoundManager$SoundGroup;->current:I

    .line 98
    :cond_0
    return-void
.end method
