.class final Lcom/blueoxtech/sevenlittlewords/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iput p2, p0, Lcom/blueoxtech/sevenlittlewords/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastPuzzlePlayed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    iget v3, p0, Lcom/blueoxtech/sevenlittlewords/y;->a:I

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    const-string v1, "firstRun"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "firstRun"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    const-class v2, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zone"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "puzzle"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    iget v3, p0, Lcom/blueoxtech/sevenlittlewords/y;->a:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    invoke-virtual {v1, v0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    invoke-virtual {v0, v4, v4}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->overridePendingTransition(II)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    const-class v2, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zone"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "puzzle"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/y;->b:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    iget v3, p0, Lcom/blueoxtech/sevenlittlewords/y;->a:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
