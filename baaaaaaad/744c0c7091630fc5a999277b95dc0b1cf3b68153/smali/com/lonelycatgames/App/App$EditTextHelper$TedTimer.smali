.class Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;
.super Lcom/lonelycatgames/App/App$MyTimer;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App$EditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TedTimer"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lonelycatgames/App/App$EditTextHelper;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App$EditTextHelper;I)V
    .locals 1

    .prologue
    .line 412
    iput-object p1, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget-object v0, p1, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    invoke-direct {p0, v0, p2}, Lcom/lonelycatgames/App/App$MyTimer;-><init>(Lcom/lonelycatgames/App/App;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget v0, v0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget-boolean v0, v0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget-object v0, v0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget v1, v1, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->JniTedTimer(I)V

    .line 406
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget-boolean v0, v0, Lcom/lonelycatgames/App/App$EditTextHelper;->reset_vis:Z

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iput-boolean v2, v0, Lcom/lonelycatgames/App/App$EditTextHelper;->reset_vis:Z

    .line 408
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    invoke-virtual {v0, v2}, Lcom/lonelycatgames/App/App$EditTextHelper;->bringPointIntoView(I)Z

    .line 411
    :cond_0
    return-void
.end method
