.class public Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleAdapter;,
        Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    return-void

    .line 70
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;

    .line 71
    .local v0, "listener":Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 78
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    return-void

    .line 78
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;

    .line 79
    .local v0, "listener":Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 86
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    return-void

    .line 86
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;

    .line 87
    .local v0, "listener":Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 94
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    return-void

    .line 94
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;

    .line 95
    .local v0, "listener":Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;)V

    goto :goto_0
.end method

.method public removeLifeCycleListener(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
