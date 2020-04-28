.class Lcom/clearchannel/iheartradio/controller/IHRController$3;
.super Ljava/lang/Object;
.source "IHRController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRController;->MessageAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRController;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 289
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 290
    return-void
.end method
