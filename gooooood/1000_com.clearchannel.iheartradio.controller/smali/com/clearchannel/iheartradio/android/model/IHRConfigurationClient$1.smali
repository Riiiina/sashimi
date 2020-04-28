.class Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$1;
.super Ljava/lang/Object;
.source "IHRConfigurationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationContinue(I)V
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$1;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$1;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationTimeout()V

    return-void
.end method
