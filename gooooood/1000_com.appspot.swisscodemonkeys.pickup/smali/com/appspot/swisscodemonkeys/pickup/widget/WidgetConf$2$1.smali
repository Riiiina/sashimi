.class Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2$1;
.super Ljava/lang/Object;
.source "WidgetConf.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->onPostExecute(Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;

.field private final synthetic val$result:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2$1;->val$result:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->access$2(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;)Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2$1;->val$result:Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->access$2(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;)V

    .line 150
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->access$2(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;)Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->access$2(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;)V

    .line 155
    return-void
.end method
