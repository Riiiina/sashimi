.class Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$4;
.super Ljava/lang/Object;
.source "IHRConfigurationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->do_updateStatusOnMain(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$4;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$4;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$4;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$4;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->access$1(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->updateStatus(Ljava/lang/String;)V

    .line 1098
    :cond_0
    return-void
.end method
