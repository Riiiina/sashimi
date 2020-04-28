.class Lcom/andoop/android/highscore/HighScoreActivity$6;
.super Ljava/lang/Object;
.source "HighScoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/highscore/HighScoreActivity;->submitScore(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/highscore/HighScoreActivity;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$score:I


# direct methods
.method constructor <init>(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity$6;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    iput-object p2, p0, Lcom/andoop/android/highscore/HighScoreActivity$6;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/andoop/android/highscore/HighScoreActivity$6;->val$score:I

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity$6;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-static {v0, v3}, Lcom/andoop/android/highscore/HighScoreActivity;->access$0(Lcom/andoop/android/highscore/HighScoreActivity;Z)V

    .line 295
    new-instance v0, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;

    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$6;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-direct {v0, v1}, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity$6;->val$name:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/andoop/android/highscore/HighScoreActivity$6;->val$score:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    return-void
.end method
