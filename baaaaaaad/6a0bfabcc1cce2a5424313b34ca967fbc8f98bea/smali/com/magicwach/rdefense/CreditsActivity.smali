.class public Lcom/magicwach/rdefense/CreditsActivity;
.super Landroid/app/Activity;
.source "CreditsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 21
    .local v0, "id":I
    const v1, 0x7f060005

    if-ne v0, v1, :cond_0

    .line 22
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/CreditsActivity;->startActivity(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Lcom/magicwach/rdefense/CreditsActivity;->finish()V

    .line 25
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/CreditsActivity;->setContentView(I)V

    .line 15
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/CreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 16
    .local v0, "back_button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/CreditsActivity;->setRequestedOrientation(I)V

    .line 18
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 34
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 30
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/CreditsActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/magicwach/rdefense/CreditsActivity;->finish()V

    .line 32
    const/4 v0, 0x1

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
