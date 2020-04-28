.class final Lcom/blueoxtech/sevenlittlewords/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field final synthetic a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/i;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 4

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/i;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    iget v0, v0, Lcom/blueoxtech/sevenlittlewords/p;->d:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/i;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/r;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/r;-><init>(Lcom/blueoxtech/sevenlittlewords/i;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
