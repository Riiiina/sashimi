.class Lcom/clearchannel/iheartradio/android/services/IHRService$1;
.super Landroid/content/BroadcastReceiver;
.source "IHRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/services/IHRService;->doCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 372
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->stopSelf()V

    return-void
.end method
