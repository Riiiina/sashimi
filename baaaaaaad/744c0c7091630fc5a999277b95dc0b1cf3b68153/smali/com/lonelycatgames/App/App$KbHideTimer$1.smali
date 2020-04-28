.class Lcom/lonelycatgames/App/App$KbHideTimer$1;
.super Ljava/util/TimerTask;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lonelycatgames/App/App$KbHideTimer;-><init>(Lcom/lonelycatgames/App/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lonelycatgames/App/App$KbHideTimer;

.field final synthetic val$this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App$KbHideTimer;Lcom/lonelycatgames/App/App;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/lonelycatgames/App/App$KbHideTimer$1;->this$1:Lcom/lonelycatgames/App/App$KbHideTimer;

    iput-object p2, p0, Lcom/lonelycatgames/App/App$KbHideTimer$1;->val$this$0:Lcom/lonelycatgames/App/App;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lonelycatgames/App/App$KbHideTimer$1;->this$1:Lcom/lonelycatgames/App/App$KbHideTimer;

    iget-object v0, v0, Lcom/lonelycatgames/App/App$KbHideTimer;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v0, v0, Lcom/lonelycatgames/App/App;->kb_hide_timer:Lcom/lonelycatgames/App/App$KbHideTimer;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/lonelycatgames/App/App$KbHideTimer$1;->this$1:Lcom/lonelycatgames/App/App$KbHideTimer;

    iget-object v0, v0, Lcom/lonelycatgames/App/App$KbHideTimer;->this$0:Lcom/lonelycatgames/App/App;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 388
    iget-object v1, p0, Lcom/lonelycatgames/App/App$KbHideTimer$1;->this$1:Lcom/lonelycatgames/App/App$KbHideTimer;

    iget-object v1, v1, Lcom/lonelycatgames/App/App$KbHideTimer;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, v1, Lcom/lonelycatgames/App/App;->main_view:Lcom/lonelycatgames/App/App$MyView;

    invoke-virtual {v1}, Lcom/lonelycatgames/App/App$MyView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 390
    :cond_0
    return-void
.end method
