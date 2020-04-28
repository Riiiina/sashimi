.class public Lcom/clearchannel/iheartradio/model/IHRAd$Report;
.super Ljava/lang/Object;
.source "IHRAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Report"
.end annotation


# instance fields
.field mThread:Ljava/lang/Thread;

.field mURLs:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/IHRAd;


# direct methods
.method protected constructor <init>(Lcom/clearchannel/iheartradio/model/IHRAd;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->mURLs:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    return-void
.end method


# virtual methods
.method public declared-synchronized report(I)V
    .locals 2
    .param p1, "purpose"    # I

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->mURLs:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/model/IHRAd;->adURLForPurpose(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->addElement(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "IHRReport"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 199
    :goto_0
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->mURLs:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->mThread:Ljava/lang/Thread;

    .line 202
    monitor-exit p0

    .line 217
    return-void

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->mURLs:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->mURLs:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->removeElementAt(I)Ljava/lang/Object;

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    :try_start_1
    invoke-static {v1}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->reportSynchronous(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    monitor-enter p0

    .line 213
    :try_start_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Report;->mURLs:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->insertElementAt(Ljava/lang/Object;I)V

    .line 212
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
