.class Lcom/andoop/android/highscore/HighScoreActivity$3;
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
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity$3;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity$3;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-static {v0}, Lcom/andoop/android/highscore/HighScoreActivity;->access$5(Lcom/andoop/android/highscore/HighScoreActivity;)V

    .line 216
    return-void
.end method
