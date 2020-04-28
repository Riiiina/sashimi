.class Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;
.super Ljava/lang/Object;
.source "JokeWidgetUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;->updateWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;

.field private final synthetic val$category:Ljava/lang/String;

.field private final synthetic val$currentTime:J

.field private final synthetic val$fWidgetId:I

.field private final synthetic val$prefs:Landroid/content/SharedPreferences;

.field private final synthetic val$result:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;Landroid/content/SharedPreferences;IJLjava/lang/String;Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$prefs:Landroid/content/SharedPreferences;

    iput p3, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$fWidgetId:I

    iput-wide p4, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$currentTime:J

    iput-object p6, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$category:Ljava/lang/String;

    iput-object p7, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$result:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 200
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastupdate"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$fWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$currentTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastcat"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$fWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$category:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lasterr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$fWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$result:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    iget-boolean v2, v2, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->error:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService;

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$fWidgetId:I

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetUpdateService$1;->val$result:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokeWidgetProvider;->updateWidget(Landroid/content/Context;ILcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;I)V

    .line 206
    return-void
.end method
