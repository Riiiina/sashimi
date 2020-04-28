.class public Lcom/clearchannel/iheartradio/controller/IHRController$IHRIgnoreAlert;
.super Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;
.source "IHRController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRIgnoreAlert"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRController;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "inMessage"    # Ljava/lang/String;
    .param p3, "inButton"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 267
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController$IHRIgnoreAlert;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 0
    .param p1, "inButton"    # I

    .prologue
    .line 269
    return-void
.end method
