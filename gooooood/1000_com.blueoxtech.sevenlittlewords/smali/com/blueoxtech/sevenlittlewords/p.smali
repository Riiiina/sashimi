.class public final Lcom/blueoxtech/sevenlittlewords/p;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/media/SoundPool;

.field public b:I

.field public c:I

.field public d:I

.field private e:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

.field private f:Landroid/content/Context;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/p;->e:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/p;->f:Landroid/content/Context;

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->a:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->a:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/p;->f:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->g:I

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->a:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/p;->f:Landroid/content/Context;

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->b:I

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->a:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/p;->f:Landroid/content/Context;

    const v2, 0x7f050002

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->c:I

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->a:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/p;->f:Landroid/content/Context;

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->g:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/blueoxtech/sevenlittlewords/p;->a(IZ)V

    return-void
.end method

.method public final a(IZ)V
    .locals 7

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->e:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-boolean v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->g:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->f:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v1, v0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->a:Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->g:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/blueoxtech/sevenlittlewords/p;->a(IZ)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lcom/blueoxtech/sevenlittlewords/p;->d:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/blueoxtech/sevenlittlewords/p;->a(IZ)V

    return-void
.end method
