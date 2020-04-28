.class public Lcom/clearchannel/iheartradio/model/IHRCacheConnection$IHRCacheTimerTask;
.super Ljava/util/TimerTask;
.source "IHRCacheConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRCacheConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRCacheTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/IHRCacheConnection;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRCacheConnection;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection$IHRCacheTimerTask;->this$0:Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection$IHRCacheTimerTask;->this$0:Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->resumeAbort()V

    .line 541
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCacheConnection$IHRCacheTimerTask;->this$0:Lcom/clearchannel/iheartradio/model/IHRCacheConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCacheConnection;->recreateHonoringResume(Z)V

    .line 542
    return-void
.end method
