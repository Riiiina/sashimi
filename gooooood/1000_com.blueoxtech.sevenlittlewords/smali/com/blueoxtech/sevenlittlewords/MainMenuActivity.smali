.class public Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-wide/16 v3, 0x64

    const v2, 0x7f020009

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/f;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/f;-><init>(Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/h;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/h;-><init>(Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/j;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/j;-><init>(Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-boolean v1, v1, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->g:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->g:Z

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->a()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/l;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/l;-><init>(Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0a0012
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->setVolumeControlStream(I)V

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->setContentView(I)V

    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->b:Ljava/lang/String;

    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->c:Ljava/lang/String;

    const/high16 v0, 0x7f0a0000

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->e:Landroid/widget/Button;

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->f:Landroid/widget/Button;

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->g:Landroid/widget/Button;

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-boolean v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-boolean v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->c:Z

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/p;->a:Landroid/media/SoundPool;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/i;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/i;-><init>(Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
