.class Lcom/lonelycatgames/App/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lonelycatgames/App/App;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/lonelycatgames/App/App$1;->this$0:Lcom/lonelycatgames/App/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lonelycatgames/App/App$1;->this$0:Lcom/lonelycatgames/App/App;

    invoke-virtual {v0}, Lcom/lonelycatgames/App/App;->FinishInit()V

    .line 240
    return-void
.end method
