.class Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$2;
.super Ljava/lang/Object;
.source "IHRConfigurationClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->GPSFailed()V
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$2;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1073
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1074
    return-void
.end method
