.class Lcom/clearchannel/iheartradio/controller/IHRController$2;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->mControllerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    return-void
.end method
