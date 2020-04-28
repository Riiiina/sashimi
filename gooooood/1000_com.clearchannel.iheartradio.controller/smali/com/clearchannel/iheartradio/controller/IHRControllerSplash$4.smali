.class Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$4;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;
.source "IHRControllerSplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->askUpdate(ZLjava/lang/String;)V
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    .line 142
    invoke-direct/range {p0 .. p5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2
    .param p1, "inButton"    # I

    .prologue
    .line 143
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    const/4 v1, -0x3

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationUpdate(I)V

    return-void
.end method
