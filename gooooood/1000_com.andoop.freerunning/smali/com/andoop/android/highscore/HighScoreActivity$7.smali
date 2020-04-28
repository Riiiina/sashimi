.class Lcom/andoop/android/highscore/HighScoreActivity$7;
.super Ljava/lang/Object;
.source "HighScoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/highscore/HighScoreActivity;->getScores(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/highscore/HighScoreActivity;

.field private final synthetic val$rank:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity$7;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iput-object p2, p0, Lcom/andoop/android/highscore/HighScoreActivity$7;->val$rank:Ljava/lang/Integer;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity$7;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-static {v0, v3}, Lcom/andoop/android/highscore/HighScoreActivity;->access$0(Lcom/andoop/android/highscore/HighScoreActivity;Z)V

    .line 305
    new-instance v0, Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;

    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$7;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-direct {v0, v1}, Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$7;->val$rank:Ljava/lang/Integer;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 306
    return-void
.end method
