.class Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$6;
.super Ljava/lang/Object;
.source "IHRServiceConfiguration.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/IHRHTTPDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->validateSite(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$6;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    .line 1796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpFetchComplete(Lcom/clearchannel/iheartradio/model/IHRHTTP;)V
    .locals 9
    .param p1, "http"    # Lcom/clearchannel/iheartradio/model/IHRHTTP;

    .prologue
    .line 1798
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1799
    .local v2, "site":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->getSubscriptionResponse()Ljava/lang/Object;

    move-result-object v1

    .line 1803
    .local v1, "response":Ljava/lang/Object;
    :try_start_0
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1804
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$6;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    const-string v4, "siteValidated"

    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v6, "accepted"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "site"

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->notifyClient(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 1822
    :goto_0
    return-void

    .line 1807
    :cond_0
    instance-of v3, v1, Ljava/lang/Exception;

    if-eqz v3, :cond_1

    .line 1808
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$6;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    const-string v4, "siteValidated"

    .line 1809
    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 1810
    const-string v6, "connection-issue"

    .line 1809
    invoke-direct {v5, v6, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1808
    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->notifyClient(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1819
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1820
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1815
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$6;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$8(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Lcom/clearchannel/iheartradio/android/services/IHRService;

    move-result-object v3

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCredentials:Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->accept(Ljava/lang/String;Z)V

    .line 1816
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$6;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    const-string v4, "siteValidated"

    .line 1817
    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v6, "accepted"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "site"

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1816
    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->notifyClient(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
