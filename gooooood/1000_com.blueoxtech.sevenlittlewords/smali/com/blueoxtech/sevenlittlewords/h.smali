.class final Lcom/blueoxtech/sevenlittlewords/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/h;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/h;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/h;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    const-class v3, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/h;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    invoke-virtual {v0, v4, v4}, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/h;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->f:Landroid/widget/Button;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
