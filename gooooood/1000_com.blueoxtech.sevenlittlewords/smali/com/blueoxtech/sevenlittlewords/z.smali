.class final Lcom/blueoxtech/sevenlittlewords/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/ab;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/z;->a:Lcom/blueoxtech/sevenlittlewords/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/z;->a:Lcom/blueoxtech/sevenlittlewords/ab;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->c()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/z;->a:Lcom/blueoxtech/sevenlittlewords/ab;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/z;->a:Lcom/blueoxtech/sevenlittlewords/ab;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->f:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/z;->a:Lcom/blueoxtech/sevenlittlewords/ab;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/z;->a:Lcom/blueoxtech/sevenlittlewords/ab;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/ab;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->g:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    return-void
.end method
