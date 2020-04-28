.class final Lcom/blueoxtech/sevenlittlewords/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "soundOn"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-boolean v2, v2, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->g:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-boolean v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->h:Landroid/widget/Button;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/l;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
