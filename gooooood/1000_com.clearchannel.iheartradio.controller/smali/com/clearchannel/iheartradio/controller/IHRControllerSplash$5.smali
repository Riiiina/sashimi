.class Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$5;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;
.source "IHRControllerSplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->informFinished()V
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$5;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    .line 155
    invoke-direct/range {p0 .. p5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 0
    .param p1, "inButton"    # I

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$5;->cease()V

    return-void
.end method
