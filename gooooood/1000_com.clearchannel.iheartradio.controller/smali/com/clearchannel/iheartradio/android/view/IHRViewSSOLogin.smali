.class public Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin;
.super Ljava/lang/Object;
.source "IHRViewSSOLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showLoginDialog(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 5
    .param p0, "cancel"    # Ljava/lang/String;
    .param p1, "inParameters"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Login to iheartradio"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 51
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string v2, "Log in"

    aput-object v2, v1, v3

    const-string v2, "Sign Up"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p0, v1, v2

    .line 53
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;

    invoke-direct {v2, p1, p2}, Lcom/clearchannel/iheartradio/android/view/IHRViewSSOLogin$LoginClickListener;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v2, v4

    .line 62
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "items":[Ljava/lang/CharSequence;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
