.class public Lcom/clearchannel/iheartradio/android/view/IHRViewButton;
.super Landroid/widget/Button;
.source "IHRViewButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 16
    const v0, 0x7f020008

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewButton;->setBackgroundResource(I)V

    .line 17
    const/4 v0, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewButton;->setTextSize(IF)V

    .line 18
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewButton;->setTextColor(I)V

    .line 19
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewButton;->setGravity(I)V

    .line 20
    return-void

    .line 18
    :cond_0
    const v0, -0x666667

    goto :goto_0
.end method
