.class final Lcom/blueoxtech/sevenlittlewords/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/x;->a:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/x;->a:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/x;->a:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->finish()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/x;->a:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    invoke-virtual {v0, v1, v1}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->overridePendingTransition(II)V

    return-void
.end method
