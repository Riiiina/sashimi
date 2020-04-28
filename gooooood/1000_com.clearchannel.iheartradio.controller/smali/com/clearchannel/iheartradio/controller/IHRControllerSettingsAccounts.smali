.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsAccounts;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;
.source "IHRControllerSettingsAccounts.java"


# static fields
.field public static final kNames:[Ljava/lang/String;


# instance fields
.field protected mSite:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    const-string v2, "Sign out"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 14
    const-string v2, "Delete All Podcasts"

    aput-object v2, v0, v1

    .line 12
    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsAccounts;->kNames:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsAccounts;->kNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "inPosition"    # I

    .prologue
    .line 31
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsAccounts;->kNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "inList"    # Landroid/widget/ListView;
    .param p2, "inView"    # Landroid/view/View;
    .param p3, "inPosition"    # I
    .param p4, "inID"    # J

    .prologue
    .line 36
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsAccounts;->mSite:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->siteDiscard(Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsAccounts;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popToRoot()V

    .line 39
    return-void

    .line 36
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->onNewIntent(Landroid/content/Intent;)V

    .line 21
    const-string v0, "site"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsAccounts;->mSite:Ljava/lang/String;

    .line 22
    return-void
.end method
