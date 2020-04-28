.class Lcom/clearchannel/iheartradio/android/services/IHRService$3;
.super Lcom/clearchannel/iheartradio/android/services/IHRService$MyBinder;
.source "IHRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/services/IHRService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$3;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 542
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/android/services/IHRService$MyBinder;-><init>(Lcom/clearchannel/iheartradio/android/services/IHRService;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$3;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/clearchannel/iheartradio/android/services/IHRService;->handleTransactions(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
