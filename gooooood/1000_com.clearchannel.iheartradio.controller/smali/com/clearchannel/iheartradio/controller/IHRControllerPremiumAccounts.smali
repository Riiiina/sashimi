.class public Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;
.source "IHRControllerPremiumAccounts.java"


# static fields
.field public static final kNames:[Ljava/lang/String;


# instance fields
.field protected mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

.field protected mSite:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    const-string v2, "I have a existing account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    const-string v2, "I do not have an account"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    const-string v2, "Take your favorite personalities with you on the go and never miss a show. iheartradio Premium offers anytime, anywhere access that accommodates your lifestyle."

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->kNames:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->kNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "inPosition"    # I

    .prologue
    .line 40
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "inPosition"    # I

    .prologue
    .line 50
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->kNames:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 53
    .local v0, "result":Ljava/lang/String;
    const/4 v2, 0x1

    if-eq v2, p1, :cond_1

    .line 54
    if-nez p1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "existing"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 61
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSalesPitch()Ljava/lang/String;

    move-result-object v1

    .line 63
    .restart local v1    # "string":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 67
    .end local v1    # "string":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inPosition"    # I
    .param p2, "inConvert"    # Landroid/view/View;
    .param p3, "inParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "result":Landroid/view/View;
    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 75
    const v2, 0x7f03000f

    invoke-virtual {p0, v2, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->getViewByID(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 77
    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/16 v2, 0x34

    invoke-static {v1, v2, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->assignLayout(Landroid/view/View;II)V

    .line 89
    :goto_0
    return-object v1

    .line 81
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    .end local v1    # "result":Landroid/view/View;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    .restart local v1    # "result":Landroid/view/View;
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 84
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->assignLayout(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "inList"    # Landroid/widget/ListView;
    .param p2, "inView"    # Landroid/view/View;
    .param p3, "inPosition"    # I
    .param p4, "inID"    # J

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "c":Ljava/lang/Class;
    packed-switch p3, :pswitch_data_0

    .line 101
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v0, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "site"

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->mSite:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 102
    :cond_0
    return-void

    .line 97
    :pswitch_0
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;

    goto :goto_0

    .line 98
    :pswitch_1
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string v0, "site"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->mSite:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->mSite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchChannel(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 28
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumAccounts;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 30
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;->onNewIntent(Landroid/content/Intent;)V

    .line 31
    return-void
.end method
