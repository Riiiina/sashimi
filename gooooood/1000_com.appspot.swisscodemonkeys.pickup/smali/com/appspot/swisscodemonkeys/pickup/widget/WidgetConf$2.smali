.class Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;
.super Landroid/os/AsyncTask;
.source "WidgetConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->loadCategories(Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

.field private final synthetic val$catSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->val$catSpinner:Landroid/widget/Spinner;

    .line 122
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;)Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 126
    invoke-static {}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader;->getCategories()Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->doInBackground([Ljava/lang/Void;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;)V
    .locals 8
    .param p1, "result"    # Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    .prologue
    const/4 v7, 0x1

    .line 131
    iget-boolean v3, p1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->error:Z

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 134
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->finish()V

    .line 159
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v4, :cond_1

    .line 140
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    .line 141
    const v4, 0x1090008

    .line 140
    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 142
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 143
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->val$catSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 144
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->val$catSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2$1;

    invoke-direct {v4, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 157
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->val$catSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 137
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    aget-object v1, v3, v5

    .line 138
    .local v1, "j":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;
    iget-object v6, v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->message:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$2;->onPostExecute(Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;)V

    return-void
.end method
