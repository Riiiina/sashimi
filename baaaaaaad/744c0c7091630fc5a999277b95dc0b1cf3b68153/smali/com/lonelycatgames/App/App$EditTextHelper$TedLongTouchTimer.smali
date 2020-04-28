.class Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;
.super Lcom/lonelycatgames/App/App$MyTimer;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App$EditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TedLongTouchTimer"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lonelycatgames/App/App$EditTextHelper;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App$EditTextHelper;)V
    .locals 3

    .prologue
    .line 476
    iput-object p1, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget-object v0, p1, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    const/16 v1, 0x320

    const/16 v2, 0x2710

    invoke-direct {p0, v0, v1, v2}, Lcom/lonelycatgames/App/App$MyTimer;-><init>(Lcom/lonelycatgames/App/App;II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget-boolean v0, v0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget-object v0, v0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;->this$1:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget v1, v1, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->JniTedLongClick(I)V

    .line 475
    :cond_0
    return-void
.end method
