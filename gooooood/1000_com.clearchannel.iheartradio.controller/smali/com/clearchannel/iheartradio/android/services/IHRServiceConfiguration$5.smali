.class Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$5;
.super Ljava/lang/Object;
.source "IHRServiceConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->handleMessage(Landroid/os/Message;)Z
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$5;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    .line 1709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$5;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->tryFetchStartup()V

    .line 1712
    return-void
.end method
