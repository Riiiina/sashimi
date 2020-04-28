.class public abstract Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;
.super Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;
.source "IHRControllerSplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SplashDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "inMessage"    # Ljava/lang/String;
    .param p3, "inButton1"    # Ljava/lang/String;
    .param p4, "inButton2"    # Ljava/lang/String;
    .param p5, "inButton3"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-direct/range {p0 .. p5}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "inDialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash$SplashDialog;->cease()V

    return-void
.end method
