.class Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$1;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;
.source "IHRControllerSplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->askConfiguration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # Ljava/lang/String;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    .line 116
    invoke-direct/range {p0 .. p5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .param p1, "inButton"    # I

    .prologue
    .line 119
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationBegin(I)V

    .line 120
    return-void
.end method
