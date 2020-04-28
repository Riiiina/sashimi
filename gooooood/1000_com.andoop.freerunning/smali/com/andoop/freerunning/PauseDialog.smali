.class public Lcom/andoop/freerunning/PauseDialog;
.super Landroid/app/Dialog;
.source "PauseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/freerunning/PauseDialog$PauseListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ALPHA:F = 0.87f


# instance fields
.field private mListener:Lcom/andoop/freerunning/PauseDialog$PauseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x400

    .line 19
    const/high16 v2, 0x7f050000

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/andoop/freerunning/PauseDialog;->requestWindowFeature(I)Z

    .line 22
    const/16 v0, 0x400

    .line 23
    .local v0, "fullscreen":I
    invoke-virtual {p0}, Lcom/andoop/freerunning/PauseDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 25
    invoke-virtual {p0}, Lcom/andoop/freerunning/PauseDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 26
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f5eb852    # 0.87f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 27
    invoke-virtual {p0}, Lcom/andoop/freerunning/PauseDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/andoop/freerunning/PauseDialog;->setContentView(I)V

    .line 31
    const v2, 0x7f060009

    invoke-virtual {p0, v2}, Lcom/andoop/freerunning/PauseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/andoop/freerunning/PauseDialog$1;

    invoke-direct {v3, p0}, Lcom/andoop/freerunning/PauseDialog$1;-><init>(Lcom/andoop/freerunning/PauseDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public varargs addButtons([Landroid/widget/Button;)V
    .locals 0
    .param p1, "buttons"    # [Landroid/widget/Button;

    .prologue
    .line 46
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 52
    iget-object v0, p0, Lcom/andoop/freerunning/PauseDialog;->mListener:Lcom/andoop/freerunning/PauseDialog$PauseListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/andoop/freerunning/PauseDialog;->mListener:Lcom/andoop/freerunning/PauseDialog$PauseListener;

    invoke-interface {v0}, Lcom/andoop/freerunning/PauseDialog$PauseListener;->onPause()V

    .line 55
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 61
    iget-object v0, p0, Lcom/andoop/freerunning/PauseDialog;->mListener:Lcom/andoop/freerunning/PauseDialog$PauseListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/andoop/freerunning/PauseDialog;->mListener:Lcom/andoop/freerunning/PauseDialog$PauseListener;

    invoke-interface {v0}, Lcom/andoop/freerunning/PauseDialog$PauseListener;->onResume()V

    .line 64
    :cond_0
    return-void
.end method

.method public setListener(Lcom/andoop/freerunning/PauseDialog$PauseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/andoop/freerunning/PauseDialog$PauseListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/andoop/freerunning/PauseDialog;->mListener:Lcom/andoop/freerunning/PauseDialog$PauseListener;

    .line 42
    return-void
.end method
