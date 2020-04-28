.class Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;
.super Ljava/lang/Object;
.source "IHRControllerSettingsMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->prepareView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;)Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    const/4 v4, 0x0

    .line 66
    .local v4, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, "buttonName":Ljava/lang/String;
    sget-object v7, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v7

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->isSessionValid()Z

    move-result v3

    .line 68
    .local v3, "isLoggedIn":Z
    if-eqz v3, :cond_0

    .line 69
    sget-object v7, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v7

    iget-object v6, v7, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->user:Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;

    .line 70
    .local v6, "user":Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "You are logged in as "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;->firstName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    const-string v1, "Logout"

    .line 77
    .end local v6    # "user":Lcom/clearchannel/iheartradio/model/facebook/Facebook$User;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->getContext()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Facebook"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;

    const v8, 0x7f03001e

    invoke-virtual {v7, v8}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain;->inflateLayout(I)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "content":Landroid/view/View;
    const v7, 0x7f09007d

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 81
    .local v5, "msgView":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 85
    new-instance v7, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$1;

    invoke-direct {v7, p0, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;Z)V

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const/high16 v7, 0x1040000

    .line 98
    new-instance v8, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$2;

    invoke-direct {v8, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsMain$1;)V

    .line 97
    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 105
    return-void

    .line 73
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "content":Landroid/view/View;
    .end local v5    # "msgView":Landroid/widget/TextView;
    :cond_0
    const-string v4, "You are not logged in"

    .line 74
    const-string v1, "Connect"

    goto :goto_0
.end method
