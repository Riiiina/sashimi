.class final Lcom/blueoxtech/sevenlittlewords/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/blueoxtech/sevenlittlewords/ah;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/ah;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/t;->b:Lcom/blueoxtech/sevenlittlewords/ah;

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/t;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/t;->b:Lcom/blueoxtech/sevenlittlewords/ah;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/ah;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/t;->a:Landroid/view/View;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/t;->b:Lcom/blueoxtech/sevenlittlewords/ah;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/ah;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ratedApp"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/t;->b:Lcom/blueoxtech/sevenlittlewords/ah;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/ah;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "market://details?id=com.blueoxtech.sevenlittlewords"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/t;->b:Lcom/blueoxtech/sevenlittlewords/ah;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/ah;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-virtual {v0, v1}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
