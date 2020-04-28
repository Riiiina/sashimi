.class public Lcom/clearchannel/iheartradio/model/IHRBroadcaster;
.super Ljava/lang/Object;
.source "IHRBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;
    }
.end annotation


# static fields
.field public static final kNotifyEveryName:Ljava/lang/String;

.field public static final kRemoveEveryListener:Lcom/clearchannel/iheartradio/model/IHRListener;

.field public static final kRemoveEveryName:Ljava/lang/String;

.field private static sCommon:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;


# instance fields
.field protected mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field protected mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->sCommon:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    .line 12
    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->kNotifyEveryName:Ljava/lang/String;

    .line 13
    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->kRemoveEveryName:Ljava/lang/String;

    .line 14
    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->kRemoveEveryListener:Lcom/clearchannel/iheartradio/model/IHRListener;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRThreadable;)V
    .locals 0
    .param p1, "inThreadable"    # Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    .line 23
    return-void
.end method

.method private broadcast(Lcom/clearchannel/iheartradio/android/model/IHRVector;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 9
    .param p1, "inListeners"    # Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .param p2, "inName"    # Ljava/lang/String;
    .param p3, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 153
    if-nez p1, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 155
    .local v0, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 166
    return-void

    .line 153
    .end local v0    # "count":I
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 156
    .restart local v0    # "count":I
    .restart local v2    # "index":I
    :cond_1
    invoke-virtual {p1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRListener;

    .line 161
    .local v3, "listener":Lcom/clearchannel/iheartradio/model/IHRListener;
    :try_start_0
    invoke-interface {v3, p2, p3}, Lcom/clearchannel/iheartradio/model/IHRListener;->listen(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "broadcast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->description(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->sCommon:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    if-nez v0, :cond_0

    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRThreadable;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->sCommon:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    .line 28
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->sCommon:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    return-object v0
.end method


# virtual methods
.method public debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "inMethod"    # Ljava/lang/String;
    .param p2, "inMessage"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "== "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V
    .locals 2
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inListener"    # Lcom/clearchannel/iheartradio/model/IHRListener;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v1, :cond_2

    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 46
    :goto_0
    if-nez v0, :cond_3

    .line 47
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .end local v0    # "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 48
    .restart local v0    # "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-virtual {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v1, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    :goto_1
    return-void

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .restart local v0    # "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-virtual {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public notifyFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 5
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v3, :cond_0

    .line 88
    if-nez p1, :cond_2

    .line 90
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    :cond_0
    :goto_1
    return-void

    .line 90
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "value":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v1, v0

    .line 97
    invoke-direct {p0, v1, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->broadcast(Lcom/clearchannel/iheartradio/android/model/IHRVector;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    goto :goto_0

    .line 100
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    check-cast v1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 102
    .restart local v1    # "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-eqz v1, :cond_3

    .line 103
    invoke-direct {p0, v1, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->broadcast(Lcom/clearchannel/iheartradio/android/model/IHRVector;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 106
    :cond_3
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    move-object v1, v3

    .line 108
    :goto_2
    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0, v1, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->broadcast(Lcom/clearchannel/iheartradio/android/model/IHRVector;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    goto :goto_1

    .line 106
    :cond_4
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v1, v3

    goto :goto_2
.end method

.method public notifyOnMainThread(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 1
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->notifyOnMainThread(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Z)V

    .line 142
    return-void
.end method

.method public notifyOnMainThread(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Z)V
    .locals 6
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .param p3, "inWait"    # Z

    .prologue
    .line 123
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;

    invoke-direct {v1, p0, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;-><init>(Lcom/clearchannel/iheartradio/model/IHRBroadcaster;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 126
    .local v1, "notification":Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    if-nez v2, :cond_1

    sget-object v2, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    move-object v0, v2

    .line 128
    .local v0, "threadable":Lcom/clearchannel/iheartradio/android/model/IHRThreadable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;->run()V

    .line 138
    :goto_1
    return-void

    .line 126
    .end local v0    # "threadable":Lcom/clearchannel/iheartradio/android/model/IHRThreadable;
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mThreadable:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    move-object v0, v2

    goto :goto_0

    .line 129
    .restart local v0    # "threadable":Lcom/clearchannel/iheartradio/android/model/IHRThreadable;
    :cond_2
    if-eqz p3, :cond_3

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handleWaiting(Ljava/lang/Runnable;JJ)V

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public removeFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V
    .locals 5
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inListener"    # Lcom/clearchannel/iheartradio/model/IHRListener;

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v3, :cond_0

    .line 59
    if-nez p1, :cond_3

    .line 61
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->clear()V

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 61
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "value":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-object v1, v0

    .line 68
    if-nez p2, :cond_2

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->clear()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    if-nez p2, :cond_4

    .line 74
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    :cond_4
    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->mListeners:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    check-cast v1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 78
    .restart local v1    # "listeners":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1
.end method
