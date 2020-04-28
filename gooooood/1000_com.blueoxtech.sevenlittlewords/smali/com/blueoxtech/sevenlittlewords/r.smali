.class final Lcom/blueoxtech/sevenlittlewords/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/i;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/i;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/r;->a:Lcom/blueoxtech/sevenlittlewords/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/r;->a:Lcom/blueoxtech/sevenlittlewords/i;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/i;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/r;->a:Lcom/blueoxtech/sevenlittlewords/i;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/i;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/r;->a:Lcom/blueoxtech/sevenlittlewords/i;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/i;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/r;->a:Lcom/blueoxtech/sevenlittlewords/i;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/i;->a:Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/MainMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->c()V

    return-void
.end method
