.class Lcom/lonelycatgames/App/App$1CFatal;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lonelycatgames/App/App;->InfoMessage(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CFatal"
.end annotation


# instance fields
.field fatal:Z

.field final synthetic this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App;Z)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/lonelycatgames/App/App$1CFatal;->this$0:Lcom/lonelycatgames/App/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-boolean p2, p0, Lcom/lonelycatgames/App/App$1CFatal;->fatal:Z

    .line 349
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 351
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 352
    iget-boolean v0, p0, Lcom/lonelycatgames/App/App$1CFatal;->fatal:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/lonelycatgames/App/App$1CFatal;->this$0:Lcom/lonelycatgames/App/App;

    invoke-virtual {v0}, Lcom/lonelycatgames/App/App;->finish()V

    .line 354
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/lonelycatgames/App/App$1CFatal;->onCancel(Landroid/content/DialogInterface;)V

    .line 357
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 359
    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    .line 360
    invoke-virtual {p0, p1}, Lcom/lonelycatgames/App/App$1CFatal;->onCancel(Landroid/content/DialogInterface;)V

    .line 361
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
