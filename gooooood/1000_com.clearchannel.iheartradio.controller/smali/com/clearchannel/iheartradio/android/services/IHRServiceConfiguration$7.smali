.class Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$7;
.super Landroid/os/Binder;
.source "IHRServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$7;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    .line 2074
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

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
    .line 2078
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$7;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->handleTransactions(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
