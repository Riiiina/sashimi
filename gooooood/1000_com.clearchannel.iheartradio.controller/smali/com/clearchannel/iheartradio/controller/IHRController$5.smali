.class Lcom/clearchannel/iheartradio/controller/IHRController$5;
.super Ljava/lang/Object;
.source "IHRController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRController;->shareViaFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

.field private final synthetic val$caption:Ljava/lang/String;

.field private final synthetic val$desc:Ljava/lang/String;

.field private final synthetic val$identifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/controller/IHRController$5;->val$caption:Ljava/lang/String;

    iput-object p3, p0, Lcom/clearchannel/iheartradio/controller/IHRController$5;->val$desc:Ljava/lang/String;

    iput-object p4, p0, Lcom/clearchannel/iheartradio/controller/IHRController$5;->val$identifier:Ljava/lang/String;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 349
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 350
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRController$5;->val$caption:Ljava/lang/String;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRController$5;->val$desc:Ljava/lang/String;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRController$5;->val$identifier:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/model/facebook/Util;->publish(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 352
    return-void
.end method
