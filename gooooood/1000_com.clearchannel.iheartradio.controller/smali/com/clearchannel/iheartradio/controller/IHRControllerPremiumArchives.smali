.class public Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;
.source "IHRControllerPremiumArchives.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/IHRListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$IHRArchivesList;
    }
.end annotation


# static fields
.field public static followingIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mUpdate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->followingIntents:Ljava/util/List;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;-><init>()V

    return-void
.end method


# virtual methods
.method public beingShown(Z)V
    .locals 5
    .param p1, "inShown"    # Z

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    move-result-object v0

    .line 105
    .local v0, "common":Lcom/clearchannel/iheartradio/model/IHRBroadcaster;
    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->site()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "site":Ljava/lang/String;
    if-nez v2, :cond_2

    move-object v1, v3

    .line 109
    .local v1, "name":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 111
    :cond_0
    const-string v3, "IHRCacheResults"

    invoke-virtual {v0, v3, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 112
    const-string v3, "IHRCacheData"

    invoke-virtual {v0, v3, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->updateHeader()V

    .line 123
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "site":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->beingShown(Z)V

    .line 124
    return-void

    .line 107
    .restart local v2    # "site":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "premium_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 116
    .end local v2    # "site":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v3, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->removeFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 118
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mUpdate:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    if-eqz v3, :cond_1

    .line 119
    sget-object v3, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mUpdate:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->remove(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public createHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->inflateLayout(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$IHRArchivesList;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$IHRArchivesList;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V

    return-object v0
.end method

.method public listen(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 8
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->site()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "site":Ljava/lang/String;
    if-nez v2, :cond_5

    move-object v0, v7

    .line 131
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "endingOfflineMode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;->requery()Z

    .line 136
    :cond_1
    const-string v4, "IHRCacheData"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "IHRCacheResults"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    :cond_2
    const-string v4, "url"

    invoke-virtual {p2, v4, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "url":Ljava/lang/String;
    if-nez v3, :cond_6

    move-object v1, v7

    .line 140
    .local v1, "row":Landroid/view/View;
    :goto_1
    if-eqz v1, :cond_4

    .line 141
    const-string v4, "delete"

    invoke-virtual {p2, v4, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "cancel"

    invoke-virtual {p2, v4, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 142
    :cond_3
    invoke-static {v6, v6, v6, v1}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->applyProgressToRow(IIZLandroid/view/View;)V

    .line 150
    .end local v1    # "row":Landroid/view/View;
    .end local v3    # "url":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 128
    .end local v0    # "name":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "premium_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 138
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    .line 143
    .restart local v1    # "row":Landroid/view/View;
    :cond_7
    const-string v4, "finish"

    invoke-virtual {p2, v4, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->booleanValue(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 146
    invoke-static {p2, v1}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->applyProgressToRow(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Landroid/view/View;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->beingShown(Z)V

    .line 74
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string v1, "site"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "site":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 63
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->refreshPremium(Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    invoke-direct {v1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->setListCursor(Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;)V

    goto :goto_0
.end method

.method public site()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    instance-of v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    if-eqz v1, :cond_0

    .line 52
    iget-object p0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    return-object v0
.end method

.method public updateHeader()V
    .locals 6

    .prologue
    .line 77
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    instance-of v2, v2, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    if-eqz v2, :cond_3

    .line 78
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mCursor:Lcom/clearchannel/iheartradio/android/model/IHROneLineCursor;

    check-cast v2, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    iget-object v0, v2, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 81
    .local v0, "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mHeader:Landroid/view/View;

    instance-of v2, v2, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;

    if-eqz v2, :cond_4

    .line 82
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mHeader:Landroid/view/View;

    check-cast v2, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;

    iget-object v1, v2, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    .line 83
    .local v1, "text":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mHeader:Landroid/view/View;

    check-cast v2, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;

    iget-object v1, v2, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    .line 86
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->availableText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mUpdate:Ljava/lang/Runnable;

    if-nez v2, :cond_2

    new-instance v2, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$1;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mUpdate:Ljava/lang/Runnable;

    .line 97
    :cond_2
    sget-object v2, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mUpdate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;J)Z

    .line 99
    .end local v0    # "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .end local v1    # "text":Landroid/widget/TextView;
    :cond_3
    return-void

    .line 88
    .restart local v0    # "channel":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    :cond_4
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mHeader:Landroid/view/View;

    const v3, 0x7f09006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .restart local v1    # "text":Landroid/widget/TextView;
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_5
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->mHeader:Landroid/view/View;

    const v3, 0x7f09006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "text":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 92
    .restart local v1    # "text":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->availableText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
