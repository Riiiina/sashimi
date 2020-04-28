.class public Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels$IHRChannelsList;
.super Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;
.source "IHRControllerPremiumChannels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRChannelsList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V
    .locals 0
    .param p2, "inContext"    # Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels$IHRChannelsList;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;

    .line 48
    invoke-direct {p0, p2}, Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V

    return-void
.end method


# virtual methods
.method public addContextMenuItems(Landroid/view/ContextMenu;IJLandroid/view/View;)V
    .locals 9
    .param p1, "ioMenu"    # Landroid/view/ContextMenu;
    .param p2, "inPosition"    # I
    .param p3, "inID"    # J
    .param p5, "inTarget"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v1

    .line 54
    .local v1, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels$IHRChannelsList;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;

    iget-object v2, v6, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    check-cast v2, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;

    .line 55
    .local v2, "cursor":Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;
    iget-object v6, v2, Lcom/clearchannel/iheartradio/android/model/IHRPremiumCursor;->mContents:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 56
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "site":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v5

    .line 63
    .local v5, "size":I
    invoke-virtual {v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->siteHasAuthenticated(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    const-string v6, "Sign out"

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 65
    .local v3, "item":Landroid/view/MenuItem;
    const v6, 0x1080023

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 66
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "action"

    const-string v8, "discard"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "site"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "forget"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 71
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->siteHasArchives(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    const-string v6, "Delete All Podcasts"

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 73
    .restart local v3    # "item":Landroid/view/MenuItem;
    const v6, 0x108001d

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 74
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "action"

    const-string v8, "discard"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "site"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 77
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 78
    const-string v6, "Cancel"

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 79
    .restart local v3    # "item":Landroid/view/MenuItem;
    const v6, 0x1080038

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 80
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "action"

    const-string v8, "cancel"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 82
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    return-void
.end method
