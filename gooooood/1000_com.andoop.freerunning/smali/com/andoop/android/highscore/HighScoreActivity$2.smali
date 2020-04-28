.class Lcom/andoop/android/highscore/HighScoreActivity$2;
.super Ljava/lang/Object;
.source "HighScoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/highscore/HighScoreActivity;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/highscore/HighScoreActivity;


# direct methods
.method constructor <init>(Lcom/andoop/android/highscore/HighScoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity$2;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$2;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    const v3, 0x7f06001d

    invoke-virtual {v2, v3}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$2;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iget-object v2, v2, Lcom/andoop/android/highscore/HighScoreActivity;->mPreviousName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$2;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-static {v2, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->access$3(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$2;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-virtual {v2}, Lcom/andoop/android/highscore/HighScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ANDOOP_HIGHSCORE_SCORE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 200
    .local v1, "score":I
    if-lez v1, :cond_1

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$2;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    const-string v3, "Please enter your name."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 203
    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$2;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iget-object v2, v2, Lcom/andoop/android/highscore/HighScoreActivity;->mPlayerName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$2;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-static {v2, v0, v1}, Lcom/andoop/android/highscore/HighScoreActivity;->access$4(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;I)V

    goto :goto_0
.end method
