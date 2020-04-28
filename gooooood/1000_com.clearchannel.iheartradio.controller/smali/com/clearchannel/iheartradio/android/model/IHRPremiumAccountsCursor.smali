.class public Lcom/clearchannel/iheartradio/android/model/IHRPremiumAccountsCursor;
.super Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;
.source "IHRPremiumAccountsCursor.java"


# instance fields
.field public mSite:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;-><init>()V

    .line 13
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v1

    .line 14
    .local v1, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->fetchChannel(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    move-result-object v0

    .line 15
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 16
    .local v2, "content":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSalesPitch()Ljava/lang/String;

    move-result-object v3

    .line 18
    .local v3, "pitch":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 19
    :cond_0
    const-string v3, "Take your favorite personalities with you on the go and never miss a show. iheartradio Premium offers anytime, anywhere access that accommodates your lifestyle."

    .line 22
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Log in with your "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v4, "Sign up for an account"

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 26
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPremiumAccountsCursor;->mSite:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRPremiumAccountsCursor;->mContents:Ljava/util/List;

    .line 28
    const/4 v4, 0x2

    iput v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRPremiumAccountsCursor;->mCursorCount:I

    .line 29
    return-void
.end method


# virtual methods
.method public prepareIntent(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "inIndex"    # I

    .prologue
    .line 33
    const-string v0, ""

    .line 35
    .local v0, "name":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 36
    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "premium_register"

    .line 43
    .local v1, "source":Ljava/lang/String;
    :goto_0
    const-string v2, "source"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v2, "class"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v2, "site"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRPremiumAccountsCursor;->mSite:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    return-void

    .line 39
    .end local v1    # "source":Ljava/lang/String;
    :cond_0
    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumPurchase;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "premium_purchase"

    .restart local v1    # "source":Ljava/lang/String;
    goto :goto_0
.end method
