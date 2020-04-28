.class Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$1;
.super Ljava/lang/Object;
.source "IHRControllerPremiumArchives.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->updateHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->updateHeader()V

    return-void
.end method
