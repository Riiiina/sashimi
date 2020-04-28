.class Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister$1;
.super Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;
.source "IHRControllerPremiumRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->handleAcceptance(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;Lcom/clearchannel/iheartradio/controller/IHRController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p3, "$anonymous0"    # Ljava/lang/String;
    .param p4, "$anonymous1"    # Ljava/lang/String;
    .param p5, "$anonymous2"    # Ljava/lang/String;
    .param p6, "$anonymous3"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2
    .param p1, "inButton"    # I

    .prologue
    .line 137
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumRegister;->focus(I)V

    .line 138
    :cond_0
    return-void
.end method
