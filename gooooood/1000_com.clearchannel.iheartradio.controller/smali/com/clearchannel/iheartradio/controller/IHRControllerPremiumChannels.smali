.class public Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;
.source "IHRControllerPremiumChannels.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/IHRListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels$IHRChannelsList;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;-><init>()V

    return-void
.end method


# virtual methods
.method public beingShown(Z)V
    .locals 2
    .param p1, "inShown"    # Z

    .prologue
    .line 27
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    move-result-object v0

    .line 29
    .local v0, "common":Lcom/clearchannel/iheartradio/model/IHRBroadcaster;
    if-eqz p1, :cond_0

    .line 30
    const-string v1, "premium"

    invoke-virtual {v0, v1, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 35
    :goto_0
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerCursorList;->beingShown(Z)V

    .line 36
    return-void

    .line 32
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->removeFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    goto :goto_0
.end method

.method public createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels$IHRChannelsList;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels$IHRChannelsList;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V

    return-object v0
.end method

.method public listen(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 1
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 40
    const-string v0, "premium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "endingOfflineMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->requery()Z

    .line 43
    :cond_1
    return-void
.end method
