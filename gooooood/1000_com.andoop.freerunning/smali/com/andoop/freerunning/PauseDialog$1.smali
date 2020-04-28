.class Lcom/andoop/freerunning/PauseDialog$1;
.super Ljava/lang/Object;
.source "PauseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/freerunning/PauseDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/freerunning/PauseDialog;


# direct methods
.method constructor <init>(Lcom/andoop/freerunning/PauseDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/freerunning/PauseDialog$1;->this$0:Lcom/andoop/freerunning/PauseDialog;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/andoop/freerunning/PauseDialog$1;->this$0:Lcom/andoop/freerunning/PauseDialog;

    invoke-virtual {v0}, Lcom/andoop/freerunning/PauseDialog;->cancel()V

    .line 35
    return-void
.end method
