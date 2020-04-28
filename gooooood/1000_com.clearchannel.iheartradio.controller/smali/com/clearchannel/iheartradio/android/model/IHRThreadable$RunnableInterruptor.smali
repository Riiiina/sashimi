.class public Lcom/clearchannel/iheartradio/android/model/IHRThreadable$RunnableInterruptor;
.super Ljava/lang/Object;
.source "IHRThreadable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRThreadable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableInterruptor"
.end annotation


# instance fields
.field mActual:Ljava/lang/Runnable;

.field mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRThreadable;Ljava/lang/Runnable;Ljava/lang/Thread;)V
    .locals 0
    .param p2, "inR"    # Ljava/lang/Runnable;
    .param p3, "inT"    # Ljava/lang/Thread;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable$RunnableInterruptor;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable$RunnableInterruptor;->mActual:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable$RunnableInterruptor;->mThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable$RunnableInterruptor;->mActual:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable$RunnableInterruptor;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
