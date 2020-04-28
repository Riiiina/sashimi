.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSO$1;
.super Ljava/lang/Object;
.source "IHRControllerSSO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->onSSOResponse(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;ILjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;)V

    .line 55
    return-void
.end method
