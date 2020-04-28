.class public Lcom/clearchannel/iheartradio/model/IHRTimerTask;
.super Ljava/util/TimerTask;
.source "IHRTimerTask.java"


# instance fields
.field public mContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRTimerTask;-><init>(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRTimerTask;->mContext:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method
